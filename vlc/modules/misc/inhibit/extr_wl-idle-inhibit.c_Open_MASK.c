#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct wl_display* wl; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ display; } ;
typedef  TYPE_2__ vout_window_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {int /*<<< orphan*/  inhibit; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ vlc_inhibit_t ;
struct TYPE_12__ {int /*<<< orphan*/ * eventq; int /*<<< orphan*/ * manager; int /*<<< orphan*/ * inhibitor; } ;
typedef  TYPE_4__ vlc_inhibit_sys_t ;
struct wl_registry {int dummy; } ;
struct wl_proxy {int dummy; } ;
struct wl_display {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Inhibit ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ VOUT_WINDOW_TYPE_WAYLAND ; 
 int /*<<< orphan*/  registry_cbs ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct wl_display*) ; 
 struct wl_registry* FUNC4 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl_display*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_proxy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wl_registry*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl_registry*) ; 

__attribute__((used)) static int FUNC10(vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vout_window_t *wnd = FUNC1(ih);

    if (wnd->type != VOUT_WINDOW_TYPE_WAYLAND)
        return VLC_EGENERIC;

    vlc_inhibit_sys_t *sys = FUNC2(obj, sizeof (*sys));
    if (FUNC0(sys == NULL))
        return VLC_ENOMEM;

    sys->manager = NULL;
    sys->inhibitor = NULL;
    ih->p_sys = sys;

    struct wl_display *display = wnd->display.wl;

    sys->eventq = FUNC3(display);
    if (sys->eventq == NULL)
        return VLC_ENOMEM;

    struct wl_registry *registry = FUNC4(display);
    if (registry == NULL)
        goto error;

    FUNC8(registry, &registry_cbs, ih);
    FUNC7((struct wl_proxy *)registry, sys->eventq);
    FUNC5(display, sys->eventq);
    FUNC9(registry);

    if (sys->manager == NULL)
        goto error;

    ih->inhibit = Inhibit;
    return VLC_SUCCESS;

error:
    if (sys->eventq != NULL)
        FUNC6(sys->eventq);
    return VLC_EGENERIC;
}