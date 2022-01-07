
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int i_codec; } ;
struct TYPE_7__ {scalar_t__ i_codec; } ;
struct TYPE_8__ {int pf_decode; TYPE_1__ fmt_out; TYPE_4__* p_sys; TYPE_2__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_9__ {int f_scale; void* i_height; void* i_width; } ;
typedef TYPE_4__ decoder_sys_t ;


 int DecodeBlock ;
 int VLC_CODEC_BGRA ;
 scalar_t__ VLC_CODEC_SVG ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int g_type_init () ;
 TYPE_4__* malloc (int) ;
 int var_InheritFloat (int *,char*) ;
 void* var_InheritInteger (int *,char*) ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_SVG )
        return VLC_EGENERIC;

    decoder_sys_t *p_sys = malloc( sizeof(decoder_sys_t) );
    if (!p_sys)
        return VLC_ENOMEM;
    p_dec->p_sys = p_sys;

    p_sys->i_width = var_InheritInteger( p_this, "svg-width" );
    p_sys->i_height = var_InheritInteger( p_this, "svg-height" );
    p_sys->f_scale = var_InheritFloat( p_this, "svg-scale" );



    g_type_init();



    p_dec->fmt_out.i_codec = VLC_CODEC_BGRA;


    p_dec->pf_decode = DecodeBlock;

    return VLC_SUCCESS;
}
