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
struct sway_workspace {int /*<<< orphan*/  layout; TYPE_1__* tiling; } ;
struct sway_node {scalar_t__ type; } ;
struct sway_container {scalar_t__ workspace; int /*<<< orphan*/  scratchpad; struct sway_container* parent; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {struct sway_workspace* workspace; struct sway_container* container; struct sway_node* node; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;
struct TYPE_4__ {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  L_HORIZ ; 
 scalar_t__ N_WORKSPACE ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 scalar_t__ FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 struct sway_container* FUNC4 (struct sway_workspace*) ; 

__attribute__((used)) static struct cmd_results *FUNC5(void) {
	struct sway_node *node = config->handler_context.node;
	struct sway_container *con = config->handler_context.container;
	struct sway_workspace *ws = config->handler_context.workspace;
	if (node->type == N_WORKSPACE && ws->tiling->length == 0) {
		return FUNC0(CMD_INVALID,
				"Can't move an empty workspace to the scratchpad");
	}
	if (node->type == N_WORKSPACE) {
		// Wrap the workspace's children in a container
		con = FUNC4(ws);
		ws->layout = L_HORIZ;
	}

	// If the container is in a floating split container,
	// operate on the split container instead of the child.
	if (FUNC1(con)) {
		while (con->parent) {
			con = con->parent;
		}
	}

	if (!con->scratchpad) {
		FUNC2(con, NULL);
	} else if (con->workspace) {
		FUNC3(con);
	}
	return FUNC0(CMD_SUCCESS, NULL);
}