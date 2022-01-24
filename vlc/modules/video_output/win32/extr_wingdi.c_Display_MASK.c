#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; } ;
struct TYPE_18__ {TYPE_5__ source; TYPE_8__* sys; } ;
typedef  TYPE_7__ vout_display_t ;
struct TYPE_17__ {int /*<<< orphan*/  hvideownd; } ;
struct TYPE_14__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_13__ {TYPE_1__ display; } ;
struct TYPE_15__ {int place_changed; TYPE_3__ place; TYPE_2__ vdcfg; } ;
struct TYPE_19__ {TYPE_6__ sys; int /*<<< orphan*/  off_dc; TYPE_4__ area; int /*<<< orphan*/  off_bitmap; } ;
typedef  TYPE_8__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_20__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_9__ RECT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_BRUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COLORONCOLOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;
    FUNC8(picture);

    HDC hdc = FUNC2(sys->sys.hvideownd);

    if (sys->area.place_changed)
    {
        /* clear the background */
        RECT display = {
            .left   = 0,
            .right  = sys->area.vdcfg.display.width,
            .top    = 0,
            .bottom = sys->area.vdcfg.display.height,
        };
        FUNC1(hdc, &display, FUNC3(BLACK_BRUSH));
        sys->area.place_changed = false;
    }

    FUNC5(sys->off_dc, sys->off_bitmap);

    if (sys->area.place.width  != vd->source.i_visible_width ||
        sys->area.place.height != vd->source.i_visible_height) {
        FUNC6(hdc, COLORONCOLOR);

        FUNC7(hdc, sys->area.place.x, sys->area.place.y,
                   sys->area.place.width, sys->area.place.height,
                   sys->off_dc,
                   vd->source.i_x_offset, vd->source.i_y_offset,
                   vd->source.i_x_offset + vd->source.i_visible_width,
                   vd->source.i_y_offset + vd->source.i_visible_height,
                   SRCCOPY);
    } else {
        FUNC0(hdc, sys->area.place.x, sys->area.place.y,
               sys->area.place.width, sys->area.place.height,
               sys->off_dc,
               vd->source.i_x_offset, vd->source.i_y_offset,
               SRCCOPY);
    }

    FUNC4(sys->sys.hvideownd, hdc);
}