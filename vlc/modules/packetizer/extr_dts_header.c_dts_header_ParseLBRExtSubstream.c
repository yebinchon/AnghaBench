
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int i_rate; int i_frame_length; int i_bitrate; int i_physical_channels; } ;
typedef TYPE_1__ vlc_dts_header_t ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int bs_t ;


 unsigned int ARRAY_SIZE (unsigned int const*) ;
 int VLC_DTS_HEADER_SIZE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int bs_init (int *,void const*,int ) ;
 void* bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 int dca_get_LBR_channels (int,int *) ;

__attribute__((used)) static int dts_header_ParseLBRExtSubstream( vlc_dts_header_t *p_header,
                                             const void *p_buffer )
{
    bs_t s;
    bs_init( &s, p_buffer, VLC_DTS_HEADER_SIZE );
    bs_skip( &s, 32 );
    uint8_t ucFmtInfoCode = bs_read( &s, 8 );
    if( ucFmtInfoCode != 0x02 )
        return VLC_EGENERIC;
    p_header->i_rate = bs_read( &s, 8 );

    const unsigned int LBRsamplerates[] = {
        8000, 16000, 32000,
        0, 0,
        22050, 44100,
        0, 0, 0,
        12000, 24000, 48000,
    };
    if(p_header->i_rate >= ARRAY_SIZE(LBRsamplerates))
        return VLC_EGENERIC;
    p_header->i_rate = LBRsamplerates[p_header->i_rate];
    if( p_header->i_rate < 16000 )
        p_header->i_frame_length = 1024;
    else if( p_header->i_rate < 32000 )
        p_header->i_frame_length = 2048;
    else
        p_header->i_frame_length = 4096;

    uint16_t i_spkrmask = bs_read( &s, 16 );
    dca_get_LBR_channels( i_spkrmask, &p_header->i_physical_channels );
    bs_skip( &s, 16 );
    bs_skip( &s, 8 );
    uint16_t nLBRBitRateMSnybbles = bs_read( &s, 8 );
    bs_skip( &s, 16 );
    uint16_t nLBRScaledBitRate_LSW = bs_read( &s, 16 );
    p_header->i_bitrate = nLBRScaledBitRate_LSW | ((nLBRBitRateMSnybbles & 0xF0) << 12);
    return VLC_SUCCESS;
}
