#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct wlr_surface {int dummy; } ;
struct wlr_keyboard {int dummy; } ;
struct wlr_input_device {int dummy; } ;
struct wlr_event_pointer_axis {float delta_discrete; float delta; int /*<<< orphan*/  source; int /*<<< orphan*/  orientation; int /*<<< orphan*/  time_msec; TYPE_1__* device; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; struct seatop_default_event* seatop_data; struct sway_cursor* cursor; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; } ;
struct sway_input_device {struct wlr_input_device* wlr_device; } ;
struct sway_cursor {TYPE_4__* seat; TYPE_2__* cursor; } ;
struct sway_container {scalar_t__ content_y; struct sway_node node; } ;
struct sway_binding {int dummy; } ;
struct seatop_default_event {int dummy; } ;
struct input_config {float scroll_factor; } ;
struct TYPE_13__ {int length; struct sway_container** items; } ;
typedef  TYPE_5__ list_t ;
typedef  enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_14__ {TYPE_3__* current_mode; } ;
struct TYPE_12__ {int /*<<< orphan*/  wlr_seat; } ;
struct TYPE_11__ {int /*<<< orphan*/  mouse_bindings; } ;
struct TYPE_10__ {scalar_t__ y; int /*<<< orphan*/  x; } ;
struct TYPE_9__ {struct sway_input_device* data; } ;

/* Variables and functions */
 float FLT_MIN ; 
 int L_STACKED ; 
 int L_TABBED ; 
 scalar_t__ N_CONTAINER ; 
 scalar_t__ N_WORKSPACE ; 
 int WLR_EDGE_NONE ; 
 TYPE_8__* config ; 
 TYPE_5__* FUNC0 (struct sway_container*) ; 
 int FUNC1 (struct sway_container*) ; 
 int FUNC2 (struct sway_container*,struct wlr_surface*,struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct sway_binding* FUNC4 (struct seatop_default_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,char*) ; 
 struct input_config* FUNC5 (struct sway_input_device*) ; 
 char* FUNC6 (struct wlr_input_device*) ; 
 int FUNC7 (TYPE_5__*,struct sway_container*) ; 
 struct sway_node* FUNC8 (struct sway_seat*,int /*<<< orphan*/ ,scalar_t__,struct wlr_surface**,double*,double*) ; 
 struct sway_node* FUNC9 (struct sway_node*) ; 
 scalar_t__ FUNC10 (struct sway_node*,struct sway_node*) ; 
 int FUNC11 (float) ; 
 int /*<<< orphan*/  FUNC12 (struct sway_seat*,struct sway_binding*) ; 
 struct sway_node* FUNC13 (struct sway_seat*,struct sway_node*) ; 
 struct sway_node* FUNC14 (struct sway_seat*) ; 
 struct sway_node* FUNC15 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC17 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct seatop_default_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct seatop_default_event*,int /*<<< orphan*/ ) ; 
 char* FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (struct wlr_event_pointer_axis*) ; 
 int /*<<< orphan*/  FUNC22 (struct wlr_keyboard*) ; 
 struct wlr_keyboard* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(struct sway_seat *seat,
		struct wlr_event_pointer_axis *event) {
	struct sway_input_device *input_device =
		event->device ? event->device->data : NULL;
	struct input_config *ic =
		input_device ? FUNC5(input_device) : NULL;
	struct sway_cursor *cursor = seat->cursor;
	struct seatop_default_event *e = seat->seatop_data;

	// Determine what's under the cursor
	struct wlr_surface *surface = NULL;
	double sx, sy;
	struct sway_node *node = FUNC8(seat,
			cursor->cursor->x, cursor->cursor->y, &surface, &sx, &sy);
	struct sway_container *cont = node && node->type == N_CONTAINER ?
		node->sway_container : NULL;
	enum wlr_edges edge = cont ? FUNC2(cont, surface, cursor) : WLR_EDGE_NONE;
	bool on_border = edge != WLR_EDGE_NONE;
	bool on_titlebar = cont && !on_border && !surface;
	bool on_titlebar_border = cont && on_border &&
		cursor->cursor->y < cont->content_y;
	bool on_contents = cont && !on_border && surface;
	bool on_workspace = node && node->type == N_WORKSPACE;
	float scroll_factor =
		(ic == NULL || ic->scroll_factor == FLT_MIN) ? 1.0f : ic->scroll_factor;

	bool handled = false;

	// Gather information needed for mouse bindings
	struct wlr_keyboard *keyboard = FUNC23(seat->wlr_seat);
	uint32_t modifiers = keyboard ? FUNC22(keyboard) : 0;
	struct wlr_input_device *device =
		input_device ? input_device->wlr_device : NULL;
	char *dev_id = device ? FUNC6(device) : FUNC20("*");
	uint32_t button = FUNC21(event);

	// Handle mouse bindings - x11 mouse buttons 4-7 - press event
	struct sway_binding *binding = NULL;
	FUNC18(e, button);
	binding = FUNC4(e, config->current_mode->mouse_bindings,
			modifiers, false, on_titlebar, on_border, on_contents, on_workspace,
			dev_id);
	if (binding) {
		FUNC12(seat, binding);
		handled = true;
	}

	// Scrolling on a tabbed or stacked title bar (handled as press event)
	if (!handled && (on_titlebar || on_titlebar_border)) {
		enum sway_container_layout layout = FUNC1(cont);
		if (layout == L_TABBED || layout == L_STACKED) {
			struct sway_node *tabcontainer = FUNC9(node);
			struct sway_node *active =
				FUNC13(seat, tabcontainer);
			list_t *siblings = FUNC0(cont);
			int desired = FUNC7(siblings, active->sway_container) +
				FUNC11(scroll_factor * event->delta_discrete);
			if (desired < 0) {
				desired = 0;
			} else if (desired >= siblings->length) {
				desired = siblings->length - 1;
			}
			struct sway_node *old_focus = FUNC14(seat);
			struct sway_container *new_sibling_con = siblings->items[desired];
			struct sway_node *new_sibling = &new_sibling_con->node;
			struct sway_node *new_focus =
				FUNC15(seat, new_sibling);
			if (FUNC10(old_focus, tabcontainer)) {
				FUNC16(seat, new_focus);
			} else {
				// Scrolling when focus is not in the tabbed container at all
				FUNC17(seat, new_sibling);
				FUNC17(seat, new_focus);
				FUNC17(seat, old_focus);
			}
			handled = true;
		}
	}

	// Handle mouse bindings - x11 mouse buttons 4-7 - release event
	binding = FUNC4(e, config->current_mode->mouse_bindings,
			modifiers, true, on_titlebar, on_border, on_contents, on_workspace,
			dev_id);
	FUNC19(e, button);
	if (binding) {
		FUNC12(seat, binding);
		handled = true;
	}
	FUNC3(dev_id);

	if (!handled) {
		FUNC24(cursor->seat->wlr_seat, event->time_msec,
			event->orientation, scroll_factor * event->delta,
			FUNC11(scroll_factor * event->delta_discrete), event->source);
	}
}