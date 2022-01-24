#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_window_t ;
struct TYPE_9__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_2__ vout_window_sys_t ;
struct TYPE_10__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__ is_decorated; } ;
typedef  TYPE_3__ vout_window_cfg_t ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int VLC_SUCCESS ; 
 int WS_CLIPCHILDREN ; 
 int WS_DISABLED ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_POPUP ; 
 int WS_SIZEBOX ; 
 int FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5(vout_window_t *wnd, const vout_window_cfg_t *cfg)
{
    vout_window_sys_t *sys = wnd->sys;

    LONG i_window_style;
    if (cfg->is_decorated)
        i_window_style = WS_OVERLAPPEDWINDOW | WS_SIZEBOX;
    else
        i_window_style = WS_POPUP;
    i_window_style |= WS_CLIPCHILDREN;

    /* allow user to regain control over input events if requested */
    bool b_mouse_support = FUNC4( wnd, "mouse-events" );
    bool b_key_support = FUNC4( wnd, "keyboard-events" );
    if( !b_mouse_support && !b_key_support )
        i_window_style |= WS_DISABLED;
    FUNC2(sys->hwnd, GWL_STYLE, i_window_style);

    if (cfg->x || cfg->y)
        FUNC0(sys->hwnd, cfg->x, cfg->y, cfg->width, cfg->height, TRUE);

    FUNC1(wnd, cfg->width, cfg->height);

    FUNC3( sys->hwnd, SW_SHOW );
    return VLC_SUCCESS;
}