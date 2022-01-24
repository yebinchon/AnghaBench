#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  unmap; } ;
struct sway_view {TYPE_1__ events; } ;
struct TYPE_6__ {int /*<<< orphan*/  notify; } ;
struct sway_idle_inhibitor_v1 {int mode; TYPE_3__* manager; TYPE_2__ destroy; int /*<<< orphan*/  link; struct sway_view* view; } ;
typedef  enum sway_idle_inhibit_mode { ____Placeholder_sway_idle_inhibit_mode } sway_idle_inhibit_mode ;
struct TYPE_8__ {TYPE_3__* idle_inhibit_manager_v1; } ;
struct TYPE_7__ {int /*<<< orphan*/  inhibitors; } ;

/* Variables and functions */
 struct sway_idle_inhibitor_v1* FUNC0 (int,int) ; 
 int /*<<< orphan*/  handle_destroy ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC4(struct sway_view *view,
		enum sway_idle_inhibit_mode mode) {
	struct sway_idle_inhibitor_v1 *inhibitor =
		FUNC0(1, sizeof(struct sway_idle_inhibitor_v1));
	if (!inhibitor) {
		return;
	}

	inhibitor->manager = server.idle_inhibit_manager_v1;
	inhibitor->mode = mode;
	inhibitor->view = view;
	FUNC2(&inhibitor->manager->inhibitors, &inhibitor->link);

	inhibitor->destroy.notify = handle_destroy;
	FUNC3(&view->events.unmap, &inhibitor->destroy);

	FUNC1(inhibitor->manager);
}