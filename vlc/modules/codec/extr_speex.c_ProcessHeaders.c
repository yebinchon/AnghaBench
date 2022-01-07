
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int granulepos; int b_o_s; unsigned int bytes; void* packet; scalar_t__ packetno; scalar_t__ e_o_s; } ;
typedef TYPE_3__ ogg_packet ;
struct TYPE_13__ {int i_extra; void* p_extra; } ;
struct TYPE_12__ {int p_extra; int i_extra; } ;
struct TYPE_15__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_16__ {scalar_t__ b_packetizer; } ;
typedef TYPE_5__ decoder_sys_t ;


 int ParseSpeexComments (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ ProcessInitialHeader (TYPE_4__*,TYPE_3__*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 scalar_t__ VLC_SUCCESS ;
 int XIPH_MAX_HEADER_COUNT ;
 int memcpy (void*,int ,int ) ;
 int msg_Err (TYPE_4__*,char*) ;
 void* realloc (void*,int ) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ xiph_SplitHeaders (unsigned int*,void const**,unsigned int*,int ,int ) ;

__attribute__((used)) static int ProcessHeaders( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    ogg_packet oggpacket;

    unsigned pi_size[XIPH_MAX_HEADER_COUNT];
    const void *pp_data[XIPH_MAX_HEADER_COUNT];
    unsigned i_count;
    if( xiph_SplitHeaders( pi_size, pp_data, &i_count,
                           p_dec->fmt_in.i_extra, p_dec->fmt_in.p_extra) )
        return VLC_EGENERIC;
    if( i_count < 2 )
        return VLC_EGENERIC;;

    oggpacket.granulepos = -1;
    oggpacket.e_o_s = 0;
    oggpacket.packetno = 0;


    oggpacket.b_o_s = 1;
    oggpacket.bytes = pi_size[0];
    oggpacket.packet = (void *)pp_data[0];
    if( ProcessInitialHeader( p_dec, &oggpacket ) != VLC_SUCCESS )
    {
        msg_Err( p_dec, "initial Speex header is corrupted" );
        return VLC_EGENERIC;;
    }


    oggpacket.b_o_s = 0;
    oggpacket.bytes = pi_size[1];
    oggpacket.packet = (void *)pp_data[1];
    ParseSpeexComments( p_dec, &oggpacket );

    if( p_sys->b_packetizer )
    {
        void* p_extra = realloc( p_dec->fmt_out.p_extra,
                                 p_dec->fmt_in.i_extra );
        if( unlikely( p_extra == ((void*)0) ) )
        {
            return VLC_ENOMEM;
        }
        p_dec->fmt_out.p_extra = p_extra;
        p_dec->fmt_out.i_extra = p_dec->fmt_in.i_extra;
        memcpy( p_dec->fmt_out.p_extra,
                p_dec->fmt_in.p_extra, p_dec->fmt_out.i_extra );
    }

    return VLC_SUCCESS;
}
