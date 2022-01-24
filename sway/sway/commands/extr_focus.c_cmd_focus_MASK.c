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
struct sway_workspace {int /*<<< orphan*/  output; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; } ;
struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_6__ {struct sway_seat* seat; struct sway_workspace* workspace; struct sway_container* container; struct sway_node* node; } ;
struct TYPE_8__ {TYPE_2__ handler_context; int /*<<< orphan*/  active; scalar_t__ reading; } ;
struct TYPE_7__ {TYPE_1__* outputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DEFER ; 
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 scalar_t__ N_CONTAINER ; 
 scalar_t__ N_WORKSPACE ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* config ; 
 scalar_t__ FUNC1 (struct sway_container*) ; 
 scalar_t__ FUNC2 (struct sway_container*) ; 
 scalar_t__ FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 struct cmd_results* FUNC5 () ; 
 struct cmd_results* FUNC6 (struct sway_workspace*,struct sway_seat*,int) ; 
 struct cmd_results* FUNC7 (struct sway_seat*,int,char**) ; 
 struct cmd_results* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sway_container*,struct sway_seat*,char*,int*) ; 
 struct sway_node* FUNC10 (struct sway_output*,int) ; 
 struct sway_node* FUNC11 (struct sway_container*,struct sway_seat*,int) ; 
 struct sway_node* FUNC12 (struct sway_container*,struct sway_seat*,int,int) ; 
 struct sway_output* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int*) ; 
 TYPE_3__* root ; 
 int /*<<< orphan*/  FUNC15 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC16 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC17 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct sway_seat*,struct sway_container*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct sway_container*,char*) ; 

struct cmd_results *FUNC22(int argc, char **argv) {
	if (config->reading || !config->active) {
		return FUNC0(CMD_DEFER, NULL);
	}
	if (!root->outputs->length) {
		return FUNC0(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}
	struct sway_node *node = config->handler_context.node;
	struct sway_container *container = config->handler_context.container;
	struct sway_workspace *workspace = config->handler_context.workspace;
	struct sway_seat *seat = config->handler_context.seat;
	if (node->type < N_WORKSPACE) {
		return FUNC0(CMD_FAILURE,
			"Command 'focus' cannot be used above the workspace level");
	}

	if (argc == 0 && container) {
		if (FUNC3(container)) {
			FUNC15(container);
		}
		FUNC18(seat, container);
		FUNC16(seat);
		FUNC4(container);
		return FUNC0(CMD_SUCCESS, NULL);
	}

	if (FUNC20(argv[0], "floating") == 0) {
		return FUNC6(workspace, seat, true);
	} else if (FUNC20(argv[0], "tiling") == 0) {
		return FUNC6(workspace, seat, false);
	} else if (FUNC20(argv[0], "mode_toggle") == 0) {
		bool floating = container && FUNC2(container);
		return FUNC6(workspace, seat, !floating);
	}

	if (FUNC20(argv[0], "output") == 0) {
		argc--; argv++;
		return FUNC7(seat, argc, argv);
	}

	if (FUNC19(argv[0], "parent") == 0) {
		return FUNC8();
	}
	if (FUNC19(argv[0], "child") == 0) {
		return FUNC5();
	}

	enum wlr_direction direction = 0;
	bool descend = true;
	if (!FUNC14(argv[0], &direction)) {
		if (!FUNC9(container, seat, argv[0], &direction)) {
			return FUNC0(CMD_INVALID,
				"Expected 'focus <direction|next|prev|parent|child|mode_toggle|floating|tiling>' "
				"or 'focus output <direction|name>'");
		} else if (argc == 2 && FUNC19(argv[1], "sibling") == 0) {
			descend = false;
		}
	}

	if (!direction) {
		return FUNC0(CMD_SUCCESS, NULL);
	}

	if (node->type == N_WORKSPACE) {
		// Jump to the next output
		struct sway_output *new_output =
			FUNC13(workspace->output, direction);
		if (!new_output) {
			return FUNC0(CMD_SUCCESS, NULL);
		}

		struct sway_node *node =
			FUNC10(new_output, direction);
		FUNC17(seat, node);
		FUNC16(seat);
		return FUNC0(CMD_SUCCESS, NULL);
	}

	if (!FUNC21(container, "Expected container to be non null")) {
		return FUNC0(CMD_FAILURE, "");
	}
	struct sway_node *next_focus = NULL;
	if (FUNC1(container)) {
		next_focus = FUNC11(container, seat, direction);
	} else {
		next_focus = FUNC12(container, seat, direction, descend);
	}
	if (next_focus) {
		FUNC17(seat, next_focus);
		FUNC16(seat);

		if (next_focus->type == N_CONTAINER) {
			FUNC4(next_focus->sway_container);
		}
	}

	return FUNC0(CMD_SUCCESS, NULL);
}