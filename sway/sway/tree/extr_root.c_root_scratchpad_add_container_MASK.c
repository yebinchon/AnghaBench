#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sway_workspace {int /*<<< orphan*/  node; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {int scratchpad; scalar_t__ fullscreen_mode; int /*<<< orphan*/  node; struct sway_workspace* workspace; struct sway_container* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  scratchpad; } ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*,int) ; 
 struct sway_seat* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sway_container*) ; 
 TYPE_1__* root ; 
 struct sway_node* FUNC11 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct sway_workspace*,struct sway_container*) ; 

void FUNC15(struct sway_container *con, struct sway_workspace *ws) {
	if (!FUNC13(!con->scratchpad, "Container is already in scratchpad")) {
		return;
	}

	struct sway_container *parent = con->parent;
	struct sway_workspace *workspace = con->workspace;

	// Clear the fullscreen mode when sending to the scratchpad
	if (con->fullscreen_mode != FULLSCREEN_NONE) {
		FUNC5(con);
	}

	// When a tiled window is sent to scratchpad, center and resize it.
	if (!FUNC6(con)) {
		FUNC7(con, true);
		FUNC4(con);
		FUNC3(con);
	}

	FUNC2(con);
	con->scratchpad = true;
	FUNC10(root->scratchpad, con);
	if (ws) {
		FUNC14(ws, con);
	}

	if (!ws) {
		struct sway_seat *seat = FUNC8();
		struct sway_node *new_focus = NULL;
		if (parent) {
			FUNC0(parent);
			new_focus = FUNC11(seat, &parent->node);
		}
		if (!new_focus) {
			FUNC1(workspace);
			new_focus = FUNC11(seat, &workspace->node);
		}
		FUNC12(seat, new_focus);
	}

	FUNC9(con, "move");
}