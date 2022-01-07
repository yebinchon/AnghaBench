
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef int vlc_decoder_device ;
struct TYPE_19__ {scalar_t__ max_luminance; } ;
struct TYPE_22__ {int i_frame_rate; int lighting; TYPE_1__ mastering; int pose; int multiview_mode; int projection_mode; int orientation; int i_chroma; int * p_palette; int i_frame_rate_base; } ;
typedef TYPE_4__ video_format_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_20__ {int lighting; TYPE_1__ mastering; int pose; int multiview_mode; int projection_mode; int orientation; } ;
struct TYPE_21__ {TYPE_2__ video; } ;
struct TYPE_17__ {TYPE_4__ video; } ;
struct TYPE_23__ {TYPE_3__ fmt_in; TYPE_13__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_18__ {scalar_t__ i_divider_num; } ;
struct TYPE_24__ {TYPE_15__ pts; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_25__ {int ticks_per_frame; } ;
typedef TYPE_7__ AVCodecContext ;


 int VIDEO_ES ;
 int __MAX (int ,int) ;
 int date_Change (TYPE_15__*,int,int ) ;
 int date_Init (TYPE_15__*,int,int ) ;
 int * decoder_GetDecoderDevice (TYPE_5__*) ;
 int es_format_Change (TYPE_13__*,int ,int ) ;
 int lavc_GetVideoFormat (TYPE_5__*,TYPE_4__*,TYPE_7__*,int,int) ;

__attribute__((used)) static int lavc_UpdateVideoFormat(decoder_t *dec, AVCodecContext *ctx,
                                  enum AVPixelFormat fmt,
                                  enum AVPixelFormat swfmt,
                                  vlc_decoder_device **pp_dec_device)
{
    video_format_t fmt_out;
    int val;

    val = lavc_GetVideoFormat(dec, &fmt_out, ctx, fmt, swfmt);
    if (val)
        return val;

    decoder_sys_t *p_sys = dec->p_sys;


    if(p_sys->pts.i_divider_num)
        date_Change(&p_sys->pts, fmt_out.i_frame_rate *
                                 __MAX(ctx->ticks_per_frame, 1),
                                 fmt_out.i_frame_rate_base);
    else
        date_Init(&p_sys->pts, fmt_out.i_frame_rate *
                               __MAX(ctx->ticks_per_frame, 1),
                               fmt_out.i_frame_rate_base);

    fmt_out.p_palette = dec->fmt_out.video.p_palette;
    dec->fmt_out.video.p_palette = ((void*)0);

    es_format_Change(&dec->fmt_out, VIDEO_ES, fmt_out.i_chroma);
    dec->fmt_out.video = fmt_out;
    dec->fmt_out.video.orientation = dec->fmt_in.video.orientation;
    dec->fmt_out.video.projection_mode = dec->fmt_in.video.projection_mode;
    dec->fmt_out.video.multiview_mode = dec->fmt_in.video.multiview_mode;
    dec->fmt_out.video.pose = dec->fmt_in.video.pose;
    if ( dec->fmt_in.video.mastering.max_luminance )
        dec->fmt_out.video.mastering = dec->fmt_in.video.mastering;
    dec->fmt_out.video.lighting = dec->fmt_in.video.lighting;

    if (pp_dec_device)
    {
        *pp_dec_device = decoder_GetDecoderDevice(dec);
        return *pp_dec_device == ((void*)0);
    }
    return 0;
}
