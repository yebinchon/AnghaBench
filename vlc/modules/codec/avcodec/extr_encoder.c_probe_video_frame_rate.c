
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


struct TYPE_19__ {int i_frame_rate_base; int i_frame_rate; } ;
struct TYPE_20__ {TYPE_3__ video; } ;
struct TYPE_17__ {int i_frame_rate_base; int i_frame_rate; } ;
struct TYPE_18__ {scalar_t__ i_codec; TYPE_1__ video; } ;
struct TYPE_22__ {TYPE_4__ fmt_in; TYPE_2__ fmt_out; } ;
typedef TYPE_6__ encoder_t ;
struct TYPE_25__ {TYPE_15__* supported_framerates; } ;
struct TYPE_21__ {int num; int den; } ;
struct TYPE_24__ {TYPE_5__ time_base; } ;
struct TYPE_23__ {int num; int den; } ;
struct TYPE_16__ {int den; int num; } ;
typedef TYPE_7__ AVRational ;
typedef TYPE_8__ AVCodecContext ;
typedef TYPE_9__ AVCodec ;


 int CLOCK_FREQ ;
 scalar_t__ VLC_CODEC_MP4V ;
 int av_find_nearest_q_idx (TYPE_7__,TYPE_15__*) ;
 int msg_Dbg (TYPE_6__*,char*,int,int) ;

__attribute__((used)) static void probe_video_frame_rate( encoder_t *p_enc, AVCodecContext *p_context, AVCodec *p_codec )
{


    p_context->time_base.num = p_enc->fmt_in.video.i_frame_rate_base ? p_enc->fmt_in.video.i_frame_rate_base : 1;


    p_context->time_base.den = p_enc->fmt_in.video.i_frame_rate_base ? p_enc->fmt_in.video.i_frame_rate :
                                  ( p_enc->fmt_out.i_codec == VLC_CODEC_MP4V ? 25 : CLOCK_FREQ );

    msg_Dbg( p_enc, "Time base for probing set to %d/%d", p_context->time_base.num, p_context->time_base.den );
    if( p_codec->supported_framerates )
    {

        AVRational target = {
            .num = p_context->time_base.den,
            .den = p_context->time_base.num
        };
        int idx = av_find_nearest_q_idx(target, p_codec->supported_framerates);

        p_context->time_base.num = p_codec->supported_framerates[idx].den ?
                                    p_codec->supported_framerates[idx].den : 1;
        p_context->time_base.den = p_codec->supported_framerates[idx].den ?
                                    p_codec->supported_framerates[idx].num : CLOCK_FREQ;


        if( p_context->time_base.den && p_context->time_base.den < CLOCK_FREQ )
        {
            p_enc->fmt_out.video.i_frame_rate_base =
                p_enc->fmt_in.video.i_frame_rate_base =
                p_context->time_base.num;
            p_enc->fmt_out.video.i_frame_rate =
                p_enc->fmt_in.video.i_frame_rate =
                p_context->time_base.den;
        }
    }
    msg_Dbg( p_enc, "Time base set to %d/%d", p_context->time_base.num, p_context->time_base.den );
}
