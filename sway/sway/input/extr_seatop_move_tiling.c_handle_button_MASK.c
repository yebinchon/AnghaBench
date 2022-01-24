#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct wlr_input_device {int dummy; } ;
struct sway_workspace {int dummy; } ;
struct sway_seat {struct seatop_move_tiling_event* seatop_data; TYPE_1__* cursor; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; struct sway_workspace* sway_workspace; } ;
struct sway_container {int /*<<< orphan*/  height_fraction; int /*<<< orphan*/  width_fraction; int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct sway_workspace* workspace; struct sway_container* parent; } ;
struct seatop_move_tiling_event {int target_edge; struct sway_node* target_node; struct sway_container* con; } ;
struct TYPE_6__ {int length; struct sway_container** items; } ;
typedef  TYPE_2__ list_t ;
typedef  enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef  enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_5__ {scalar_t__ pressed_button_count; } ;

/* Variables and functions */
 int L_HORIZ ; 
 int L_VERT ; 
 scalar_t__ N_CONTAINER ; 
 scalar_t__ N_WORKSPACE ; 
 int WLR_EDGE_BOTTOM ; 
 int WLR_EDGE_LEFT ; 
 int WLR_EDGE_NONE ; 
 int WLR_EDGE_TOP ; 
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 TYPE_2__* FUNC3 (struct sway_container*) ; 
 int FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (TYPE_2__*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC10 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC12 (struct sway_workspace*,struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sway_workspace*,int) ; 

__attribute__((used)) static void FUNC14(struct sway_seat *seat, uint32_t time_msec,
		struct wlr_input_device *device, uint32_t button,
		enum wlr_button_state state) {
	if (seat->cursor->pressed_button_count != 0) {
		return;
	}

	struct seatop_move_tiling_event *e = seat->seatop_data;

	if (!e->target_node) {
		FUNC10(seat);
		return;
	}

	struct sway_container *con = e->con;
	struct sway_container *old_parent = con->parent;
	struct sway_workspace *old_ws = con->workspace;
	struct sway_node *target_node = e->target_node;
	struct sway_workspace *new_ws = target_node->type == N_WORKSPACE ?
		target_node->sway_workspace : target_node->sway_container->workspace;
	enum wlr_edges edge = e->target_edge;
	int after = edge != WLR_EDGE_TOP && edge != WLR_EDGE_LEFT;
	bool swap = edge == WLR_EDGE_NONE && target_node->type == N_CONTAINER;

	if (!swap) {
		FUNC2(con);
	}


	// Moving container into empty workspace
	if (target_node->type == N_WORKSPACE && edge == WLR_EDGE_NONE) {
		FUNC11(new_ws, con);
	} else if (target_node->type == N_CONTAINER) {
		// Moving container before/after another
		struct sway_container *target = target_node->sway_container;
		if (swap) {
			FUNC7(target_node->sway_container, con);
		} else {
			enum sway_container_layout layout = FUNC4(target);
			if (edge && !FUNC8(layout, edge)) {
				enum sway_container_layout new_layout = edge == WLR_EDGE_TOP ||
					edge == WLR_EDGE_BOTTOM ? L_VERT : L_HORIZ;
				FUNC6(target, new_layout);
			}
			FUNC1(target, con, after);
		}
	} else {
		// Target is a workspace which requires splitting
		enum sway_container_layout new_layout = edge == WLR_EDGE_TOP ||
			edge == WLR_EDGE_BOTTOM ? L_VERT : L_HORIZ;
		FUNC13(new_ws, new_layout);
		FUNC12(new_ws, con, after);
	}

	if (old_parent) {
		FUNC5(old_parent);
	}

	// This is a bit dirty, but we'll set the dimensions to that of a sibling.
	// I don't think there's any other way to make it consistent without
	// changing how we auto-size containers.
	list_t *siblings = FUNC3(con);
	if (siblings->length > 1) {
		int index = FUNC9(siblings, con);
		struct sway_container *sibling = index == 0 ?
			siblings->items[1] : siblings->items[index - 1];
		con->width = sibling->width;
		con->height = sibling->height;
		con->width_fraction = sibling->width_fraction;
		con->height_fraction = sibling->height_fraction;
	}

	FUNC0(old_ws);
	if (new_ws != old_ws) {
		FUNC0(new_ws);
	}

	FUNC10(seat);
}