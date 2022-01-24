#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_window_t ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_7__ {int /*<<< orphan*/  hwnd; TYPE_5__ window_placement; int /*<<< orphan*/  i_window_style; } ;
typedef  TYPE_2__ vout_window_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC4(vout_window_t *wnd)
{
    FUNC3(wnd, "leaving fullscreen mode");
    vout_window_sys_t *sys = wnd->sys;

    /* return to normal window for non embedded vout */
    if (sys->window_placement.length)
    {
        FUNC0(sys->hwnd, GWL_STYLE, sys->i_window_style);
        FUNC1(sys->hwnd, &sys->window_placement);
        sys->window_placement.length = 0;
    }
    FUNC2(sys->hwnd, SW_SHOWNORMAL);
}