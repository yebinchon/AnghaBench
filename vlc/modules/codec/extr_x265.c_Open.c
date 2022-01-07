
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int bitrate; int rateControlMode; } ;
struct TYPE_21__ {int maxCUSize; int fpsNum; int fpsDenom; int frameRate; int sourceWidth; int sourceHeight; TYPE_4__ rc; scalar_t__ bEnableWavefront; int frameNumThreads; } ;
typedef TYPE_6__ x265_param ;
struct TYPE_22__ {scalar_t__ sizeBytes; int payload; } ;
typedef TYPE_7__ x265_nal ;
typedef int vlc_object_t ;
typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_20__ {scalar_t__ i_codec; int i_bitrate; size_t i_extra; int * p_extra; int i_cat; } ;
struct TYPE_17__ {int i_frame_rate; int i_frame_rate_base; int i_visible_width; int i_visible_height; } ;
struct TYPE_18__ {TYPE_2__ video; int i_codec; } ;
struct TYPE_16__ {int force; } ;
struct TYPE_23__ {int * pf_encode_audio; int pf_encode_video; TYPE_5__ fmt_out; TYPE_3__ fmt_in; TYPE_9__* p_sys; TYPE_1__ obj; } ;
typedef TYPE_8__ encoder_t ;
struct TYPE_24__ {int initial_date; scalar_t__ frame_count; int * h; TYPE_6__ param; } ;
typedef TYPE_9__ encoder_sys_t ;


 int Close (int ) ;
 int Encode ;
 int VIDEO_ES ;
 scalar_t__ VLC_CODEC_HEVC ;
 int VLC_CODEC_I420 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_8__*) ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int X265_RC_ABR ;
 int free (TYPE_9__*) ;
 void* malloc (size_t) ;
 int memcpy (int *,int ,scalar_t__) ;
 int msg_Err (TYPE_8__*,char*,...) ;
 int vlc_GetCPUCount () ;
 scalar_t__ x265_encoder_headers (int *,TYPE_7__**,size_t*) ;
 int * x265_encoder_open (TYPE_6__*) ;
 int x265_param_default (TYPE_6__*) ;

__attribute__((used)) static int Open (vlc_object_t *p_this)
{
    encoder_t *p_enc = (encoder_t *)p_this;
    encoder_sys_t *p_sys;

    if (p_enc->fmt_out.i_codec != VLC_CODEC_HEVC && !p_enc->obj.force)
        return VLC_EGENERIC;

    p_enc->fmt_out.i_cat = VIDEO_ES;
    p_enc->fmt_out.i_codec = VLC_CODEC_HEVC;
    p_enc->p_sys = p_sys = malloc(sizeof(encoder_sys_t));
    if (!p_sys)
        return VLC_ENOMEM;

    p_enc->fmt_in.i_codec = VLC_CODEC_I420;

    x265_param *param = &p_sys->param;
    x265_param_default(param);

    param->frameNumThreads = vlc_GetCPUCount();
    param->bEnableWavefront = 0;
    param->maxCUSize = 16;
    if (p_enc->fmt_in.video.i_frame_rate_base) {
        param->frameRate = p_enc->fmt_in.video.i_frame_rate /
            p_enc->fmt_in.video.i_frame_rate_base;
    } else {
        param->frameRate = 25;
    }

    param->sourceWidth = p_enc->fmt_in.video.i_visible_width;
    param->sourceHeight = p_enc->fmt_in.video.i_visible_height;

    if (param->sourceWidth & (param->maxCUSize - 1)) {
        msg_Err(p_enc, "Width (%d) must be a multiple of %d",
            param->sourceWidth, param->maxCUSize);
        free(p_sys);
        return VLC_EGENERIC;
    }
    if (param->sourceHeight & 7) {
        msg_Err(p_enc, "Height (%d) must be a multiple of 8", param->sourceHeight);
        free(p_sys);
        return VLC_EGENERIC;
    }

    if (p_enc->fmt_out.i_bitrate > 0) {
        param->rc.bitrate = p_enc->fmt_out.i_bitrate / 1000;
        param->rc.rateControlMode = X265_RC_ABR;
    }

    p_sys->h = x265_encoder_open(param);
    if (p_sys->h == ((void*)0)) {
        msg_Err(p_enc, "cannot open x265 encoder");
        free(p_sys);
        return VLC_EGENERIC;
    }

    x265_nal *nal;
    uint32_t i_nal;
    if (x265_encoder_headers(p_sys->h, &nal, &i_nal) < 0) {
        msg_Err(p_enc, "cannot get x265 headers");
        Close(VLC_OBJECT(p_enc));
        return VLC_EGENERIC;
    }

    size_t i_extra = 0;
    for (uint32_t i = 0; i < i_nal; i++)
        i_extra += nal[i].sizeBytes;

    p_enc->fmt_out.i_extra = i_extra;

    uint8_t *p_extra = p_enc->fmt_out.p_extra = malloc(i_extra);
    if (!p_extra) {
        Close(VLC_OBJECT(p_enc));
        return VLC_ENOMEM;
    }

    for (uint32_t i = 0; i < i_nal; i++) {
        memcpy(p_extra, nal[i].payload, nal[i].sizeBytes);
        p_extra += nal[i].sizeBytes;
    }

    p_sys->frame_count = 0;
    p_sys->initial_date = VLC_TICK_INVALID;

    p_enc->pf_encode_video = Encode;
    p_enc->pf_encode_audio = ((void*)0);

    return VLC_SUCCESS;
}
