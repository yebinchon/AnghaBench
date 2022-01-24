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
typedef  int /*<<< orphan*/  uint32_t ;
struct wlr_surface {int dummy; } ;
struct wlr_seat {int dummy; } ;
struct sway_node {scalar_t__ type; int /*<<< orphan*/  sway_container; } ;
struct sway_cursor {TYPE_1__* seat; } ;
typedef  enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
struct TYPE_2__ {struct wlr_seat* wlr_seat; } ;

/* Variables and functions */
 scalar_t__ N_CONTAINER ; 
 int WLR_EDGE_LEFT ; 
 int WLR_EDGE_NONE ; 
 int WLR_EDGE_RIGHT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_cursor*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct wlr_surface*,struct sway_cursor*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlr_seat*) ; 
 int /*<<< orphan*/  FUNC5 (struct wlr_seat*,struct wlr_surface*,double,double) ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct sway_cursor *cursor, uint32_t time_msec,
		struct sway_node *node, struct wlr_surface *surface,
		double sx, double sy) {
	struct wlr_seat *wlr_seat = cursor->seat->wlr_seat;
	if (surface) {
		if (FUNC3(cursor->seat, surface)) {
			FUNC5(wlr_seat, surface, sx, sy);
		}
	} else if (node && node->type == N_CONTAINER) {
		// Try a node's resize edge
		enum wlr_edges edge = FUNC2(node->sway_container, surface, cursor);
		if (edge == WLR_EDGE_NONE) {
			FUNC1(cursor, "left_ptr", NULL);
		} else if (FUNC0(node->sway_container)) {
			FUNC1(cursor, FUNC6(edge), NULL);
		} else {
			if (edge & (WLR_EDGE_LEFT | WLR_EDGE_RIGHT)) {
				FUNC1(cursor, "col-resize", NULL);
			} else {
				FUNC1(cursor, "row-resize", NULL);
			}
		}
	} else {
		FUNC1(cursor, "left_ptr", NULL);
	}

	if (surface == NULL) {
		FUNC4(wlr_seat);
	}
}