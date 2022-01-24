#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int chroma; int /*<<< orphan*/ * vdp; int /*<<< orphan*/  format; int /*<<< orphan*/  device; } ;
typedef  TYPE_4__ vlc_vdp_mixer_t ;
struct TYPE_22__ {scalar_t__ i_chroma; } ;
typedef  TYPE_5__ video_format_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_23__ {int i_planes; TYPE_5__ format; TYPE_3__* p; } ;
typedef  TYPE_6__ picture_t ;
struct TYPE_18__ {int i_y_offset; int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_19__ {TYPE_1__ video; } ;
struct TYPE_24__ {TYPE_2__ fmt_in; TYPE_4__* p_sys; } ;
typedef  TYPE_7__ filter_t ;
typedef  int /*<<< orphan*/  VdpVideoSurface ;
typedef  scalar_t__ VdpStatus ;
struct TYPE_20__ {void* p_pixels; int i_pitch; } ;

/* Variables and functions */
#define  VDP_CHROMA_TYPE_420 130 
#define  VDP_CHROMA_TYPE_422 129 
#define  VDP_CHROMA_TYPE_444 128 
 scalar_t__ VDP_STATUS_OK ; 
 scalar_t__ VLC_CODEC_I420 ; 
 scalar_t__ VLC_CODEC_I422 ; 
 scalar_t__ VLC_CODEC_I444 ; 
 scalar_t__ VLC_CODEC_NV12 ; 
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_420 ; 
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_422 ; 
 scalar_t__ VLC_CODEC_VDPAU_VIDEO_444 ; 
 scalar_t__ VLC_CODEC_YV12 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_6__*) ; 
 TYPE_6__* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const**,int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static picture_t *FUNC11(filter_t *filter, picture_t *src)
{
    vlc_vdp_mixer_t *sys = filter->p_sys;
    VdpVideoSurface surface;
    VdpStatus err;

    if (sys->vdp == NULL)
        goto drop;

    /* Create surface (TODO: reuse?) */
    err = FUNC6(sys->vdp, sys->device, sys->chroma,
                                   filter->fmt_in.video.i_width,
                                   filter->fmt_in.video.i_visible_height,
                                   &surface);
    if (err != VDP_STATUS_OK)
    {
        FUNC0(filter, "video %s %s failure: %s", "surface", "creation",
                FUNC5(sys->vdp, err));
        goto drop;
    }

    /* Put bits */
    const void *planes[3];
    uint32_t pitches[3];
    for (int i = 0; i < src->i_planes; i++)
    {
        planes[i] = src->p[i].p_pixels
                  + filter->fmt_in.video.i_y_offset * src->p[i].i_pitch;
        pitches[i] = src->p[i].i_pitch;
    }
    if (src->format.i_chroma == VLC_CODEC_I420
     || src->format.i_chroma == VLC_CODEC_I422
     || src->format.i_chroma == VLC_CODEC_I444)
    {
        planes[1] = src->p[2].p_pixels;
        planes[2] = src->p[1].p_pixels;
        pitches[1] = src->p[2].i_pitch;
        pitches[2] = src->p[1].i_pitch;
    }
    if (src->format.i_chroma == VLC_CODEC_I420
     || src->format.i_chroma == VLC_CODEC_YV12
     || src->format.i_chroma == VLC_CODEC_NV12)
    {
        for (int i = 1; i < src->i_planes; i++)
            planes[i] = ((const uint8_t *)planes[i])
                + (filter->fmt_in.video.i_y_offset / 2) * src->p[i].i_pitch;
    }

    err = FUNC8(sys->vdp, surface, sys->format,
                                             planes, pitches);
    if (err != VDP_STATUS_OK)
    {
        FUNC0(filter, "video %s %s failure: %s", "surface", "import",
                FUNC5(sys->vdp, err));
        goto error;
    }

    /* Wrap surface into a picture */
    video_format_t fmt = src->format;

    switch (sys->chroma)
    {
        case VDP_CHROMA_TYPE_420:
            fmt.i_chroma = VLC_CODEC_VDPAU_VIDEO_420;
            break;
        case VDP_CHROMA_TYPE_422:
            fmt.i_chroma = VLC_CODEC_VDPAU_VIDEO_422;
            break;
        case VDP_CHROMA_TYPE_444:
            fmt.i_chroma = VLC_CODEC_VDPAU_VIDEO_444;
            break;
        default:
            FUNC9();
    }


    picture_t *dst = FUNC2(&fmt);
    if (FUNC4(dst == NULL))
        goto error;
    FUNC1(dst, src);
    FUNC3(src);

    err = FUNC10(sys->vdp, surface, dst);
    if (FUNC4(err != VDP_STATUS_OK))
    {
        FUNC3(dst);
        dst = NULL;
    }
    return dst;
error:
    FUNC7(sys->vdp, surface);
drop:
    FUNC3(src);
    return NULL;
}