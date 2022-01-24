#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vdp_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/  video; } ;
struct TYPE_16__ {scalar_t__ i_chroma; } ;
struct TYPE_12__ {TYPE_5__ video; } ;
struct TYPE_14__ {int /*<<< orphan*/  p_cfg; TYPE_4__* p_sys; int /*<<< orphan*/  pf_video_filter; TYPE_2__ fmt_out; TYPE_1__ fmt_in; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_15__ {int /*<<< orphan*/  sigma; } ;
typedef  TYPE_4__ filter_sys_t ;
typedef  scalar_t__ VdpStatus ;
typedef  int /*<<< orphan*/  VdpDevice ;
typedef  scalar_t__ VdpBool ;

/* Variables and functions */
 int /*<<< orphan*/  Sharpen ; 
 int /*<<< orphan*/  SharpenCallback ; 
 scalar_t__ VDP_FALSE ; 
 scalar_t__ VDP_STATUS_OK ; 
 scalar_t__ VDP_TRUE ; 
 int /*<<< orphan*/  VDP_VIDEO_MIXER_FEATURE_SHARPNESS ; 
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_420 ; 
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_422 ; 
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_444 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  options ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 float FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;

    if (filter->fmt_in.video.i_chroma != VLC_CODEC_VDPAU_VIDEO_420
     && filter->fmt_in.video.i_chroma != VLC_CODEC_VDPAU_VIDEO_422
     && filter->fmt_in.video.i_chroma != VLC_CODEC_VDPAU_VIDEO_444)
        return VLC_EGENERIC;
    if (!FUNC10(&filter->fmt_in.video, &filter->fmt_out.video))
        return VLC_EGENERIC;

    /* Check for sharpen support */
    vdp_t *vdp;
    VdpDevice device;
    VdpStatus err;
    VdpBool ok;

    err = FUNC7(NULL, -1, &vdp, &device);
    if (err != VDP_STATUS_OK)
        return VLC_EGENERIC; /* Weird. The decoder should be active... */

    err = FUNC9(vdp, device,
                                       VDP_VIDEO_MIXER_FEATURE_SHARPNESS, &ok);
    if (err != VDP_STATUS_OK)
        ok = VDP_FALSE;
    FUNC8(vdp);

    if (ok != VDP_TRUE)
    {
        FUNC3(filter, "sharpening/blurring not supported by VDPAU device");
        return VLC_EGENERIC;
    }

    /* Initialization */
    filter_sys_t *sys = FUNC2(sizeof (*sys));
    if (FUNC4(sys == NULL))
        return VLC_ENOMEM;

    filter->pf_video_filter = Sharpen;
    filter->p_sys = sys;

    FUNC1(filter, "sharpen-", options, filter->p_cfg);
    FUNC5(filter, "sharpen-sigma", SharpenCallback, sys);

    union { uint32_t u; float f; } u;
    u.f = FUNC11(FUNC6(filter, "sharpen-sigma"));
    FUNC0(&sys->sigma, u.u);

    return VLC_SUCCESS;
}