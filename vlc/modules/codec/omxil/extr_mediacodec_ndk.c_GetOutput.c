
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_15__ {int flags; int offset; int size; int presentationTimeUs; } ;
struct TYPE_20__ {int p_codec; TYPE_2__ info; } ;
typedef TYPE_7__ mc_api_sys ;
struct TYPE_18__ {void* sample_rate; void* channel_mask; void* channel_count; } ;
struct TYPE_17__ {void* crop_bottom; void* crop_right; void* crop_top; void* crop_left; void* pixel_format; void* slice_height; void* stride; void* height; void* width; } ;
struct TYPE_19__ {TYPE_5__ audio; TYPE_4__ video; } ;
struct TYPE_14__ {int i_index; int i_size; int * p_ptr; int i_ts; } ;
struct TYPE_21__ {int b_eos; TYPE_6__ conf; int type; TYPE_1__ buf; } ;
typedef TYPE_8__ mc_api_out ;
struct TYPE_22__ {scalar_t__ i_cat; int p_obj; scalar_t__ b_direct_rendering; TYPE_7__* p_sys; } ;
typedef TYPE_9__ mc_api ;
struct TYPE_16__ {int * (* getOutputFormat ) (int ) ;int * (* getOutputBuffer ) (int ,int,size_t*) ;} ;
struct TYPE_13__ {TYPE_3__ AMediaCodec; } ;
typedef int AMediaFormat ;


 int AMEDIACODEC_BUFFER_FLAG_END_OF_STREAM ;
 void* GetFormatInteger (int *,char*) ;
 int MC_API_ERROR ;
 int MC_API_INFO_OUTPUT_FORMAT_CHANGED ;
 int MC_OUT_TYPE_BUF ;
 int MC_OUT_TYPE_CONF ;
 scalar_t__ VIDEO_ES ;
 int msg_Err (int ,char*) ;
 int * stub1 (int ,int,size_t*) ;
 int * stub2 (int ) ;
 TYPE_10__ syms ;

__attribute__((used)) static int GetOutput(mc_api *api, int i_index, mc_api_out *p_out)
{
    mc_api_sys *p_sys = api->p_sys;

    if (i_index >= 0)
    {
        p_out->type = MC_OUT_TYPE_BUF;
        p_out->buf.i_index = i_index;

        p_out->buf.i_ts = p_sys->info.presentationTimeUs;
        p_out->b_eos = p_sys->info.flags & AMEDIACODEC_BUFFER_FLAG_END_OF_STREAM;

        if (api->b_direct_rendering)
        {
            p_out->buf.p_ptr = ((void*)0);
            p_out->buf.i_size = 0;
        }
        else
        {
            size_t i_mc_size;
            uint8_t *p_mc_buf = syms.AMediaCodec.getOutputBuffer(p_sys->p_codec,
                                                                 i_index,
                                                                 &i_mc_size);

            if (!p_mc_buf && !p_out->b_eos)
            {
                msg_Err(api->p_obj, "AMediaCodec.getOutputBuffer failed");
                return MC_API_ERROR;
            }
            p_out->buf.p_ptr = p_mc_buf + p_sys->info.offset;
            p_out->buf.i_size = p_sys->info.size;
        }
        return 1;
    }
    else if (i_index == MC_API_INFO_OUTPUT_FORMAT_CHANGED)
    {
        AMediaFormat *format = syms.AMediaCodec.getOutputFormat(p_sys->p_codec);

        p_out->type = MC_OUT_TYPE_CONF;
        p_out->b_eos = 0;
        if (api->i_cat == VIDEO_ES)
        {
            p_out->conf.video.width = GetFormatInteger(format, "width");
            p_out->conf.video.height = GetFormatInteger(format, "height");
            p_out->conf.video.stride = GetFormatInteger(format, "stride");
            p_out->conf.video.slice_height = GetFormatInteger(format, "slice-height");
            p_out->conf.video.pixel_format = GetFormatInteger(format, "color-format");
            p_out->conf.video.crop_left = GetFormatInteger(format, "crop-left");
            p_out->conf.video.crop_top = GetFormatInteger(format, "crop-top");
            p_out->conf.video.crop_right = GetFormatInteger(format, "crop-right");
            p_out->conf.video.crop_bottom = GetFormatInteger(format, "crop-bottom");
        }
        else
        {
            p_out->conf.audio.channel_count = GetFormatInteger(format, "channel-count");
            p_out->conf.audio.channel_mask = GetFormatInteger(format, "channel-mask");
            p_out->conf.audio.sample_rate = GetFormatInteger(format, "sample-rate");
        }
        return 1;
    }
    return 0;
}
