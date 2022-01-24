#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  source; TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_5__ {float height; scalar_t__ width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {int place_changed; int /*<<< orphan*/  gl; int /*<<< orphan*/  vgl; TYPE_1__ place; } ;
typedef  TYPE_3__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,float) ; 

__attribute__((used)) static void FUNC6 (vout_display_t *vd, picture_t *pic)
{
    vout_display_sys_t *sys = vd->sys;
    FUNC0(pic);

    if (FUNC1 (sys->gl) == VLC_SUCCESS)
    {
        if (sys->place_changed)
        {
            float window_ar = (float)sys->place.width / sys->place.height;
            FUNC4(sys->vgl, window_ar);
            FUNC5(sys->vgl, sys->place.x, sys->place.y,
                                         sys->place.width, sys->place.height);
            sys->place_changed = false;
        }

        FUNC3 (sys->vgl, &vd->source);
        FUNC2 (sys->gl);
    }
}