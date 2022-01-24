#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int i_y_offset; int i_x_offset; int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_visible_width; } ;
struct TYPE_16__ {TYPE_2__ source; TYPE_6__* sys; } ;
typedef  TYPE_5__ vout_display_t ;
struct TYPE_14__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_17__ {scalar_t__ dither; TYPE_3__ place; int /*<<< orphan*/  cv; } ;
typedef  TYPE_6__ vout_display_sys_t ;
typedef  int /*<<< orphan*/ * vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_bmask; int /*<<< orphan*/  i_gmask; int /*<<< orphan*/  i_rmask; } ;
struct TYPE_18__ {TYPE_4__* p; TYPE_1__ format; } ;
typedef  TYPE_7__ picture_t ;
struct TYPE_15__ {int i_pitch; int i_pixel_pitch; int /*<<< orphan*/ * p_pixels; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUCUL_COLOR_BLACK ; 
 int /*<<< orphan*/  CUCUL_COLOR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 

__attribute__((used)) static void FUNC7(vout_display_t *vd, picture_t *picture,
                    subpicture_t *subpicture, vlc_tick_t date)
{
    FUNC0(vd);
    FUNC1(date);

    vout_display_sys_t *sys = vd->sys;

    if (!sys->dither) {
        /* Create the libcaca dither object */
        sys->dither = FUNC3(32,
                                            vd->source.i_visible_width,
                                            vd->source.i_visible_height,
                                            picture->p[0].i_pitch,
                                            picture->format.i_rmask,
                                            picture->format.i_gmask,
                                            picture->format.i_bmask,
                                            0x00000000);

        if (!sys->dither) {
            FUNC6(vd, "could not create libcaca dither object");
            return;
        }
    }

    FUNC5(sys->cv, CUCUL_COLOR_DEFAULT, CUCUL_COLOR_BLACK);
    FUNC2(sys->cv);

    const int crop_offset = vd->source.i_y_offset * picture->p->i_pitch +
                            vd->source.i_x_offset * picture->p->i_pixel_pitch;
    FUNC4(sys->cv, sys->place.x, sys->place.y,
                        sys->place.width, sys->place.height,
                        sys->dither,
                        &picture->p->p_pixels[crop_offset]);
    FUNC1(subpicture);
}