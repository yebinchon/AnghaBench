#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  copy; int /*<<< orphan*/  destroy; } ;
struct TYPE_8__ {float sharpen; int /*<<< orphan*/  device; int /*<<< orphan*/  vdp; int /*<<< orphan*/  surface; int /*<<< orphan*/  refs; int /*<<< orphan*/  procamp; int /*<<< orphan*/  structure; struct TYPE_8__* frame; TYPE_1__ context; } ;
typedef  TYPE_2__ vlc_vdp_video_frame_t ;
typedef  TYPE_2__ vlc_vdp_video_field_t ;
typedef  int /*<<< orphan*/  vdp_t ;
typedef  int /*<<< orphan*/  VdpVideoSurface ;

/* Variables and functions */
 int /*<<< orphan*/  VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME ; 
 int /*<<< orphan*/  VideoSurfaceCopy ; 
 int /*<<< orphan*/  VideoSurfaceDestroy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  procamp_default ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

vlc_vdp_video_field_t *FUNC5(vdp_t *vdp,
                                            VdpVideoSurface surface)
{
    vlc_vdp_video_field_t *field = FUNC2(sizeof (*field));
    vlc_vdp_video_frame_t *frame = FUNC2(sizeof (*frame));

    if (FUNC3(field == NULL || frame == NULL))
    {
        FUNC1(frame);
        FUNC1(field);
        return NULL;
    }

    field->context.destroy = VideoSurfaceDestroy;
    field->context.copy = VideoSurfaceCopy;
    field->frame = frame;
    field->structure = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME;
    field->procamp = procamp_default;
    field->sharpen = 0.f;

    FUNC0(&frame->refs, 1);
    frame->surface = surface;
    frame->vdp = FUNC4(vdp, &frame->device);
    return field;
}