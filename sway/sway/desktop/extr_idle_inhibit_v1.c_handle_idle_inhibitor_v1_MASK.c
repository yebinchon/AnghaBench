#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  destroy; } ;
struct wlr_idle_inhibitor_v1 {TYPE_1__ events; int /*<<< orphan*/  surface; } ;
struct wl_listener {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  notify; } ;
struct sway_idle_inhibitor_v1 {TYPE_2__ destroy; int /*<<< orphan*/  link; int /*<<< orphan*/  view; int /*<<< orphan*/  mode; struct sway_idle_inhibit_manager_v1* manager; } ;
struct sway_idle_inhibit_manager_v1 {int /*<<< orphan*/  inhibitors; } ;

/* Variables and functions */
 int /*<<< orphan*/  INHIBIT_IDLE_APPLICATION ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct sway_idle_inhibitor_v1* FUNC0 (int,int) ; 
 int /*<<< orphan*/  handle_destroy ; 
 struct sway_idle_inhibit_manager_v1* manager ; 
 int /*<<< orphan*/  new_idle_inhibitor_v1 ; 
 int /*<<< orphan*/  FUNC1 (struct sway_idle_inhibit_manager_v1*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sway_idle_inhibit_manager_v1* FUNC4 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC7(struct wl_listener *listener, void *data) {
	struct wlr_idle_inhibitor_v1 *wlr_inhibitor = data;
	struct sway_idle_inhibit_manager_v1 *manager =
		FUNC4(listener, manager, new_idle_inhibitor_v1);
	FUNC2(SWAY_DEBUG, "New sway idle inhibitor");

	struct sway_idle_inhibitor_v1 *inhibitor =
		FUNC0(1, sizeof(struct sway_idle_inhibitor_v1));
	if (!inhibitor) {
		return;
	}

	inhibitor->manager = manager;
	inhibitor->mode = INHIBIT_IDLE_APPLICATION;
	inhibitor->view = FUNC3(wlr_inhibitor->surface);
	FUNC5(&manager->inhibitors, &inhibitor->link);

	inhibitor->destroy.notify = handle_destroy;
	FUNC6(&wlr_inhibitor->events.destroy, &inhibitor->destroy);

	FUNC1(manager);
}