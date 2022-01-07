
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int i_bmask; int i_gmask; int i_rmask; int i_chroma; } ;
struct TYPE_11__ {TYPE_1__ video; int i_codec; } ;
struct TYPE_9__ {int * p_module; TYPE_7__ fmt_out; TYPE_7__ fmt_in; } ;
typedef TYPE_2__ vlc_blender_t ;
struct TYPE_10__ {int i_bmask; int i_gmask; int i_rmask; int i_chroma; } ;
typedef TYPE_3__ video_format_t ;


 int VIDEO_ES ;
 int es_format_Init (TYPE_7__*,int ,int ) ;
 TYPE_2__* vlc_custom_create (int *,int,char*) ;

vlc_blender_t *filter_NewBlend( vlc_object_t *p_this,
                           const video_format_t *p_dst_chroma )
{
    vlc_blender_t *p_blend = vlc_custom_create( p_this, sizeof(*p_blend), "blend" );
    if( !p_blend )
        return ((void*)0);

    es_format_Init( &p_blend->fmt_in, VIDEO_ES, 0 );

    es_format_Init( &p_blend->fmt_out, VIDEO_ES, 0 );

    p_blend->fmt_out.i_codec =
    p_blend->fmt_out.video.i_chroma = p_dst_chroma->i_chroma;
    p_blend->fmt_out.video.i_rmask = p_dst_chroma->i_rmask;
    p_blend->fmt_out.video.i_gmask = p_dst_chroma->i_gmask;
    p_blend->fmt_out.video.i_bmask = p_dst_chroma->i_bmask;



    p_blend->p_module = ((void*)0);

    return p_blend;
}
