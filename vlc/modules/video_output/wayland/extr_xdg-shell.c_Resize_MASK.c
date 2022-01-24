#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  wl; } ;
struct TYPE_9__ {TYPE_2__ display; TYPE_4__* sys; } ;
typedef  TYPE_3__ vout_window_t ;
struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_1__ set; int /*<<< orphan*/  toplevel; } ;
typedef  TYPE_4__ vout_window_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(vout_window_t *wnd, unsigned width, unsigned height)
{
    vout_window_sys_t *sys = wnd->sys;

#ifdef XDG_SHELL
    /* The minimum size must be smaller or equal to the maximum size
     * at _all_ times. This gets a bit cumbersome. */
    xdg_toplevel_set_min_size(sys->toplevel, 0, 0);
    xdg_toplevel_set_max_size(sys->toplevel, width, height);
    xdg_toplevel_set_min_size(sys->toplevel, width, height);
#endif

    FUNC1(&sys->lock);
    sys->set.width = width;
    sys->set.height = height;
    FUNC0(wnd);
    FUNC2(&sys->lock);
    FUNC3(wnd->display.wl);
}