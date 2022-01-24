#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  projection_mode; } ;
struct TYPE_11__ {float f_fovx; int /*<<< orphan*/  prgm; TYPE_1__ fmt; int /*<<< orphan*/  vp; } ;
typedef  TYPE_2__ vout_display_opengl_t ;
struct TYPE_12__ {float fov; } ;
typedef  TYPE_3__ vlc_viewpoint_t ;

/* Variables and functions */
 float FIELD_OF_VIEW_DEGREES_MAX ; 
 float FIELD_OF_VIEW_DEGREES_MIN ; 
 scalar_t__ M_PI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int VLC_EBADVAR ; 
 int VLC_SUCCESS ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 

int FUNC5(vout_display_opengl_t *vgl,
                                     const vlc_viewpoint_t *p_vp)
{
    if (p_vp->fov > FIELD_OF_VIEW_DEGREES_MAX
            || p_vp->fov < FIELD_OF_VIEW_DEGREES_MIN)
        return VLC_EBADVAR;

    // Convert degree into radian
    float f_fovx = p_vp->fov * (float)M_PI / 180.f;

    /* vgl->vp needs to be converted into world transform */
    FUNC4(&vgl->vp, p_vp);

    if (FUNC2(f_fovx - vgl->f_fovx) >= 0.001f)
    {
        /* FOVx has changed. */
        vgl->f_fovx = f_fovx;
        FUNC0(vgl);
        FUNC1(vgl);
    }
    FUNC3(vgl, vgl->fmt.projection_mode, vgl->prgm);

    return VLC_SUCCESS;
}