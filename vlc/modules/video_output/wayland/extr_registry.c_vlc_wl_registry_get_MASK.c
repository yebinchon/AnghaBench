#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wl_proxy {int dummy; } ;
struct wl_event_queue {int dummy; } ;
struct wl_display {int dummy; } ;
struct vlc_wl_registry {int /*<<< orphan*/ * registry; int /*<<< orphan*/ * names; int /*<<< orphan*/ * interfaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_wl_registry*) ; 
 struct vlc_wl_registry* FUNC1 (int) ; 
 int /*<<< orphan*/  registry_cbs ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_wl_registry*) ; 
 int /*<<< orphan*/ * FUNC4 (struct wl_display*) ; 
 scalar_t__ FUNC5 (struct wl_display*,struct wl_event_queue*) ; 
 struct wl_display* FUNC6 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_proxy*,struct wl_event_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vlc_wl_registry*) ; 

struct vlc_wl_registry *FUNC10(struct wl_display *display,
                                            struct wl_event_queue *queue)
{
    struct vlc_wl_registry *vr = FUNC1(sizeof (*vr));
    if (FUNC2(vr == NULL))
        return NULL;

    struct wl_display *wrapper = FUNC6(display);
    if (FUNC2(wrapper == NULL))
        goto error;

    FUNC7((struct wl_proxy *)wrapper, queue);
    vr->registry = FUNC4(wrapper);
    FUNC8(wrapper);

    if (FUNC2(vr->registry == NULL))
        goto error;

    vr->interfaces = NULL;
    vr->names = NULL;

    FUNC9(vr->registry, &registry_cbs, vr);

     /* complete registry enumeration */
    if (FUNC5(display, queue) < 0)
    {
        FUNC3(vr);
        vr = NULL;
    }

    return vr;
error:
    FUNC0(vr);
    return vr;
}