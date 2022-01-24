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
typedef  char xcb_window_t ;
struct sway_node {int dummy; } ;
struct sway_container {int /*<<< orphan*/  node; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_container* container; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {scalar_t__ fullscreen_global; TYPE_1__* outputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  FUNC0 (struct sway_node*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (char*) ; 
 struct cmd_results* FUNC3 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_4__* config ; 
 scalar_t__ FUNC5 (struct sway_container*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,struct sway_container*) ; 
 char* expected_syntax ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char**,int) ; 
 struct sway_node* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* root ; 
 struct sway_container* FUNC10 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_con_id ; 
 int /*<<< orphan*/  test_id ; 
 int /*<<< orphan*/  test_mark ; 

struct cmd_results *FUNC13(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC3(argc, "swap", EXPECTED_AT_LEAST, 4))) {
		return error;
	}
	if (!root->outputs->length) {
		return FUNC4(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}

	if (FUNC11(argv[0], "container") || FUNC11(argv[1], "with")) {
		return FUNC4(CMD_INVALID, expected_syntax);
	}

	struct sway_container *current = config->handler_context.container;
	struct sway_container *other = NULL;

	char *value = FUNC8(argv + 3, argc - 3);
	if (FUNC11(argv[2], "id") == 0) {
#if HAVE_XWAYLAND
		xcb_window_t id = strtol(value, NULL, 0);
		other = root_find_container(test_id, &id);
#endif
	} else if (FUNC11(argv[2], "con_id") == 0) {
		size_t con_id = FUNC2(value);
		other = FUNC10(test_con_id, &con_id);
	} else if (FUNC11(argv[2], "mark") == 0) {
		other = FUNC10(test_mark, value);
	} else {
		FUNC7(value);
		return FUNC4(CMD_INVALID, expected_syntax);
	}

	if (!other) {
		error = FUNC4(CMD_FAILURE,
				"Failed to find %s '%s'", argv[2], value);
	} else if (!current) {
		error = FUNC4(CMD_FAILURE,
				"Can only swap with containers and views");
	} else if (FUNC5(current, other)
			|| FUNC5(other, current)) {
		error = FUNC4(CMD_FAILURE,
				"Cannot swap ancestor and descendant");
	}

	FUNC7(value);

	if (error) {
		return error;
	}

	FUNC6(current, other);

	if (root->fullscreen_global) {
		FUNC1();
	} else {
		struct sway_node *current_parent = FUNC9(&current->node);
		struct sway_node *other_parent = FUNC9(&other->node);
		if (current_parent) {
			FUNC0(current_parent);
		}
		if (other_parent && current_parent != other_parent) {
			FUNC0(other_parent);
		}
	}

	return FUNC4(CMD_SUCCESS, NULL);
}