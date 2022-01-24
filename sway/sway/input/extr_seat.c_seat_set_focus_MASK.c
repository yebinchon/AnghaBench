#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wlr_layer_surface_v1 {int dummy; } ;
struct sway_workspace {TYPE_1__* floating; int /*<<< orphan*/  node; struct sway_output* output; struct sway_container* fullscreen; } ;
struct sway_view {scalar_t__ urgent_timer; } ;
struct sway_seat {int has_focus; struct wlr_layer_surface_v1* focused_layer; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; struct sway_workspace* sway_workspace; } ;
struct sway_output {struct sway_node node; } ;
struct sway_container {struct sway_view* view; scalar_t__ is_sticky; int /*<<< orphan*/  node; struct sway_container* parent; struct sway_workspace* workspace; } ;
struct TYPE_8__ {scalar_t__ urgent_timeout; scalar_t__ smart_gaps; } ;
struct TYPE_7__ {struct sway_container* fullscreen_global; } ;
struct TYPE_6__ {int /*<<< orphan*/  wl_event_loop; } ;
struct TYPE_5__ {int length; struct sway_container** items; } ;

/* Variables and functions */
 scalar_t__ N_CONTAINER ; 
 scalar_t__ N_WORKSPACE ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,char*) ; 
 struct sway_node* FUNC7 (struct sway_node*) ; 
 scalar_t__ FUNC8 (struct sway_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_node*) ; 
 struct sway_workspace* FUNC10 (struct sway_output*) ; 
 TYPE_3__* root ; 
 struct sway_node* FUNC11 (struct sway_seat*) ; 
 struct sway_workspace* FUNC12 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC14 (struct sway_node*,struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC15 (struct sway_seat*,struct wlr_layer_surface_v1*) ; 
 int /*<<< orphan*/  FUNC16 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC17 (struct sway_seat*,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct sway_view*) ; 
 scalar_t__ FUNC20 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC21 (struct sway_view*,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct sway_view*),struct sway_view*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC25 (struct sway_workspace*) ; 

void FUNC26(struct sway_seat *seat, struct sway_node *node) {
	if (seat->focused_layer) {
		struct wlr_layer_surface_v1 *layer = seat->focused_layer;
		FUNC15(seat, NULL);
		FUNC26(seat, node);
		FUNC15(seat, layer);
		return;
	}

	struct sway_node *last_focus = FUNC11(seat);
	if (last_focus == node) {
		return;
	}

	struct sway_workspace *last_workspace = FUNC12(seat);

	if (node == NULL) {
		// Close any popups on the old focus
		if (FUNC8(last_focus)) {
			FUNC19(last_focus->sway_container->view);
		}
		FUNC14(last_focus, seat);
		seat->has_focus = false;
		return;
	}

	struct sway_workspace *new_workspace = node->type == N_WORKSPACE ?
		node->sway_workspace : node->sway_container->workspace;
	struct sway_container *container = node->type == N_CONTAINER ?
		node->sway_container : NULL;

	// Deny setting focus to a view which is hidden by a fullscreen container
	if (new_workspace && new_workspace->fullscreen && container &&
			!FUNC3(container)) {
		// Unless it's a transient container
		if (!FUNC4(container, new_workspace->fullscreen)) {
			return;
		}
	}
	// Deny setting focus to a workspace node when using fullscreen global
	if (root->fullscreen_global && !container && new_workspace) {
		return;
	}
	// Deny setting focus to a view which is hidden by a fullscreen global
	if (root->fullscreen_global && container != root->fullscreen_global &&
				!FUNC2(container, root->fullscreen_global)) {
		// Unless it's a transient container
		if (!FUNC4(container, root->fullscreen_global)) {
			return;
		}
	}

	struct sway_output *new_output =
		new_workspace ? new_workspace->output : NULL;

	if (last_workspace != new_workspace && new_output) {
		FUNC9(&new_output->node);
	}

	// find new output's old workspace, which might have to be removed if empty
	struct sway_workspace *new_output_last_ws =
		new_output ? FUNC10(new_output) : NULL;

	// Unfocus the previous focus
	if (last_focus) {
		FUNC14(last_focus, seat);
		FUNC9(last_focus);
		struct sway_node *parent = FUNC7(last_focus);
		if (parent) {
			FUNC9(parent);
		}
	}

	// Put the container parents on the focus stack, then the workspace, then
	// the focused container.
	if (container) {
		struct sway_container *parent = container->parent;
		while (parent) {
			FUNC16(seat, &parent->node);
			parent = parent->parent;
		}
	}
	if (new_workspace) {
		FUNC16(seat, &new_workspace->node);
	}
	if (container) {
		FUNC16(seat, &container->node);
		FUNC13(&container->node, seat);
	}

	// emit ipc events
	FUNC17(seat, new_workspace);
	if (container && container->view) {
		FUNC6(container, "focus");
	}

	// Move sticky containers to new workspace
	if (new_workspace && new_output_last_ws
			&& new_workspace != new_output_last_ws) {
		for (int i = 0; i < new_output_last_ws->floating->length; ++i) {
			struct sway_container *floater =
				new_output_last_ws->floating->items[i];
			if (floater->is_sticky) {
				FUNC1(floater);
				FUNC24(new_workspace, floater);
				--i;
			}
		}
	}

	// Close any popups on the old focus
	if (last_focus && FUNC8(last_focus)) {
		FUNC19(last_focus->sway_container->view);
	}

	// If urgent, either unset the urgency or start a timer to unset it
	if (container && container->view && FUNC20(container->view) &&
			!container->view->urgent_timer) {
		struct sway_view *view = container->view;
		if (last_workspace && last_workspace != new_workspace &&
				config->urgent_timeout > 0) {
			view->urgent_timer = FUNC22(server.wl_event_loop,
					handle_urgent_timeout, view);
			if (view->urgent_timer) {
				FUNC23(view->urgent_timer,
						config->urgent_timeout);
			} else {
				FUNC18(SWAY_ERROR, "Unable to create urgency timer");
				FUNC5(view);
			}
		} else {
			FUNC21(view, false);
		}
	}

	if (new_output_last_ws) {
		FUNC25(new_output_last_ws);
	}
	if (last_workspace && last_workspace != new_output_last_ws) {
		FUNC25(last_workspace);
	}

	seat->has_focus = true;

	if (config->smart_gaps && new_workspace) {
		// When smart gaps is on, gaps may change when the focus changes so
		// the workspace needs to be arranged
		FUNC0(new_workspace);
	}
}