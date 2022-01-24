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
struct TYPE_7__ {int /*<<< orphan*/ * wl; } ;
struct TYPE_9__ {TYPE_2__ display; TYPE_1__ handle; TYPE_4__* sys; } ;
typedef  TYPE_3__ vout_window_t ;
struct TYPE_10__ {int /*<<< orphan*/  registry; int /*<<< orphan*/  compositor; int /*<<< orphan*/ * shm; int /*<<< orphan*/  wm_base; int /*<<< orphan*/  surface; int /*<<< orphan*/  toplevel; int /*<<< orphan*/ * cursor_theme; int /*<<< orphan*/ * cursor_surface; int /*<<< orphan*/ * deco_manager; int /*<<< orphan*/ * deco; int /*<<< orphan*/  outputs; int /*<<< orphan*/  seats; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; } ;
typedef  TYPE_4__ vout_window_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;

    FUNC3(sys->thread);
    FUNC4(sys->thread, NULL);

    FUNC5(&sys->lock);
    FUNC2(&sys->seats);
    FUNC1(sys->outputs);
#ifdef XDG_SHELL
    if (sys->deco != NULL)
        zxdg_toplevel_decoration_v1_destroy(sys->deco);
    if (sys->deco_manager != NULL)
        zxdg_decoration_manager_v1_destroy(sys->deco_manager);
#endif
    if (sys->cursor_surface != NULL)
        FUNC11(sys->cursor_surface);
    if (sys->cursor_theme != NULL)
        FUNC7(sys->cursor_theme);
    FUNC13(sys->toplevel);
    FUNC12(sys->surface);
    FUNC14(sys->wm_base);
    FUNC11(wnd->handle.wl);
    if (sys->shm != NULL)
        FUNC10(sys->shm);
    FUNC6(sys->compositor);
    FUNC9(sys->registry);
    FUNC8(wnd->display.wl);
    FUNC0(sys);
}