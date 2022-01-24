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
struct TYPE_8__ {int /*<<< orphan*/  notify; } ;
struct TYPE_5__ {int /*<<< orphan*/  new_node; } ;
struct sway_root {TYPE_4__ output_layout_change; TYPE_3__* output_layout; void* scratchpad; void* outputs; TYPE_1__ events; int /*<<< orphan*/  drag_icons; int /*<<< orphan*/  xwayland_unmanaged; int /*<<< orphan*/  all_outputs; int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int /*<<< orphan*/  change; } ;
struct TYPE_7__ {TYPE_2__ events; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_ROOT ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct sway_root* FUNC0 (int,int) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sway_root*) ; 
 int /*<<< orphan*/  output_layout_handle_change ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 () ; 

struct sway_root *FUNC8(void) {
	struct sway_root *root = FUNC0(1, sizeof(struct sway_root));
	if (!root) {
		FUNC3(SWAY_ERROR, "Unable to allocate sway_root");
		return NULL;
	}
	FUNC2(&root->node, N_ROOT, root);
	root->output_layout = FUNC7();
	FUNC4(&root->all_outputs);
#if HAVE_XWAYLAND
	wl_list_init(&root->xwayland_unmanaged);
#endif
	FUNC4(&root->drag_icons);
	FUNC6(&root->events.new_node);
	root->outputs = FUNC1();
	root->scratchpad = FUNC1();

	root->output_layout_change.notify = output_layout_handle_change;
	FUNC5(&root->output_layout->events.change,
		&root->output_layout_change);
	return root;
}