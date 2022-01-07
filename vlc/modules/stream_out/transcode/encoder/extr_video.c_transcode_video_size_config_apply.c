
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {int i_width; int i_visible_width; int i_height; int i_visible_height; } ;
typedef TYPE_2__ video_format_t ;
struct TYPE_9__ {int i_width; int i_height; int i_maxheight; int i_maxwidth; scalar_t__ f_scale; } ;
struct TYPE_11__ {TYPE_1__ video; } ;
typedef TYPE_3__ transcode_encoder_config_t ;


 int transcode_video_scale_apply (int *,TYPE_2__ const*,scalar_t__,int ,int ,TYPE_2__*) ;

__attribute__((used)) static void transcode_video_size_config_apply( vlc_object_t *p_obj,
                                               const video_format_t *p_srcref,
                                               const transcode_encoder_config_t *p_cfg,
                                               video_format_t *p_dst )
{
    if( !p_cfg->video.f_scale &&
        (p_cfg->video.i_width & ~1) && (p_cfg->video.i_width & ~1) )
    {
        p_dst->i_width = p_dst->i_visible_width = p_cfg->video.i_width & ~1;
        p_dst->i_height = p_dst->i_visible_height = p_cfg->video.i_height & ~1;
    }
    else if( p_cfg->video.f_scale )
    {
        transcode_video_scale_apply( p_obj,
                                     p_srcref,
                                     p_cfg->video.f_scale,
                                     p_cfg->video.i_maxwidth,
                                     p_cfg->video.i_maxheight,
                                     p_dst );
    }
    else
    {
        p_dst->i_width = p_srcref->i_width;
        p_dst->i_visible_width = p_srcref->i_visible_width;
        p_dst->i_height = p_srcref->i_height;
        p_dst->i_visible_height = p_srcref->i_visible_height;
    }
}
