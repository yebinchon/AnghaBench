#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float f_yaw; float f_pitch; float f_roll; float f_field_of_view; } ;
typedef  TYPE_1__ libvlc_video_viewpoint_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

libvlc_video_viewpoint_t *FUNC2(void)
{
    libvlc_video_viewpoint_t *p_vp = FUNC0(sizeof *p_vp);
    if (FUNC1(p_vp == NULL))
        return NULL;
    p_vp->f_yaw = p_vp->f_pitch = p_vp->f_roll = p_vp->f_field_of_view = 0.0f;
    return p_vp;
}