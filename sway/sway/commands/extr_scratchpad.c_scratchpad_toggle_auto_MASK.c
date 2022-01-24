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
struct sway_workspace {TYPE_1__* floating; } ;
struct sway_seat {int dummy; } ;
struct sway_container {int /*<<< orphan*/  title; struct sway_container* parent; scalar_t__ scratchpad; } ;
struct TYPE_6__ {TYPE_2__* scratchpad; } ;
struct TYPE_5__ {int length; struct sway_container** items; } ;
struct TYPE_4__ {int length; struct sway_container** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ FUNC0 (struct sway_container*) ; 
 struct sway_seat* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,char*) ; 
 TYPE_3__* root ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 struct sway_container* FUNC5 (struct sway_seat*) ; 
 struct sway_workspace* FUNC6 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC9(void) {
	struct sway_seat *seat = FUNC1();
	struct sway_container *focus = FUNC5(seat);
	struct sway_workspace *ws = FUNC6(seat);
	if (!ws) {
		FUNC8(SWAY_DEBUG,
				"No focused workspace to toggle scratchpad windows on");
		return;
	}

	// If the focus is in a floating split container,
	// operate on the split container instead of the child.
	if (focus && FUNC0(focus)) {
		while (focus->parent) {
			focus = focus->parent;
		}
	}

	// Check if the currently focused window is a scratchpad window and should
	// be hidden again.
	if (focus && focus->scratchpad) {
		FUNC8(SWAY_DEBUG, "Focus is a scratchpad window - hiding %s",
				focus->title);
		FUNC3(focus);
		return;
	}

	// Check if there is an unfocused scratchpad window on the current workspace
	// and focus it.
	for (int i = 0; i < ws->floating->length; ++i) {
		struct sway_container *floater = ws->floating->items[i];
		if (floater->scratchpad && focus != floater) {
			FUNC8(SWAY_DEBUG,
					"Focusing other scratchpad window (%s) in this workspace",
					floater->title);
			FUNC4(floater);
			return;
		}
	}

	// Check if there is a visible scratchpad window on another workspace.
	// In this case we move it to the current workspace.
	for (int i = 0; i < root->scratchpad->length; ++i) {
		struct sway_container *con = root->scratchpad->items[i];
		if (con->parent) {
			FUNC8(SWAY_DEBUG,
					"Moving a visible scratchpad window (%s) to this workspace",
					con->title);
			FUNC4(con);
			FUNC2(con, "move");
			return;
		}
	}

	// Take the container at the bottom of the scratchpad list
	if (!FUNC7(root->scratchpad->length, "Scratchpad is empty")) {
		return;
	}
	struct sway_container *con = root->scratchpad->items[0];
	FUNC8(SWAY_DEBUG, "Showing %s from list", con->title);
	FUNC4(con);
	FUNC2(con, "move");
}