
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int granulepos; int b_o_s; unsigned int bytes; void* packet; scalar_t__ packetno; scalar_t__ e_o_s; } ;
typedef TYPE_3__ ogg_packet ;
struct TYPE_9__ {int i_rate; int i_channels; } ;
struct TYPE_10__ {int i_extra; TYPE_1__ audio; int * p_extra; } ;
struct TYPE_12__ {TYPE_2__ fmt_in; } ;
typedef TYPE_4__ decoder_t ;
typedef int OpusHeader ;


 int ProcessInitialHeader (TYPE_4__*,TYPE_3__*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int XIPH_MAX_HEADER_COUNT ;
 int free (int *) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int msg_Err (TYPE_4__*,char*) ;
 int opus_get_version_string () ;
 int opus_prepare_header (int ,int ,int *) ;
 scalar_t__ opus_write_header (int **,int*,int *,int ) ;
 scalar_t__ xiph_SplitHeaders (unsigned int*,void const**,unsigned int*,int,int *) ;

__attribute__((used)) static int ProcessHeaders( decoder_t *p_dec )
{
    ogg_packet oggpacket;

    unsigned pi_size[XIPH_MAX_HEADER_COUNT];
    const void *pp_data[XIPH_MAX_HEADER_COUNT];
    unsigned i_count;

    int i_extra = p_dec->fmt_in.i_extra;
    uint8_t *p_extra = p_dec->fmt_in.p_extra;


    bool b_dummy_header = 0;
    if( !i_extra ||
        (i_extra > 10 && memcmp( &p_extra[2], "OpusHead", 8 )) )
    {
        OpusHeader header;
        opus_prepare_header( p_dec->fmt_in.audio.i_channels,
                             p_dec->fmt_in.audio.i_rate, &header );
        if( opus_write_header( &p_extra, &i_extra, &header,
                               opus_get_version_string() ) )
            return VLC_ENOMEM;
        b_dummy_header = 1;
    }

    if( xiph_SplitHeaders( pi_size, pp_data, &i_count,
                           i_extra, p_extra ) )
    {
        if( b_dummy_header )
            free( p_extra );
        return VLC_EGENERIC;
    }

    if( i_count < 2 )
    {
        if( b_dummy_header )
            free( p_extra );
        return VLC_EGENERIC;
    }

    oggpacket.granulepos = -1;
    oggpacket.e_o_s = 0;
    oggpacket.packetno = 0;


    oggpacket.b_o_s = 1;
    oggpacket.bytes = pi_size[0];
    oggpacket.packet = (void *)pp_data[0];
    int ret = ProcessInitialHeader( p_dec, &oggpacket );

    if (ret != VLC_SUCCESS)
        msg_Err( p_dec, "initial Opus header is corrupted" );

    if( b_dummy_header )
        free( p_extra );

    return ret;
}
