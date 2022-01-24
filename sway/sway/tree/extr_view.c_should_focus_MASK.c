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
struct sway_workspace {TYPE_2__* floating; TYPE_1__* tiling; } ;
struct sway_view {TYPE_3__* container; } ;
struct sway_seat {int dummy; } ;
struct sway_container {int dummy; } ;
struct TYPE_10__ {size_t length; } ;
typedef  TYPE_4__ list_t ;
struct TYPE_9__ {scalar_t__ fullscreen_mode; struct sway_workspace* workspace; int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {size_t length; } ;
struct TYPE_7__ {size_t length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_NO_FOCUS ; 
 scalar_t__ FULLSCREEN_GLOBAL ; 
 TYPE_4__* FUNC0 (struct sway_view*,int /*<<< orphan*/ ) ; 
 struct sway_seat* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 struct sway_container* FUNC3 (struct sway_seat*) ; 
 struct sway_workspace* FUNC4 (struct sway_seat*) ; 

__attribute__((used)) static bool FUNC5(struct sway_view *view) {
	struct sway_seat *seat = FUNC1();
	struct sway_container *prev_con = FUNC3(seat);
	struct sway_workspace *prev_ws = FUNC4(seat);
	struct sway_workspace *map_ws = view->container->workspace;

	if (view->container->fullscreen_mode == FULLSCREEN_GLOBAL) {
		return true;
	}

	// Views can only take focus if they are mapped into the active workspace
	if (prev_ws != map_ws) {
		return false;
	}

	// If the view is the only one in the focused workspace, it'll get focus
	// regardless of any no_focus criteria.
	if (!view->container->parent && !prev_con) {
		size_t num_children = view->container->workspace->tiling->length +
			view->container->workspace->floating->length;
		if (num_children == 1) {
			return true;
		}
	}

	// Check no_focus criteria
	list_t *criterias = FUNC0(view, CT_NO_FOCUS);
	size_t len = criterias->length;
	FUNC2(criterias);
	return len == 0;
}