#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  notify; } ;
struct sway_seat {int /*<<< orphan*/  link; int /*<<< orphan*/  devices; TYPE_6__ request_set_primary_selection; TYPE_4__* wlr_seat; TYPE_6__ request_set_selection; TYPE_6__ start_drag; TYPE_6__ request_start_drag; TYPE_6__ new_node; int /*<<< orphan*/  deferred_bindings; int /*<<< orphan*/  focus_stack; int /*<<< orphan*/  cursor; } ;
struct sway_node {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  new_node; } ;
struct TYPE_16__ {TYPE_1__ events; int /*<<< orphan*/  node; } ;
struct TYPE_15__ {TYPE_3__* input; int /*<<< orphan*/  wl_display; } ;
struct TYPE_11__ {int /*<<< orphan*/  request_set_primary_selection; int /*<<< orphan*/  request_set_selection; int /*<<< orphan*/  start_drag; int /*<<< orphan*/  request_start_drag; } ;
struct TYPE_13__ {TYPE_2__ events; struct sway_seat* data; } ;
struct TYPE_12__ {int /*<<< orphan*/  seats; } ;

/* Variables and functions */
 struct sway_seat* FUNC0 (int,int) ; 
 int /*<<< orphan*/  collect_focus_container_iter ; 
 int /*<<< orphan*/  collect_focus_workspace_iter ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*) ; 
 int /*<<< orphan*/  handle_new_node ; 
 int /*<<< orphan*/  handle_request_set_primary_selection ; 
 int /*<<< orphan*/  handle_request_set_selection ; 
 int /*<<< orphan*/  handle_request_start_drag ; 
 int /*<<< orphan*/  handle_start_drag ; 
 struct sway_seat* FUNC3 () ; 
 TYPE_9__* root ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sway_seat*) ; 
 struct sway_node* FUNC6 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_seat*) ; 
 TYPE_8__ server ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 

struct sway_seat *FUNC17(const char *seat_name) {
	struct sway_seat *seat = FUNC0(1, sizeof(struct sway_seat));
	if (!seat) {
		return NULL;
	}

	seat->wlr_seat = FUNC15(server.wl_display, seat_name);
	if (!FUNC9(seat->wlr_seat, "could not allocate seat")) {
		FUNC2(seat);
		return NULL;
	}
	seat->wlr_seat->data = seat;

	seat->cursor = FUNC10(seat);
	if (!seat->cursor) {
		FUNC16(seat->wlr_seat);
		FUNC2(seat);
		return NULL;
	}

	// init the focus stack
	FUNC12(&seat->focus_stack);

	FUNC5(collect_focus_workspace_iter, seat);
	FUNC4(collect_focus_container_iter, seat);

	seat->deferred_bindings = FUNC1();

	if (!FUNC11(&server.input->seats)) {
		// Since this is not the first seat, attempt to set initial focus
		struct sway_seat *current_seat = FUNC3();
		struct sway_node *current_focus =
			FUNC6(current_seat, &root->node);
		FUNC7(seat, current_focus);
	}

	FUNC14(&root->events.new_node, &seat->new_node);
	seat->new_node.notify = handle_new_node;

	FUNC14(&seat->wlr_seat->events.request_start_drag,
		&seat->request_start_drag);
	seat->request_start_drag.notify = handle_request_start_drag;

	FUNC14(&seat->wlr_seat->events.start_drag, &seat->start_drag);
	seat->start_drag.notify = handle_start_drag;

	FUNC14(&seat->wlr_seat->events.request_set_selection,
		&seat->request_set_selection);
	seat->request_set_selection.notify = handle_request_set_selection;

	FUNC14(&seat->wlr_seat->events.request_set_primary_selection,
		&seat->request_set_primary_selection);
	seat->request_set_primary_selection.notify =
		handle_request_set_primary_selection;

	FUNC12(&seat->devices);

	FUNC13(&server.input->seats, &seat->link);

	FUNC8(seat);

	return seat;
}