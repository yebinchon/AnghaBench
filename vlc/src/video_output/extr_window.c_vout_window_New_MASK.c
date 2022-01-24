#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int has_double_click; } ;
struct TYPE_12__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * sys; TYPE_1__ info; int /*<<< orphan*/  handle; } ;
struct TYPE_11__ {int inhibit_windowed; int active; int fullscreen; int /*<<< orphan*/  lock; int /*<<< orphan*/ * inhibit; int /*<<< orphan*/  module; TYPE_3__ wnd; } ;
typedef  TYPE_2__ window_t ;
typedef  TYPE_3__ vout_window_t ;
typedef  int /*<<< orphan*/  vout_window_owner_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_inhibit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,char const*,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  vout_window_start ; 

vout_window_t *FUNC12(vlc_object_t *obj, const char *module,
                               const vout_window_owner_t *owner)
{
    window_t *w = FUNC4(obj, sizeof(*w), "window");
    vout_window_t *window = &w->wnd;

    FUNC2(&window->handle, 0, sizeof(window->handle));
    window->info.has_double_click = false;
    window->sys = NULL;
    FUNC1(owner != NULL);
    window->owner = *owner;

    int dss = FUNC3(obj, "disable-screensaver");

    w->inhibit = NULL;
    w->inhibit_windowed = dss == 1;
    w->active = false;
    w->fullscreen = false;
    FUNC8(&w->lock);

    w->module = FUNC6(window, "vout window", module, false,
                                vout_window_start, window);
    if (!w->module) {
        FUNC7(&w->lock);
        FUNC11(window);
        return NULL;
    }

    /* Hook for screensaver inhibition */
    if (dss > 0) {
        vlc_inhibit_t *inh = FUNC5(FUNC0(window));

        FUNC9(&w->lock);
        w->inhibit = inh;
        FUNC10(&w->lock);
    }
    return window;
}