#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_window_t ;
struct TYPE_14__ {int length; } ;
struct TYPE_11__ {int /*<<< orphan*/  hwnd; int /*<<< orphan*/  i_window_style; TYPE_8__ window_placement; } ;
typedef  TYPE_2__ vout_window_sys_t ;
typedef  int /*<<< orphan*/  WINDOWPLACEMENT ;
struct TYPE_13__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_12__ {int cbSize; TYPE_6__ rcMonitor; } ;
typedef  TYPE_3__ MONITORINFO ;
typedef  int /*<<< orphan*/  HMONITOR ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  MONITOR_DEFAULTTONEAREST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__) ; 
 int SWP_FRAMECHANGED ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int WS_CLIPCHILDREN ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC10(vout_window_t *wnd, const char *id)
{
    FUNC8(id);
    FUNC9(wnd, "entering fullscreen mode");
    vout_window_sys_t *sys = wnd->sys;

    sys->window_placement.length = sizeof(WINDOWPLACEMENT);
    FUNC2(sys->hwnd, &sys->window_placement);

    sys->i_window_style = FUNC1(sys->hwnd, GWL_STYLE);

    /* Change window style, no borders and no title bar */
    FUNC6(sys->hwnd, GWL_STYLE, WS_CLIPCHILDREN | WS_VISIBLE);

    /* Retrieve current window position so fullscreen will happen
     * on the right screen */
    HMONITOR hmon = FUNC3(sys->hwnd, MONITOR_DEFAULTTONEAREST);
    MONITORINFO mi;
    mi.cbSize = sizeof(MONITORINFO);
    if (FUNC0(hmon, &mi))
        FUNC7(sys->hwnd, 0,
                     mi.rcMonitor.left,
                     mi.rcMonitor.top,
                     FUNC5(mi.rcMonitor),
                     FUNC4(mi.rcMonitor),
                     SWP_NOZORDER|SWP_FRAMECHANGED);
}