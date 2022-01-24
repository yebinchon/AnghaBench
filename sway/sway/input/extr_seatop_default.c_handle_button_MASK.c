#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct wlr_xwayland_surface {int /*<<< orphan*/  surface; scalar_t__ override_redirect; } ;
struct wlr_xwayland {int dummy; } ;
struct wlr_surface {int dummy; } ;
struct TYPE_9__ {scalar_t__ keyboard_interactive; } ;
struct wlr_layer_surface_v1 {TYPE_3__ current; } ;
struct wlr_keyboard {int dummy; } ;
struct wlr_input_device {int dummy; } ;
struct sway_seat {int /*<<< orphan*/  wlr_seat; struct sway_cursor* cursor; struct seatop_default_event* seatop_data; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; } ;
struct sway_cursor {TYPE_4__* cursor; } ;
struct sway_container {scalar_t__ x; int width; scalar_t__ y; int height; scalar_t__ fullscreen_mode; int /*<<< orphan*/  node; struct sway_container* parent; } ;
struct sway_binding {int dummy; } ;
struct seatop_default_event {int dummy; } ;
typedef  enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef  enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;
struct TYPE_12__ {scalar_t__ floating_mod; scalar_t__ tiling_drag_threshold; scalar_t__ tiling_drag; scalar_t__ floating_mod_inverse; TYPE_2__* current_mode; } ;
struct TYPE_7__ {struct wlr_xwayland* wlr_xwayland; } ;
struct TYPE_11__ {TYPE_1__ xwayland; } ;
struct TYPE_10__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {int /*<<< orphan*/  mouse_bindings; } ;

/* Variables and functions */
 scalar_t__ BTN_LEFT ; 
 scalar_t__ BTN_RIGHT ; 
 scalar_t__ FULLSCREEN_NONE ; 
 scalar_t__ N_CONTAINER ; 
 scalar_t__ N_WORKSPACE ; 
 int WLR_BUTTON_PRESSED ; 
 int WLR_EDGE_BOTTOM ; 
 int WLR_EDGE_LEFT ; 
 int WLR_EDGE_NONE ; 
 int WLR_EDGE_RIGHT ; 
 int WLR_EDGE_TOP ; 
 TYPE_6__* config ; 
 scalar_t__ FUNC0 (struct sway_container*,struct sway_container*) ; 
 scalar_t__ FUNC1 (struct sway_container*) ; 
 scalar_t__ FUNC2 (struct sway_container*) ; 
 scalar_t__ FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_cursor*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sway_container*,struct wlr_surface*,struct sway_cursor*) ; 
 int FUNC6 (struct sway_container*,struct wlr_surface*,struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct sway_binding* FUNC8 (struct seatop_default_event*,int /*<<< orphan*/ ,scalar_t__,int,int,int,int,int,char*) ; 
 char* FUNC9 (struct wlr_input_device*) ; 
 struct sway_node* FUNC10 (struct sway_seat*,scalar_t__,scalar_t__,struct wlr_surface**,double*,double*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_seat*,struct sway_binding*) ; 
 struct sway_node* FUNC12 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 struct sway_container* FUNC13 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC14 (struct sway_seat*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct sway_seat*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC17 (struct sway_seat*,struct wlr_layer_surface_v1*) ; 
 int /*<<< orphan*/  FUNC18 (struct sway_seat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sway_seat*,struct sway_container*,scalar_t__,double,double) ; 
 int /*<<< orphan*/  FUNC20 (struct sway_seat*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC21 (struct sway_seat*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC22 (struct sway_seat*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC23 (struct sway_seat*,struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sway_seat*,struct sway_container*,int) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC25 (struct seatop_default_event*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (struct seatop_default_event*,scalar_t__) ; 
 char* FUNC27 (char*) ; 
 scalar_t__ FUNC28 (struct wlr_keyboard*) ; 
 struct wlr_layer_surface_v1* FUNC29 (struct wlr_surface*) ; 
 struct wlr_keyboard* FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (struct wlr_surface*) ; 
 scalar_t__ FUNC32 (struct wlr_surface*) ; 
 scalar_t__ FUNC33 (struct wlr_xwayland_surface*) ; 
 int /*<<< orphan*/  FUNC34 (struct wlr_xwayland*,int /*<<< orphan*/ ) ; 
 struct wlr_xwayland_surface* FUNC35 (struct wlr_surface*) ; 

__attribute__((used)) static void FUNC36(struct sway_seat *seat, uint32_t time_msec,
		struct wlr_input_device *device, uint32_t button,
		enum wlr_button_state state) {
	struct seatop_default_event *e = seat->seatop_data;
	struct sway_cursor *cursor = seat->cursor;

	// Determine what's under the cursor
	struct wlr_surface *surface = NULL;
	double sx, sy;
	struct sway_node *node = FUNC10(seat,
			cursor->cursor->x, cursor->cursor->y, &surface, &sx, &sy);

	struct sway_container *cont = node && node->type == N_CONTAINER ?
		node->sway_container : NULL;
	bool is_floating = cont && FUNC1(cont);
	bool is_floating_or_child = cont && FUNC2(cont);
	bool is_fullscreen_or_child = cont && FUNC3(cont);
	enum wlr_edges edge = cont ? FUNC5(cont, surface, cursor) : WLR_EDGE_NONE;
	enum wlr_edges resize_edge = cont && edge ?
		FUNC6(cont, surface, cursor) : WLR_EDGE_NONE;
	bool on_border = edge != WLR_EDGE_NONE;
	bool on_contents = cont && !on_border && surface;
	bool on_workspace = node && node->type == N_WORKSPACE;
	bool on_titlebar = cont && !on_border && !surface;

	// Handle mouse bindings
	struct wlr_keyboard *keyboard = FUNC30(seat->wlr_seat);
	uint32_t modifiers = keyboard ? FUNC28(keyboard) : 0;

	char *device_identifier = device ? FUNC9(device)
		: FUNC27("*");
	struct sway_binding *binding = NULL;
	if (state == WLR_BUTTON_PRESSED) {
		FUNC25(e, button);
		binding = FUNC8(e,
			config->current_mode->mouse_bindings, modifiers, false,
			on_titlebar, on_border, on_contents, on_workspace,
			device_identifier);
	} else {
		binding = FUNC8(e,
			config->current_mode->mouse_bindings, modifiers, true,
			on_titlebar, on_border, on_contents, on_workspace,
			device_identifier);
		FUNC26(e, button);
	}
	FUNC7(device_identifier);
	if (binding) {
		FUNC11(seat, binding);
		return;
	}

	// Handle clicking an empty workspace
	if (node && node->type == N_WORKSPACE) {
		FUNC15(seat, node);
		return;
	}

	// Handle clicking a layer surface
	if (surface && FUNC31(surface)) {
		struct wlr_layer_surface_v1 *layer =
			FUNC29(surface);
		if (layer->current.keyboard_interactive) {
			FUNC17(seat, layer);
		}
		FUNC14(seat, time_msec, button, state);
		return;
	}

	// Handle tiling resize via border
	if (cont && resize_edge && button == BTN_LEFT &&
			state == WLR_BUTTON_PRESSED && !is_floating) {
		FUNC16(seat, cont);
		FUNC24(seat, cont, edge);
		return;
	}

	// Handle tiling resize via mod
	bool mod_pressed = keyboard &&
		(FUNC28(keyboard) & config->floating_mod);
	if (cont && !is_floating_or_child && mod_pressed &&
			state == WLR_BUTTON_PRESSED) {
		uint32_t btn_resize = config->floating_mod_inverse ?
			BTN_LEFT : BTN_RIGHT;
		if (button == btn_resize) {
			edge = 0;
			edge |= cursor->cursor->x > cont->x + cont->width / 2 ?
				WLR_EDGE_RIGHT : WLR_EDGE_LEFT;
			edge |= cursor->cursor->y > cont->y + cont->height / 2 ?
				WLR_EDGE_BOTTOM : WLR_EDGE_TOP;

			const char *image = NULL;
			if (edge == (WLR_EDGE_LEFT | WLR_EDGE_TOP)) {
				image = "nw-resize";
			} else if (edge == (WLR_EDGE_TOP | WLR_EDGE_RIGHT)) {
				image = "ne-resize";
			} else if (edge == (WLR_EDGE_RIGHT | WLR_EDGE_BOTTOM)) {
				image = "se-resize";
			} else if (edge == (WLR_EDGE_BOTTOM | WLR_EDGE_LEFT)) {
				image = "sw-resize";
			}
			FUNC4(seat->cursor, image, NULL);
			FUNC16(seat, cont);
			FUNC24(seat, cont, edge);
			return;
		}
	}

	// Handle beginning floating move
	if (cont && is_floating_or_child && !is_fullscreen_or_child &&
			state == WLR_BUTTON_PRESSED) {
		uint32_t btn_move = config->floating_mod_inverse ? BTN_RIGHT : BTN_LEFT;
		if (button == btn_move && (mod_pressed || on_titlebar)) {
			while (cont->parent) {
				cont = cont->parent;
			}
			FUNC16(seat, cont);
			FUNC20(seat, cont);
			return;
		}
	}

	// Handle beginning floating resize
	if (cont && is_floating_or_child && !is_fullscreen_or_child &&
			state == WLR_BUTTON_PRESSED) {
		// Via border
		if (button == BTN_LEFT && resize_edge != WLR_EDGE_NONE) {
			FUNC23(seat, cont, resize_edge);
			return;
		}

		// Via mod+click
		uint32_t btn_resize = config->floating_mod_inverse ?
			BTN_LEFT : BTN_RIGHT;
		if (mod_pressed && button == btn_resize) {
			struct sway_container *floater = cont;
			while (floater->parent) {
				floater = floater->parent;
			}
			edge = 0;
			edge |= cursor->cursor->x > floater->x + floater->width / 2 ?
				WLR_EDGE_RIGHT : WLR_EDGE_LEFT;
			edge |= cursor->cursor->y > floater->y + floater->height / 2 ?
				WLR_EDGE_BOTTOM : WLR_EDGE_TOP;
			FUNC23(seat, floater, edge);
			return;
		}
	}

	// Handle moving a tiling container
	if (config->tiling_drag && (mod_pressed || on_titlebar) &&
			state == WLR_BUTTON_PRESSED && !is_floating_or_child &&
			cont && cont->fullscreen_mode == FULLSCREEN_NONE) {
		struct sway_container *focus = FUNC13(seat);
		bool focused = focus == cont || FUNC0(focus, cont);
		if (on_titlebar && !focused) {
			node = FUNC12(seat, &cont->node);
			FUNC15(seat, node);
		}

		// If moving a container by it's title bar, use a threshold for the drag
		if (!mod_pressed && config->tiling_drag_threshold > 0) {
			FUNC22(seat, cont);
		} else {
			FUNC21(seat, cont);
		}
		return;
	}

	// Handle mousedown on a container surface
	if (surface && cont && state == WLR_BUTTON_PRESSED) {
		FUNC16(seat, cont);
		FUNC19(seat, cont, time_msec, sx, sy);
		FUNC14(seat, time_msec, button, WLR_BUTTON_PRESSED);
		return;
	}

	// Handle clicking a container surface or decorations
	if (cont && state == WLR_BUTTON_PRESSED) {
		node = FUNC12(seat, &cont->node);
		FUNC15(seat, node);
		FUNC14(seat, time_msec, button, state);
		return;
	}

#if HAVE_XWAYLAND
	// Handle clicking on xwayland unmanaged view
	if (surface && wlr_surface_is_xwayland_surface(surface)) {
		struct wlr_xwayland_surface *xsurface =
			wlr_xwayland_surface_from_wlr_surface(surface);
		if (xsurface->override_redirect &&
				wlr_xwayland_or_surface_wants_focus(xsurface)) {
			struct wlr_xwayland *xwayland = server.xwayland.wlr_xwayland;
			wlr_xwayland_set_seat(xwayland, seat->wlr_seat);
			seat_set_focus_surface(seat, xsurface->surface, false);
			seat_pointer_notify_button(seat, time_msec, button, state);
			return;
		}
	}
#endif

	FUNC14(seat, time_msec, button, state);
}