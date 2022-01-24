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
struct workspace_config {int /*<<< orphan*/  outputs; } ;
struct sway_workspace {int dummy; } ;
struct sway_seat {char* prev_workspace_name; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_seat* seat; } ;
struct TYPE_8__ {TYPE_2__ handler_context; int /*<<< orphan*/  active; scalar_t__ reading; } ;
struct TYPE_7__ {scalar_t__ fullscreen_global; TYPE_1__* outputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DEFER ; 
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct cmd_results* FUNC2 (int,char**,int) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* root ; 
 int /*<<< orphan*/  FUNC7 (struct sway_seat*) ; 
 struct sway_workspace* FUNC8 (struct sway_seat*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct sway_workspace* FUNC11 (char*) ; 
 struct sway_workspace* FUNC12 (char*) ; 
 struct workspace_config* FUNC13 (char*) ; 
 struct sway_workspace* FUNC14 (int /*<<< orphan*/ *,char*) ; 
 struct sway_workspace* FUNC15 (struct sway_workspace*,int) ; 
 struct sway_workspace* FUNC16 (struct sway_workspace*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sway_workspace*,int) ; 

struct cmd_results *FUNC18(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "workspace", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	int output_location = -1;
	int gaps_location = -1;

	for (int i = 0; i < argc; ++i) {
		if (FUNC9(argv[i], "output") == 0) {
			output_location = i;
			break;
		}
	}
	for (int i = 0; i < argc; ++i) {
		if (FUNC9(argv[i], "gaps") == 0) {
			gaps_location = i;
			break;
		}
	}
	if (output_location >= 0) {
		if ((error = FUNC0(argc, "workspace", EXPECTED_AT_LEAST,
						output_location + 2))) {
			return error;
		}
		char *ws_name = FUNC5(argv, output_location);
		struct workspace_config *wsc = FUNC13(ws_name);
		FUNC3(ws_name);
		if (!wsc) {
			return FUNC1(CMD_FAILURE,
					"Unable to allocate workspace output");
		}
		for (int i = output_location + 1; i < argc; ++i) {
			FUNC6(wsc->outputs, FUNC10(argv[i]));
		}
	} else if (gaps_location >= 0) {
		if ((error = FUNC2(argc, argv, gaps_location))) {
			return error;
		}
	} else {
		if (config->reading || !config->active) {
			return FUNC1(CMD_DEFER, NULL);
		} else if (!root->outputs->length) {
			return FUNC1(CMD_INVALID,
					"Can't run this command while there's no outputs connected.");
		}

		if (root->fullscreen_global) {
			return FUNC1(CMD_FAILURE, "workspace",
				"Can't switch workspaces while fullscreen global");
		}

		bool no_auto_back_and_forth = false;
		while (FUNC9(argv[0], "--no-auto-back-and-forth") == 0) {
			no_auto_back_and_forth = true;
			if ((error = FUNC0(--argc, "workspace", EXPECTED_AT_LEAST, 1))) {
				return error;
			}
			++argv;
		}

		bool create = argc > 1 && FUNC9(argv[1], "--create") == 0;
		struct sway_seat *seat = config->handler_context.seat;
		struct sway_workspace *current = FUNC8(seat);
		if (!current) {
			return FUNC1(CMD_FAILURE, "No workspace to switch from");
		}

		struct sway_workspace *ws = NULL;
		if (FUNC9(argv[0], "number") == 0) {
			if (argc < 2) {
				return FUNC1(CMD_INVALID,
						"Expected workspace number");
			}
			if (!FUNC4(argv[1][0])) {
				return FUNC1(CMD_INVALID,
						"Invalid workspace number '%s'", argv[1]);
			}
			if (!(ws = FUNC12(argv[1]))) {
				char *name = FUNC5(argv + 1, argc - 1);
				ws = FUNC14(NULL, name);
				FUNC3(name);
			}
		} else if (FUNC9(argv[0], "next") == 0 ||
				FUNC9(argv[0], "prev") == 0 ||
				FUNC9(argv[0], "current") == 0) {
			ws = FUNC11(argv[0]);
		} else if (FUNC9(argv[0], "next_on_output") == 0) {
			ws = FUNC15(current, create);
		} else if (FUNC9(argv[0], "prev_on_output") == 0) {
			ws = FUNC16(current, create);
		} else if (FUNC9(argv[0], "back_and_forth") == 0) {
			if (!seat->prev_workspace_name) {
				return FUNC1(CMD_INVALID,
						"There is no previous workspace");
			}
			if (!(ws = FUNC11(argv[0]))) {
				ws = FUNC14(NULL, seat->prev_workspace_name);
			}
		} else {
			char *name = FUNC5(argv, argc);
			if (!(ws = FUNC11(name))) {
				ws = FUNC14(NULL, name);
			}
			FUNC3(name);
		}
		if (!ws) {
			return FUNC1(CMD_FAILURE, "No workspace to switch to");
		}
		FUNC17(ws, no_auto_back_and_forth);
		FUNC7(seat);
	}
	return FUNC1(CMD_SUCCESS, NULL);
}