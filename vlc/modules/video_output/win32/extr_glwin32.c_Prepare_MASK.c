#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ vout_display_t ;
struct TYPE_6__ {int width; int height; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {TYPE_1__ place; } ;
struct TYPE_9__ {int /*<<< orphan*/  gl; int /*<<< orphan*/  vgl; TYPE_2__ area; } ;
typedef  TYPE_4__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const) ; 

__attribute__((used)) static void FUNC7(vout_display_t *vd, picture_t *picture, subpicture_t *subpicture,
                    vlc_tick_t date)
{
    FUNC0(date);
    vout_display_sys_t *sys = vd->sys;

    const int width  = sys->area.place.width;
    const int height = sys->area.place.height;
    FUNC3 (sys->gl, width, height);
    if (FUNC1 (sys->gl) != VLC_SUCCESS)
        return;
    FUNC5(sys->vgl, (float)width / height);
    FUNC6(sys->vgl, sys->area.place.x, sys->area.place.y, width, height);
    FUNC4 (sys->vgl, picture, subpicture);
    FUNC2 (sys->gl);
}