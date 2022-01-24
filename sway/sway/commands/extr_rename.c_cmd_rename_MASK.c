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
struct sway_workspace {char* name; int /*<<< orphan*/  output; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_workspace* workspace; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {TYPE_1__* outputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_4__* config ; 
 char* expected_syntax ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* root ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 struct sway_workspace* FUNC10 (char*) ; 
 struct sway_workspace* FUNC11 (char*) ; 

struct cmd_results *FUNC12(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "rename", EXPECTED_AT_LEAST, 3))) {
		return error;
	}
	if (!root->outputs->length) {
		return FUNC1(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}
	if (FUNC8(argv[0], "workspace") != 0) {
		return FUNC1(CMD_INVALID, expected_syntax);
	}

	int argn = 1;
	struct sway_workspace *workspace = NULL;

	if (FUNC8(argv[1], "to") == 0) {
		// 'rename workspace to new_name'
		workspace = config->handler_context.workspace;
	} else if (FUNC8(argv[1], "number") == 0) {
		// 'rename workspace number x to new_name'
		if (!FUNC4(argv[2][0])) {
			return FUNC1(CMD_INVALID,
					"Invalid workspace number '%s'", argv[2]);
		}
		workspace = FUNC11(argv[2]);
		while (argn < argc && FUNC8(argv[argn], "to") != 0) {
			++argn;
		}
	} else {
		// 'rename workspace old_name to new_name'
		int end = argn;
		while (end < argc && FUNC8(argv[end], "to") != 0) {
			++end;
		}
		char *old_name = FUNC5(argv + argn, end - argn);
		workspace = FUNC10(old_name);
		FUNC2(old_name);
		argn = end;
	}

	if (!workspace) {
		return FUNC1(CMD_INVALID,
				"There is no workspace with that name");
	}

	++argn; // move past "to"

	if (argn >= argc) {
		return FUNC1(CMD_INVALID, expected_syntax);
	}

	char *new_name = FUNC5(argv + argn, argc - argn);
	if (FUNC8(new_name, "next") == 0 ||
			FUNC8(new_name, "prev") == 0 ||
			FUNC8(new_name, "next_on_output") == 0 ||
			FUNC8(new_name, "prev_on_output") == 0 ||
			FUNC8(new_name, "back_and_forth") == 0 ||
			FUNC8(new_name, "current") == 0 ||
			FUNC8(new_name, "number") == 0) {
		FUNC2(new_name);
		return FUNC1(CMD_INVALID,
				"Cannot use special workspace name '%s'", argv[argn]);
	}
	struct sway_workspace *tmp_workspace = FUNC10(new_name);
	if (tmp_workspace) {
		FUNC2(new_name);
		if (tmp_workspace == workspace) {
			return FUNC1(CMD_SUCCESS, NULL);
		} else {
			return FUNC1(CMD_INVALID, "Workspace already exists");
		}
	}

	FUNC9(SWAY_DEBUG, "renaming workspace '%s' to '%s'", workspace->name, new_name);

	FUNC7(workspace->name, new_name);

	FUNC2(workspace->name);
	workspace->name = new_name;

	FUNC6(workspace->output);
	FUNC3(NULL, workspace, "rename");

	return FUNC1(CMD_SUCCESS, NULL);
}