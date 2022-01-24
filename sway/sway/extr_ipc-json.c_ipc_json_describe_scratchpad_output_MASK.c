#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wlr_box {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct sway_container {TYPE_4__ node; } ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_6__ {TYPE_1__* scratchpad; } ;
struct TYPE_5__ {int length; struct sway_container** items; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  i3_output_id ; 
 int /*<<< orphan*/  i3_scratch_id ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,struct wlr_box*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* root ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct wlr_box*) ; 

__attribute__((used)) static json_object *FUNC9(void) {
	struct wlr_box box;
	FUNC8(root, &box);

	// Create focus stack for __i3_scratch workspace
	json_object *workspace_focus = FUNC4();
	for (int i = root->scratchpad->length - 1; i >= 0; --i) {
		struct sway_container *container = root->scratchpad->items[i];
		FUNC3(workspace_focus,
				FUNC5(container->node.id));
	}

	json_object *workspace = FUNC1(i3_scratch_id,
				"__i3_scratch", false, workspace_focus, &box);
	FUNC7(workspace, "type",
			FUNC6("workspace"));

	// List all hidden scratchpad containers as floating nodes
	json_object *floating_array = FUNC4();
	for (int i = 0; i < root->scratchpad->length; ++i) {
		struct sway_container *container = root->scratchpad->items[i];
		if (FUNC0(container)) {
			FUNC3(floating_array,
				FUNC2(&container->node));
		}
	}
	FUNC7(workspace, "floating_nodes", floating_array);

	// Create focus stack for __i3 output
	json_object *output_focus = FUNC4();
	FUNC3(output_focus, FUNC5(i3_scratch_id));

	json_object *output = FUNC1(i3_output_id,
					"__i3", false, output_focus, &box);
	FUNC7(output, "type",
			FUNC6("output"));
	FUNC7(output, "layout",
			FUNC6("output"));

	json_object *nodes = FUNC4();
	FUNC3(nodes, workspace);
	FUNC7(output, "nodes", nodes);

	return output;
}