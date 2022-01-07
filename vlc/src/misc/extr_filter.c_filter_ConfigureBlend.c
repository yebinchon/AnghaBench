
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int i_width; int i_visible_width; int i_height; int i_visible_height; } ;
struct TYPE_12__ {TYPE_2__ video; } ;
struct TYPE_14__ {scalar_t__ i_chroma; } ;
struct TYPE_10__ {scalar_t__ i_codec; TYPE_5__ video; } ;
struct TYPE_13__ {int * p_module; TYPE_3__ fmt_out; TYPE_1__ fmt_in; } ;
typedef TYPE_4__ vlc_blender_t ;
typedef TYPE_5__ video_format_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * module_need (TYPE_4__*,char*,int *,int) ;
 int module_unneed (TYPE_4__*,int *) ;

int filter_ConfigureBlend( vlc_blender_t *p_blend,
                           int i_dst_width, int i_dst_height,
                           const video_format_t *p_src )
{

    if( p_blend->p_module &&
        p_blend->fmt_in.video.i_chroma != p_src->i_chroma )
    {

        module_unneed( p_blend, p_blend->p_module );
        p_blend->p_module = ((void*)0);
    }



    p_blend->fmt_in.i_codec = p_src->i_chroma;
    p_blend->fmt_in.video = *p_src;


    p_blend->fmt_out.video.i_width =
    p_blend->fmt_out.video.i_visible_width = i_dst_width;
    p_blend->fmt_out.video.i_height =
    p_blend->fmt_out.video.i_visible_height = i_dst_height;


    if( !p_blend->p_module )
        p_blend->p_module = module_need( p_blend, "video blending", ((void*)0), 0 );
    if( !p_blend->p_module )
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
