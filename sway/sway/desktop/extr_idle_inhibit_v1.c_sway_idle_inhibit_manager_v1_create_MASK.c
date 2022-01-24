#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wlr_idle {int dummy; } ;
struct wl_display {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  notify; } ;
struct sway_idle_inhibit_manager_v1 {int /*<<< orphan*/  inhibitors; TYPE_3__ new_idle_inhibitor_v1; TYPE_2__* wlr_manager; struct wlr_idle* idle; } ;
struct TYPE_4__ {int /*<<< orphan*/  new_inhibitor; } ;
struct TYPE_5__ {TYPE_1__ events; } ;

/* Variables and functions */
 struct sway_idle_inhibit_manager_v1* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_idle_inhibit_manager_v1*) ; 
 int /*<<< orphan*/  handle_idle_inhibitor_v1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC4 (struct wl_display*) ; 

struct sway_idle_inhibit_manager_v1 *FUNC5(
		struct wl_display *wl_display, struct wlr_idle *idle) {
	struct sway_idle_inhibit_manager_v1 *manager =
		FUNC0(1, sizeof(struct sway_idle_inhibit_manager_v1));
	if (!manager) {
		return NULL;
	}

	manager->wlr_manager = FUNC4(wl_display);
	if (!manager->wlr_manager) {
		FUNC1(manager);
		return NULL;
	}
	manager->idle = idle;
	FUNC3(&manager->wlr_manager->events.new_inhibitor,
		&manager->new_idle_inhibitor_v1);
	manager->new_idle_inhibitor_v1.notify = handle_idle_inhibitor_v1;
	FUNC2(&manager->inhibitors);

	return manager;
}