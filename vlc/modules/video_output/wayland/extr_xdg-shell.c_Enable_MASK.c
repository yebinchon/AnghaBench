#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  wl; } ;
struct TYPE_13__ {struct wl_display* wl; } ;
struct TYPE_14__ {TYPE_1__ handle; TYPE_3__ display; TYPE_5__* sys; } ;
typedef  TYPE_4__ vout_window_t ;
struct TYPE_12__ {int /*<<< orphan*/  configured; } ;
struct TYPE_15__ {TYPE_2__ wm; int /*<<< orphan*/  toplevel; } ;
typedef  TYPE_5__ vout_window_sys_t ;
struct TYPE_16__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ is_decorated; scalar_t__ is_fullscreen; } ;
typedef  TYPE_6__ vout_window_cfg_t ;
struct wl_display {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC3 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(vout_window_t *wnd, const vout_window_cfg_t *restrict cfg)
{
    vout_window_sys_t *sys = wnd->sys;
    struct wl_display *display = wnd->display.wl;

    if (cfg->is_fullscreen)
        FUNC5(sys->toplevel, NULL);
    else
        FUNC6(sys->toplevel);

#ifdef XDG_SHELL
    SetDecoration(wnd, cfg->is_decorated);
#else
    if (cfg->is_decorated)
        return VLC_EGENERIC;
#endif
    FUNC1(wnd, cfg->width, cfg->height);
    FUNC4(wnd->handle.wl);
    FUNC3(display);

#ifdef XDG_SHELL
    while (!sys->wm.configured)
        wl_display_dispatch(display);
#endif

    return VLC_SUCCESS;
}