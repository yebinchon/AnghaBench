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
struct TYPE_7__ {int /*<<< orphan*/  new_subsurface; } ;
struct wlr_surface {TYPE_1__ events; } ;
struct wlr_output {struct sway_output* data; } ;
struct sway_workspace {int /*<<< orphan*/  node; } ;
struct TYPE_9__ {int /*<<< orphan*/  notify; } ;
struct sway_view {struct sway_container* container; TYPE_2__* impl; TYPE_3__ surface_new_subsurface; struct wlr_surface* surface; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; } ;
struct sway_container {int /*<<< orphan*/  node; TYPE_6__* workspace; scalar_t__ parent; scalar_t__ view; int /*<<< orphan*/  border_thickness; int /*<<< orphan*/  border; } ;
struct TYPE_12__ {struct sway_container* fullscreen; } ;
struct TYPE_11__ {scalar_t__ popup_during_fullscreen; int /*<<< orphan*/  border_thickness; int /*<<< orphan*/  border; int /*<<< orphan*/  floating_border_thickness; int /*<<< orphan*/  floating_border; } ;
struct TYPE_10__ {int /*<<< orphan*/  node; } ;
struct TYPE_8__ {scalar_t__ (* wants_floating ) (struct sway_view*) ;} ;

/* Variables and functions */
 scalar_t__ N_CONTAINER ; 
 scalar_t__ POPUP_LEAVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_5__* config ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,struct sway_container*,int) ; 
 struct sway_container* FUNC3 (struct sway_view*) ; 
 scalar_t__ FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*) ; 
 struct sway_seat* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sway_container*,char*) ; 
 struct sway_workspace* FUNC11 (struct sway_output*) ; 
 TYPE_4__* root ; 
 struct sway_node* FUNC12 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 struct sway_workspace* FUNC13 (struct sway_seat*) ; 
 struct sway_workspace* FUNC14 (struct sway_view*) ; 
 scalar_t__ FUNC15 (struct sway_view*) ; 
 scalar_t__ FUNC16 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct sway_view*) ; 
 int /*<<< orphan*/  view_handle_surface_new_subsurface ; 
 int /*<<< orphan*/  FUNC19 (struct sway_view*,struct wlr_surface*) ; 
 scalar_t__ FUNC20 (struct sway_view*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC22 (struct sway_view*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sway_view*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sway_view*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC26 (struct sway_workspace*,struct sway_container*) ; 

void FUNC27(struct sway_view *view, struct wlr_surface *wlr_surface,
			  bool fullscreen, struct wlr_output *fullscreen_output,
			  bool decoration) {
	if (!FUNC17(view->surface == NULL, "cannot map mapped view")) {
		return;
	}
	view->surface = wlr_surface;
	FUNC21(view);
	view->container = FUNC3(view);

	// If there is a request to be opened fullscreen on a specific output, try
	// to honor that request. Otherwise, fallback to assigns, pid mappings,
	// focused workspace, etc
	struct sway_workspace *ws = NULL;
	if (fullscreen_output && fullscreen_output->data) {
		struct sway_output *output = fullscreen_output->data;
		ws = FUNC11(output);
	}
	if (!ws) {
		ws = FUNC14(view);
	}

	struct sway_seat *seat = FUNC8();
	struct sway_node *node = ws ? FUNC12(seat, &ws->node)
		: FUNC12(seat, &root->node);
	struct sway_container *target_sibling = node->type == N_CONTAINER ?
		node->sway_container : NULL;

	// If we're about to launch the view into the floating container, then
	// launch it as a tiled view in the root of the workspace instead.
	if (target_sibling && FUNC4(target_sibling)) {
		target_sibling = NULL;
		ws = FUNC13(seat);
	}

	if (target_sibling) {
		FUNC2(target_sibling, view->container, 1);
	} else if (ws) {
		FUNC26(ws, view->container);
	}
	FUNC10(view->container, "new");

	FUNC19(view, wlr_surface);
	FUNC25(&wlr_surface->events.new_subsurface,
		&view->surface_new_subsurface);
	view->surface_new_subsurface.notify = view_handle_surface_new_subsurface;

	if (decoration) {
		FUNC23(view, decoration);
	}

	if (view->impl->wants_floating && view->impl->wants_floating(view)) {
		view->container->border = config->floating_border;
		view->container->border_thickness = config->floating_border_thickness;
		FUNC5(view->container, true);
	} else {
		view->container->border = config->border;
		view->container->border_thickness = config->border_thickness;
		FUNC22(view, true);
	}

	if (config->popup_during_fullscreen == POPUP_LEAVE &&
			view->container->workspace &&
			view->container->workspace->fullscreen &&
			view->container->workspace->fullscreen->view) {
		struct sway_container *fs = view->container->workspace->fullscreen;
		if (FUNC20(view, fs->view)) {
			FUNC6(fs, false);
		}
	}

	FUNC24(view, false);
	FUNC7(view->container);

	if (fullscreen) {
		FUNC6(view->container, true);
		FUNC1(view->container->workspace);
	} else {
		if (view->container->parent) {
			FUNC0(view->container->parent);
		} else if (view->container->workspace) {
			FUNC1(view->container->workspace);
		}
	}

	FUNC18(view);

	if (FUNC15(view)) {
		FUNC9(&view->container->node);
	}
}