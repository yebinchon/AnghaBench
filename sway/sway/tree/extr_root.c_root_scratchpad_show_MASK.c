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
struct wlr_box {int dummy; } ;
struct sway_workspace {scalar_t__ fullscreen; } ;
struct sway_seat {int dummy; } ;
struct sway_container {int x; int width; int y; int height; int /*<<< orphan*/  node; struct sway_workspace* workspace; } ;
struct TYPE_2__ {scalar_t__ fullscreen_global; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct sway_seat* FUNC4 () ; 
 TYPE_1__* root ; 
 int /*<<< orphan*/  FUNC5 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 struct sway_workspace* FUNC6 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wlr_box*,double,double) ; 
 int /*<<< orphan*/  FUNC10 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_workspace*,struct wlr_box*) ; 

void FUNC12(struct sway_container *con) {
	struct sway_seat *seat = FUNC4();
	struct sway_workspace *new_ws = FUNC6(seat);
	if (!new_ws) {
		FUNC8(SWAY_DEBUG, "No focused workspace to show scratchpad on");
		return;
	}
	struct sway_workspace *old_ws = con->workspace;

	// If the current con or any of its parents are in fullscreen mode, we
	// first need to disable it before showing the scratchpad con.
	if (new_ws->fullscreen) {
		FUNC3(new_ws->fullscreen);
	}
	if (root->fullscreen_global) {
		FUNC3(root->fullscreen_global);
	}

	// Show the container
	if (old_ws) {
		FUNC1(con);
	}
	FUNC10(new_ws, con);

	// Make sure the container's center point overlaps this workspace
	double center_lx = con->x + con->width / 2;
	double center_ly = con->y + con->height / 2;

	struct wlr_box workspace_box;
	FUNC11(new_ws, &workspace_box);
	if (!FUNC9(&workspace_box, center_lx, center_ly)) {
		FUNC2(con);
	}

	FUNC0(new_ws);
	FUNC7(seat, FUNC5(seat, &con->node));
}