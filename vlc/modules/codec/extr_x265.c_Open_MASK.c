#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int bitrate; int /*<<< orphan*/  rateControlMode; } ;
struct TYPE_21__ {int maxCUSize; int fpsNum; int fpsDenom; int frameRate; int sourceWidth; int sourceHeight; TYPE_4__ rc; scalar_t__ bEnableWavefront; int /*<<< orphan*/  frameNumThreads; } ;
typedef  TYPE_6__ x265_param ;
struct TYPE_22__ {scalar_t__ sizeBytes; int /*<<< orphan*/  payload; } ;
typedef  TYPE_7__ x265_nal ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_20__ {scalar_t__ i_codec; int i_bitrate; size_t i_extra; int /*<<< orphan*/ * p_extra; int /*<<< orphan*/  i_cat; } ;
struct TYPE_17__ {int i_frame_rate; int i_frame_rate_base; int i_visible_width; int i_visible_height; } ;
struct TYPE_18__ {TYPE_2__ video; int /*<<< orphan*/  i_codec; } ;
struct TYPE_16__ {int /*<<< orphan*/  force; } ;
struct TYPE_23__ {int /*<<< orphan*/ * pf_encode_audio; int /*<<< orphan*/  pf_encode_video; TYPE_5__ fmt_out; TYPE_3__ fmt_in; TYPE_9__* p_sys; TYPE_1__ obj; } ;
typedef  TYPE_8__ encoder_t ;
struct TYPE_24__ {int /*<<< orphan*/  initial_date; scalar_t__ frame_count; int /*<<< orphan*/ * h; TYPE_6__ param; } ;
typedef  TYPE_9__ encoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Encode ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 scalar_t__ VLC_CODEC_HEVC ; 
 int /*<<< orphan*/  VLC_CODEC_I420 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  X265_RC_ABR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_7__**,size_t*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 

__attribute__((used)) static int  FUNC10 (vlc_object_t *p_this)
{
    encoder_t     *p_enc = (encoder_t *)p_this;
    encoder_sys_t *p_sys;

    if (p_enc->fmt_out.i_codec != VLC_CODEC_HEVC && !p_enc->obj.force)
        return VLC_EGENERIC;

    p_enc->fmt_out.i_cat = VIDEO_ES;
    p_enc->fmt_out.i_codec = VLC_CODEC_HEVC;
    p_enc->p_sys = p_sys = FUNC3(sizeof(encoder_sys_t));
    if (!p_sys)
        return VLC_ENOMEM;

    p_enc->fmt_in.i_codec = VLC_CODEC_I420;

    x265_param *param = &p_sys->param;
    FUNC9(param);

    param->frameNumThreads = FUNC6();
    param->bEnableWavefront = 0; // buggy in x265, use frame threading for now
    param->maxCUSize = 16; /* use smaller macroblock */

#if X265_BUILD >= 6
    param->fpsNum = p_enc->fmt_in.video.i_frame_rate;
    param->fpsDenom = p_enc->fmt_in.video.i_frame_rate_base;
    if (!param->fpsNum) {
        param->fpsNum = 25;
        param->fpsDenom = 1;
    }
#else
    if (p_enc->fmt_in.video.i_frame_rate_base) {
        param->frameRate = p_enc->fmt_in.video.i_frame_rate /
            p_enc->fmt_in.video.i_frame_rate_base;
    } else {
        param->frameRate = 25;
    }
#endif
    param->sourceWidth = p_enc->fmt_in.video.i_visible_width;
    param->sourceHeight = p_enc->fmt_in.video.i_visible_height;

    if (param->sourceWidth & (param->maxCUSize - 1)) {
        FUNC5(p_enc, "Width (%d) must be a multiple of %d",
            param->sourceWidth, param->maxCUSize);
        FUNC2(p_sys);
        return VLC_EGENERIC;
    }
    if (param->sourceHeight & 7) {
        FUNC5(p_enc, "Height (%d) must be a multiple of 8", param->sourceHeight);
        FUNC2(p_sys);
        return VLC_EGENERIC;
    }

    if (p_enc->fmt_out.i_bitrate > 0) {
        param->rc.bitrate = p_enc->fmt_out.i_bitrate / 1000;
        param->rc.rateControlMode = X265_RC_ABR;
    }

    p_sys->h = FUNC8(param);
    if (p_sys->h == NULL) {
        FUNC5(p_enc, "cannot open x265 encoder");
        FUNC2(p_sys);
        return VLC_EGENERIC;
    }

    x265_nal *nal;
    uint32_t i_nal;
    if (FUNC7(p_sys->h, &nal, &i_nal) < 0) {
        FUNC5(p_enc, "cannot get x265 headers");
        FUNC0(FUNC1(p_enc));
        return VLC_EGENERIC;
    }

    size_t i_extra = 0;
    for (uint32_t i = 0; i < i_nal; i++)
        i_extra += nal[i].sizeBytes;

    p_enc->fmt_out.i_extra = i_extra;

    uint8_t *p_extra = p_enc->fmt_out.p_extra = FUNC3(i_extra);
    if (!p_extra) {
        FUNC0(FUNC1(p_enc));
        return VLC_ENOMEM;
    }

    for (uint32_t i = 0; i < i_nal; i++) {
        FUNC4(p_extra, nal[i].payload, nal[i].sizeBytes);
        p_extra += nal[i].sizeBytes;
    }

    p_sys->frame_count = 0;
    p_sys->initial_date = VLC_TICK_INVALID;

    p_enc->pf_encode_video = Encode;
    p_enc->pf_encode_audio = NULL;

    return VLC_SUCCESS;
}