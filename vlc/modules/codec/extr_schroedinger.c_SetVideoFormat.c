
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_frame_rate; int i_frame_rate_base; int i_sar_den; int i_sar_num; int i_height; int i_y_offset; int i_visible_height; int i_width; int i_x_offset; int i_visible_width; } ;
struct TYPE_8__ {TYPE_1__ video; int i_codec; } ;
struct TYPE_9__ {TYPE_2__ fmt_out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_10__ {int i_frame_pts_delta; TYPE_5__* p_format; int p_schro; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_11__ {int frame_rate_denominator; int frame_rate_numerator; int chroma_format; int aspect_ratio_denominator; int aspect_ratio_numerator; int height; int top_offset; int clean_height; int width; int left_offset; int clean_width; } ;





 int VLC_CODEC_I420 ;
 int VLC_CODEC_I422 ;
 int VLC_CODEC_I444 ;
 int VLC_TICK_FROM_SEC (int) ;
 TYPE_5__* schro_decoder_get_video_format (int ) ;

__attribute__((used)) static void SetVideoFormat( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    p_sys->p_format = schro_decoder_get_video_format(p_sys->p_schro);
    if( p_sys->p_format == ((void*)0) ) return;

    p_sys->i_frame_pts_delta = VLC_TICK_FROM_SEC(1)
                            * p_sys->p_format->frame_rate_denominator
                            / p_sys->p_format->frame_rate_numerator;

    switch( p_sys->p_format->chroma_format )
    {
    case 130: p_dec->fmt_out.i_codec = VLC_CODEC_I420; break;
    case 129: p_dec->fmt_out.i_codec = VLC_CODEC_I422; break;
    case 128: p_dec->fmt_out.i_codec = VLC_CODEC_I444; break;
    default:
        p_dec->fmt_out.i_codec = 0;
        break;
    }

    p_dec->fmt_out.video.i_visible_width = p_sys->p_format->clean_width;
    p_dec->fmt_out.video.i_x_offset = p_sys->p_format->left_offset;
    p_dec->fmt_out.video.i_width = p_sys->p_format->width;

    p_dec->fmt_out.video.i_visible_height = p_sys->p_format->clean_height;
    p_dec->fmt_out.video.i_y_offset = p_sys->p_format->top_offset;
    p_dec->fmt_out.video.i_height = p_sys->p_format->height;


    p_dec->fmt_out.video.i_sar_num = p_sys->p_format->aspect_ratio_numerator;
    p_dec->fmt_out.video.i_sar_den = p_sys->p_format->aspect_ratio_denominator;

    p_dec->fmt_out.video.i_frame_rate =
        p_sys->p_format->frame_rate_numerator;
    p_dec->fmt_out.video.i_frame_rate_base =
        p_sys->p_format->frame_rate_denominator;
}
