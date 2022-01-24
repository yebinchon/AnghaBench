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
struct TYPE_10__ {scalar_t__ transform; scalar_t__ scale; } ;
struct wlr_surface {int /*<<< orphan*/ * buffer; TYPE_4__ current; } ;
struct wlr_output {float scale; scalar_t__ transform; } ;
struct TYPE_9__ {TYPE_2__* floating; } ;
struct sway_workspace {TYPE_3__ current; } ;
struct sway_view {struct wlr_surface* surface; int /*<<< orphan*/  container; scalar_t__ saved_buffer; } ;
struct TYPE_7__ {struct sway_workspace* active_workspace; } ;
struct sway_output {int /*<<< orphan*/ * layers; TYPE_1__ current; struct wlr_output* wlr_output; } ;
struct sway_container {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  drag_icons; int /*<<< orphan*/  xwayland_unmanaged; } ;
struct TYPE_11__ {int /*<<< orphan*/  presentation; } ;
struct TYPE_8__ {int length; struct sway_container** items; } ;

/* Variables and functions */
 size_t ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY ; 
 scalar_t__ FUNC0 (struct sway_container*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count_surface_iterator ; 
 int /*<<< orphan*/  FUNC1 (struct sway_output*,struct sway_view*,int /*<<< orphan*/ ,size_t*) ; 
 TYPE_6__* root ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC2 (struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wlr_output*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct wlr_output*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct wlr_surface*) ; 

__attribute__((used)) static bool FUNC7(struct sway_output *output,
		struct sway_view *view) {
	struct wlr_output *wlr_output = output->wlr_output;
	struct sway_workspace *workspace = output->current.active_workspace;
	if (!FUNC2(workspace, "Expected an active workspace")) {
		return false;
	}

	if (view->saved_buffer) {
		return false;
	}

	for (int i = 0; i < workspace->current.floating->length; ++i) {
		struct sway_container *floater =
			workspace->current.floating->items[i];
		if (FUNC0(floater, view->container)) {
			return false;
		}
	}

#if HAVE_XWAYLAND
	if (!wl_list_empty(&root->xwayland_unmanaged)) {
		return false;
	}
#endif

	if (!FUNC3(&output->layers[ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY])) {
		return false;
	}
	if (!FUNC3(&root->drag_icons)) {
		return false;
	}

	struct wlr_surface *surface = view->surface;
	if (surface == NULL) {
		return false;
	}
	size_t n_surfaces = 0;
	FUNC1(output, view,
		count_surface_iterator, &n_surfaces);
	if (n_surfaces != 1) {
		return false;
	}

	if (surface->buffer == NULL) {
		return false;
	}

	if ((float)surface->current.scale != wlr_output->scale ||
			surface->current.transform != wlr_output->transform) {
		return false;
	}

	FUNC6(server.presentation, surface);

	if (!FUNC4(wlr_output, surface->buffer)) {
		return false;
	}
	return FUNC5(wlr_output);
}