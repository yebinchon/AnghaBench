
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_frame_size; scalar_t__ syncword; int i_frame_length; int i_physical_channels; int i_rate; int i_chan_mode; int i_bitrate; } ;
typedef TYPE_1__ vlc_dts_header_t ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int bs_t ;


 scalar_t__ DTS_SYNC_CORE_14BITS_BE ;
 scalar_t__ DTS_SYNC_CORE_14BITS_LE ;
 int VLC_DTS_HEADER_SIZE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int bs_init (int *,void const*,int ) ;
 int bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 int dca_get_bitrate (int) ;
 int dca_get_channels (int,int,int *) ;
 int dca_get_samplerate (int) ;

__attribute__((used)) static int dts_header_ParseCore( vlc_dts_header_t *p_header,
                                 const void *p_buffer)
{
    bs_t s;
    bs_init( &s, p_buffer, VLC_DTS_HEADER_SIZE );
    bs_skip( &s, 32 + 1 + 5 + 1 );
    uint8_t i_nblks = bs_read( &s, 7 );
    if( i_nblks < 5 )
        return VLC_EGENERIC;
    uint16_t i_fsize = bs_read( &s, 14 );
    if( i_fsize < 95 )
        return VLC_EGENERIC;
    uint8_t i_amode = bs_read( &s, 6 );
    uint8_t i_sfreq = bs_read( &s, 4 );
    uint8_t i_rate = bs_read( &s, 5 );
    bs_skip( &s, 1 + 1 + 1 + 1 +
             1 + 3 + 1 + 1 );
    uint8_t i_lff = bs_read( &s, 2 );

    bool b_lfe = i_lff == 1 || i_lff == 2;

    p_header->i_rate = dca_get_samplerate( i_sfreq );
    p_header->i_bitrate = dca_get_bitrate( i_rate );
    p_header->i_frame_size = i_fsize + 1;
    if( p_header->syncword == DTS_SYNC_CORE_14BITS_LE ||
        p_header->syncword == DTS_SYNC_CORE_14BITS_BE )
        p_header->i_frame_size = p_header->i_frame_size * 16 / 14;

    p_header->i_frame_length = (i_nblks + 1) * 32;
    p_header->i_chan_mode = 0;
    p_header->i_physical_channels =
        dca_get_channels( i_amode, b_lfe, &p_header->i_chan_mode );

    if( !p_header->i_rate || !p_header->i_frame_size ||
        !p_header->i_frame_length || !p_header->i_physical_channels )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
