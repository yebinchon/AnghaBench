#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sway_workspace {int /*<<< orphan*/  layout; TYPE_2__* tiling; } ;
struct sway_container {scalar_t__ workspace; struct sway_container* parent; } ;
struct cmd_results {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  seat; struct sway_workspace* workspace; struct sway_container* container; } ;
struct TYPE_10__ {TYPE_3__ handler_context; } ;
struct TYPE_9__ {TYPE_1__* outputs; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  L_HORIZ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* config ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 scalar_t__ FUNC4 (struct sway_container*) ; 
 scalar_t__ FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* root ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sway_container*) ; 
 struct sway_container* FUNC9 (struct sway_workspace*) ; 

struct cmd_results *FUNC10(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC1(argc, "floating", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	if (!root->outputs->length) {
		return FUNC2(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}
	struct sway_container *container = config->handler_context.container;
	struct sway_workspace *workspace = config->handler_context.workspace;
	if (!container && workspace->tiling->length == 0) {
		return FUNC2(CMD_INVALID, "Can't float an empty workspace");
	}
	if (!container) {
		// Wrap the workspace's children in a container so we can float it
		container = FUNC9(workspace);
		workspace->layout = L_HORIZ;
		FUNC8(config->handler_context.seat, container);
	}

	if (FUNC5(container)) {
		return FUNC2(CMD_INVALID,
				"Can't change floating on hidden scratchpad container");
	}

	// If the container is in a floating split container,
	// operate on the split container instead of the child.
	if (FUNC4(container)) {
		while (container->parent) {
			container = container->parent;
		}
	}

	bool wants_floating =
		FUNC7(argv[0], FUNC3(container));

	FUNC6(container, wants_floating);

	// Floating containers in the scratchpad should be ignored
	if (container->workspace) {
		FUNC0(container->workspace);
	}

	return FUNC2(CMD_SUCCESS, NULL);
}