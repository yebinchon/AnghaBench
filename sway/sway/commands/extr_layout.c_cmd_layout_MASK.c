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
struct sway_workspace {int layout; int prev_split_layout; int /*<<< orphan*/  output; } ;
struct sway_container {int layout; int prev_split_layout; TYPE_3__* workspace; struct sway_container* parent; } ;
struct cmd_results {int dummy; } ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_7__ {struct sway_workspace* workspace; struct sway_container* container; } ;
struct TYPE_10__ {TYPE_2__ handler_context; } ;
struct TYPE_9__ {scalar_t__ fullscreen_global; TYPE_1__* outputs; } ;
struct TYPE_8__ {int /*<<< orphan*/  output; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int L_NONE ; 
 int L_STACKED ; 
 int L_TABBED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sway_workspace*) ; 
 struct cmd_results* FUNC2 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* config ; 
 scalar_t__ FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*) ; 
 char* expected_syntax ; 
 int FUNC6 (int,char**,int,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* root ; 
 int /*<<< orphan*/  FUNC7 (struct sway_workspace*) ; 

struct cmd_results *FUNC8(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC2(argc, "layout", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	if (!root->outputs->length) {
		return FUNC3(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}
	struct sway_container *container = config->handler_context.container;
	struct sway_workspace *workspace = config->handler_context.workspace;

	if (container && FUNC4(container)) {
		return FUNC3(CMD_FAILURE,
				"Unable to change layout of floating windows");
	}

	// Operate on parent container, like i3.
	if (container) {
		container = container->parent;
	}

	// We could be working with a container OR a workspace. These are different
	// structures, so we set up pointers to they layouts so we can refer them in
	// an abstract way.
	enum sway_container_layout new_layout = L_NONE;
	enum sway_container_layout old_layout = L_NONE;
	if (container) {
		old_layout = container->layout;
		new_layout = FUNC6(argc, argv,
				container->layout, container->prev_split_layout,
				container->workspace->output);
	} else {
		old_layout = workspace->layout;
		new_layout = FUNC6(argc, argv,
				workspace->layout, workspace->prev_split_layout,
				workspace->output);
	}
	if (new_layout == L_NONE) {
		return FUNC3(CMD_INVALID, expected_syntax);
	}
	if (new_layout != old_layout) {
		if (container) {
			if (old_layout != L_TABBED && old_layout != L_STACKED) {
				container->prev_split_layout = old_layout;
			}
			container->layout = new_layout;
			FUNC5(container);
		} else {
			if (old_layout != L_TABBED && old_layout != L_STACKED) {
				workspace->prev_split_layout = old_layout;
			}
			workspace->layout = new_layout;
			FUNC7(workspace);
		}
		if (root->fullscreen_global) {
			FUNC0();
		} else {
			FUNC1(workspace);
		}
	}

	return FUNC3(CMD_SUCCESS, NULL);
}