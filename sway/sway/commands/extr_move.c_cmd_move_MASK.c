#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* outputs; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  WLR_DIRECTION_DOWN ; 
 int /*<<< orphan*/  WLR_DIRECTION_LEFT ; 
 int /*<<< orphan*/  WLR_DIRECTION_RIGHT ; 
 int /*<<< orphan*/  WLR_DIRECTION_UP ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int,int,char**) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,int,char**) ; 
 struct cmd_results* FUNC3 (int,char**) ; 
 struct cmd_results* FUNC4 () ; 
 struct cmd_results* FUNC5 (int,char**) ; 
 struct cmd_results* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* expected_full_syntax ; 
 TYPE_2__* root ; 
 scalar_t__ FUNC7 (char*,char*) ; 

struct cmd_results *FUNC8(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "move", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	if (!root->outputs->length) {
		return FUNC6(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}

	if (FUNC7(argv[0], "left") == 0) {
		return FUNC2(WLR_DIRECTION_LEFT, --argc, ++argv);
	} else if (FUNC7(argv[0], "right") == 0) {
		return FUNC2(WLR_DIRECTION_RIGHT, --argc, ++argv);
	} else if (FUNC7(argv[0], "up") == 0) {
		return FUNC2(WLR_DIRECTION_UP, --argc, ++argv);
	} else if (FUNC7(argv[0], "down") == 0) {
		return FUNC2(WLR_DIRECTION_DOWN, --argc, ++argv);
	} else if (FUNC7(argv[0], "workspace") == 0 && argc >= 2
			&& (FUNC7(argv[1], "to") == 0 ||
				FUNC7(argv[1], "output") == 0)) {
		argc -= 2; argv += 2;
		return FUNC5(argc, argv);
	}

	bool no_auto_back_and_forth = false;
	if (FUNC7(argv[0], "--no-auto-back-and-forth") == 0) {
		no_auto_back_and_forth = true;
		--argc; ++argv;
	}

	if (FUNC7(argv[0], "window") == 0 ||
			FUNC7(argv[0], "container") == 0) {
		--argc; ++argv;
	}

	if (FUNC7(argv[0], "to") == 0) {
		--argc; ++argv;
	}

	if (!argc) {
		return FUNC6(CMD_INVALID, expected_full_syntax);
	}

	// Only `move [window|container] [to] workspace` supports
	// `--no-auto-back-and-forth` so treat others as invalid syntax
	if (no_auto_back_and_forth && FUNC7(argv[0], "workspace") != 0) {
		return FUNC6(CMD_INVALID, expected_full_syntax);
	}

	if (FUNC7(argv[0], "workspace") == 0 ||
			FUNC7(argv[0], "output") == 0 ||
			FUNC7(argv[0], "mark") == 0) {
		return FUNC1(no_auto_back_and_forth, argc, argv);
	} else if (FUNC7(argv[0], "scratchpad") == 0) {
		return FUNC4();
	} else if (FUNC7(argv[0], "position") == 0 ||
			(argc > 1 && FUNC7(argv[0], "absolute") == 0 &&
			FUNC7(argv[1], "position") == 0)) {
		return FUNC3(argc, argv);
	}
	return FUNC6(CMD_INVALID, expected_full_syntax);
}