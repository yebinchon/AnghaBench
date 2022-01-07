
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {scalar_t__ i_codec; } ;
struct TYPE_10__ {scalar_t__ i_codec; } ;
struct TYPE_7__ {int pf_decode; TYPE_5__ fmt_out; TYPE_6__ fmt_in; int pf_packetize; TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {int b_packetizer; int * p_block; scalar_t__ i_spu; scalar_t__ i_spu_size; int b_disabletrans; } ;
typedef TYPE_2__ decoder_sys_t ;


 int Decode ;
 int Packetize ;
 scalar_t__ VLC_CODEC_SPU ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int es_format_Copy (TYPE_5__*,TYPE_6__*) ;
 TYPE_2__* malloc (int) ;
 int var_InheritBool (TYPE_1__*,char*) ;

__attribute__((used)) static int OpenCommon( vlc_object_t *p_this, bool b_packetizer )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_SPU )
        return VLC_EGENERIC;

    p_dec->p_sys = p_sys = malloc( sizeof( decoder_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->b_packetizer = b_packetizer;
    p_sys->b_disabletrans = var_InheritBool( p_dec, "dvdsub-transparency" );
    p_sys->i_spu_size = 0;
    p_sys->i_spu = 0;
    p_sys->p_block = ((void*)0);

    if( b_packetizer )
    {
        p_dec->pf_packetize = Packetize;
        es_format_Copy( &p_dec->fmt_out, &p_dec->fmt_in );
        p_dec->fmt_out.i_codec = VLC_CODEC_SPU;
    }
    else
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_SPU;
        p_dec->pf_decode = Decode;
    }

    return VLC_SUCCESS;
}
