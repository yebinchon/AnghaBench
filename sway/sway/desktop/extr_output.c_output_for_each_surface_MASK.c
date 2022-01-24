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
typedef  int /*<<< orphan*/  sway_surface_iterator_func_t ;
struct TYPE_5__ {TYPE_1__* floating; struct sway_container* fullscreen; } ;
struct sway_workspace {TYPE_2__ current; } ;
struct sway_output {int /*<<< orphan*/ * layers; } ;
struct sway_container {int dummy; } ;
struct surface_iterator_data {void* user_data; struct sway_output* output; int /*<<< orphan*/  user_iterator; } ;
struct TYPE_6__ {int /*<<< orphan*/  drag_icons; int /*<<< orphan*/  xwayland_unmanaged; struct sway_container* fullscreen_global; } ;
struct TYPE_4__ {int length; struct sway_container** items; } ;

/* Variables and functions */
 size_t ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND ; 
 size_t ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM ; 
 size_t ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY ; 
 size_t ZWLR_LAYER_SHELL_V1_LAYER_TOP ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,int /*<<< orphan*/  (*) (struct sway_container*,struct surface_iterator_data*),struct surface_iterator_data*) ; 
 scalar_t__ FUNC1 (struct sway_container*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,struct surface_iterator_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_output*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 struct sway_workspace* FUNC4 (struct sway_output*) ; 
 scalar_t__ FUNC5 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_output*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_output*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 TYPE_3__* root ; 
 int /*<<< orphan*/  FUNC8 (struct sway_workspace*,int /*<<< orphan*/  (*) (struct sway_container*,struct surface_iterator_data*),struct surface_iterator_data*) ; 

__attribute__((used)) static void FUNC9(struct sway_output *output,
		sway_surface_iterator_func_t iterator, void *user_data) {
	if (FUNC5(output)) {
		goto overlay;
	}

	struct surface_iterator_data data = {
		.user_iterator = iterator,
		.user_data = user_data,
		.output = output,
	};

	struct sway_workspace *workspace = FUNC4(output);
	struct sway_container *fullscreen_con = root->fullscreen_global;
	if (!fullscreen_con) {
		if (!workspace) {
			return;
		}
		fullscreen_con = workspace->current.fullscreen;
	}
	if (fullscreen_con) {
		FUNC2(fullscreen_con, &data);
		FUNC0(fullscreen_con,
			for_each_surface_container_iterator, &data);

		// TODO: Show transient containers for fullscreen global
		if (fullscreen_con == workspace->current.fullscreen) {
			for (int i = 0; i < workspace->current.floating->length; ++i) {
				struct sway_container *floater =
					workspace->current.floating->items[i];
				if (FUNC1(floater, fullscreen_con)) {
					FUNC2(floater, &data);
				}
			}
		}
#if HAVE_XWAYLAND
		output_unmanaged_for_each_surface(output, &root->xwayland_unmanaged,
			iterator, user_data);
#endif
	} else {
		FUNC6(output,
			&output->layers[ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND],
			iterator, user_data);
		FUNC6(output,
			&output->layers[ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM],
			iterator, user_data);

		FUNC8(workspace,
			for_each_surface_container_iterator, &data);

#if HAVE_XWAYLAND
		output_unmanaged_for_each_surface(output, &root->xwayland_unmanaged,
			iterator, user_data);
#endif
		FUNC6(output,
			&output->layers[ZWLR_LAYER_SHELL_V1_LAYER_TOP],
			iterator, user_data);
	}

overlay:
	FUNC6(output,
		&output->layers[ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY],
		iterator, user_data);
	FUNC3(output, &root->drag_icons,
		iterator, user_data);
}