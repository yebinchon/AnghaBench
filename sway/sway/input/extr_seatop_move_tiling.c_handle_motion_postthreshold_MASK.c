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
struct wlr_surface {int dummy; } ;
struct wlr_box {scalar_t__ y; scalar_t__ height; scalar_t__ x; scalar_t__ width; } ;
struct sway_seat {struct sway_cursor* cursor; struct seatop_move_tiling_event* seatop_data; } ;
struct sway_node {scalar_t__ type; scalar_t__ sway_workspace; struct sway_container* sway_container; } ;
struct sway_cursor {TYPE_1__* cursor; } ;
struct sway_container {scalar_t__ workspace; scalar_t__ content_width; scalar_t__ content_height; size_t y; size_t x; size_t width; size_t height; scalar_t__ content_x; scalar_t__ content_y; TYPE_2__* view; struct sway_container* parent; struct sway_node node; } ;
struct seatop_move_tiling_event {int target_edge; struct wlr_box drop_box; struct sway_node* target_node; TYPE_3__* con; } ;
typedef  enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_6__ {scalar_t__ workspace; struct sway_node node; } ;
struct TYPE_5__ {int /*<<< orphan*/  surface; } ;
struct TYPE_4__ {size_t x; size_t y; } ;

/* Variables and functions */
 scalar_t__ DROP_LAYOUT_BORDER ; 
 size_t INT_MAX ; 
 int L_HORIZ ; 
 int L_STACKED ; 
 int L_TABBED ; 
 int L_VERT ; 
 scalar_t__ N_WORKSPACE ; 
 void* WLR_EDGE_BOTTOM ; 
 void* WLR_EDGE_LEFT ; 
 void* WLR_EDGE_NONE ; 
 void* WLR_EDGE_RIGHT ; 
 void* WLR_EDGE_TOP ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct wlr_box*) ; 
 int FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct wlr_box*) ; 
 double FUNC3 (scalar_t__,scalar_t__) ; 
 struct sway_node* FUNC4 (struct sway_seat*,size_t,size_t,struct wlr_surface**,double*,double*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_node*,struct wlr_box*) ; 
 void* FUNC6 (struct sway_node*) ; 
 scalar_t__ FUNC7 (struct sway_node*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct wlr_box*,int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct wlr_box*) ; 
 int FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct sway_seat *seat) {
	struct seatop_move_tiling_event *e = seat->seatop_data;
	struct wlr_surface *surface = NULL;
	double sx, sy;
	struct sway_cursor *cursor = seat->cursor;
	struct sway_node *node = FUNC4(seat,
			cursor->cursor->x, cursor->cursor->y, &surface, &sx, &sy);
	// Damage the old location
	FUNC2(&e->drop_box);

	if (!node) {
		// Eg. hovered over a layer surface such as swaybar
		e->target_node = NULL;
		e->target_edge = WLR_EDGE_NONE;
		return;
	}

	if (node->type == N_WORKSPACE) {
		// Empty workspace
		e->target_node = node;
		e->target_edge = WLR_EDGE_NONE;
		FUNC9(node->sway_workspace, &e->drop_box);
		FUNC2(&e->drop_box);
		return;
	}

	// Deny moving within own workspace if this is the only child
	struct sway_container *con = node->sway_container;
	if (FUNC10(e->con->workspace) == 1 &&
			con->workspace == e->con->workspace) {
		e->target_node = NULL;
		e->target_edge = WLR_EDGE_NONE;
		return;
	}

	// Traverse the ancestors, trying to find a layout container perpendicular
	// to the edge. Eg. close to the top or bottom of a horiz layout.
	while (con) {
		enum wlr_edges edge = WLR_EDGE_NONE;
		enum sway_container_layout layout = FUNC1(con);
		struct wlr_box parent;
		con->parent ? FUNC0(con->parent, &parent) :
			FUNC9(con->workspace, &parent);
		if (layout == L_HORIZ || layout == L_TABBED) {
			if (cursor->cursor->y < parent.y + DROP_LAYOUT_BORDER) {
				edge = WLR_EDGE_TOP;
			} else if (cursor->cursor->y > parent.y + parent.height
					- DROP_LAYOUT_BORDER) {
				edge = WLR_EDGE_BOTTOM;
			}
		} else if (layout == L_VERT || layout == L_STACKED) {
			if (cursor->cursor->x < parent.x + DROP_LAYOUT_BORDER) {
				edge = WLR_EDGE_LEFT;
			} else if (cursor->cursor->x > parent.x + parent.width
					- DROP_LAYOUT_BORDER) {
				edge = WLR_EDGE_RIGHT;
			}
		}
		if (edge) {
			e->target_node = FUNC6(&con->node);
			if (e->target_node == &e->con->node) {
				e->target_node = FUNC6(e->target_node);
			}
			e->target_edge = edge;
			FUNC5(e->target_node, &e->drop_box);
			FUNC8(&e->drop_box, edge, DROP_LAYOUT_BORDER);
			FUNC2(&e->drop_box);
			return;
		}
		con = con->parent;
	}

	// Use the hovered view - but we must be over the actual surface
	con = node->sway_container;
	if (!con->view || !con->view->surface || node == &e->con->node
			|| FUNC7(node, &e->con->node)) {
		e->target_node = NULL;
		e->target_edge = WLR_EDGE_NONE;
		return;
	}

	// Find the closest edge
	size_t thickness = FUNC3(con->content_width, con->content_height) * 0.3;
	size_t closest_dist = INT_MAX;
	size_t dist;
	e->target_edge = WLR_EDGE_NONE;
	if ((dist = cursor->cursor->y - con->y) < closest_dist) {
		closest_dist = dist;
		e->target_edge = WLR_EDGE_TOP;
	}
	if ((dist = cursor->cursor->x - con->x) < closest_dist) {
		closest_dist = dist;
		e->target_edge = WLR_EDGE_LEFT;
	}
	if ((dist = con->x + con->width - cursor->cursor->x) < closest_dist) {
		closest_dist = dist;
		e->target_edge = WLR_EDGE_RIGHT;
	}
	if ((dist = con->y + con->height - cursor->cursor->y) < closest_dist) {
		closest_dist = dist;
		e->target_edge = WLR_EDGE_BOTTOM;
	}

	if (closest_dist > thickness) {
		e->target_edge = WLR_EDGE_NONE;
	}

	e->target_node = node;
	e->drop_box.x = con->content_x;
	e->drop_box.y = con->content_y;
	e->drop_box.width = con->content_width;
	e->drop_box.height = con->content_height;
	FUNC8(&e->drop_box, e->target_edge, thickness);
	FUNC2(&e->drop_box);
}