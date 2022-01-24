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
struct wlr_xwayland {int dummy; } ;
struct wlr_pointer_constraint_v1 {int dummy; } ;
struct sway_view {scalar_t__ type; int /*<<< orphan*/  surface; } ;
struct sway_seat {int /*<<< orphan*/  cursor; int /*<<< orphan*/  wlr_seat; } ;
struct sway_node {scalar_t__ type; TYPE_2__* sway_container; } ;
struct TYPE_4__ {struct wlr_xwayland* wlr_xwayland; } ;
struct TYPE_6__ {int /*<<< orphan*/  pointer_constraints; TYPE_1__ xwayland; } ;
struct TYPE_5__ {struct sway_view* view; } ;

/* Variables and functions */
 scalar_t__ N_CONTAINER ; 
 scalar_t__ SWAY_VIEW_XWAYLAND ; 
 scalar_t__ FUNC0 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_node*,struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wlr_pointer_constraint_v1*) ; 
 struct wlr_pointer_constraint_v1* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wlr_xwayland*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sway_node *node, struct sway_seat *seat) {
	FUNC2(node, seat);

	struct sway_view *view = node->type == N_CONTAINER ?
		node->sway_container->view : NULL;

	if (view && FUNC0(seat, view->surface)) {
#if HAVE_XWAYLAND
		if (view->type == SWAY_VIEW_XWAYLAND) {
			struct wlr_xwayland *xwayland = server.xwayland.wlr_xwayland;
			wlr_xwayland_set_seat(xwayland, seat->wlr_seat);
		}
#endif

		FUNC1(seat, view->surface);
		FUNC3(seat, view->surface);

		struct wlr_pointer_constraint_v1 *constraint =
			FUNC5(
				server.pointer_constraints, view->surface, seat->wlr_seat);
		FUNC4(seat->cursor, constraint);
	}
}