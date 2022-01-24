#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmd_results {int dummy; } ;
struct cmd_handler {struct cmd_results* (* handle ) (int,char**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_BLOCK ; 
 int /*<<< orphan*/  CMD_BLOCK_END ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 char* FUNC0 (int,scalar_t__) ; 
 struct cmd_results* FUNC1 (int,char**) ; 
 struct cmd_results* FUNC2 (int,char**) ; 
 struct cmd_results* FUNC3 (int,char**) ; 
 struct cmd_results* FUNC4 (int,char**) ; 
 struct cmd_results* FUNC5 (int,char**) ; 
 struct cmd_results* FUNC6 (int,char**) ; 
 struct cmd_results* FUNC7 (int,char**) ; 
 struct cmd_results* FUNC8 (int /*<<< orphan*/ ,char const*,...) ; 
 struct cmd_results* FUNC9 (int,char**) ; 
 char* FUNC10 (char*) ; 
 struct cmd_handler* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int,char**) ; 
 char* FUNC14 (char**,int) ; 
 char** FUNC15 (char*,int*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*) ; 
 struct cmd_results* FUNC20 (int,char**) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

struct cmd_results *FUNC23(char *exec, char **new_block) {
	struct cmd_results *results = NULL;
	int argc;
	char **argv = FUNC15(exec, &argc);

	// Check for empty lines
	if (!argc) {
		results = FUNC8(CMD_SUCCESS, NULL);
		goto cleanup;
	}

	// Check for the start of a block
	if (argc > 1 && FUNC16(argv[argc - 1], "{") == 0) {
		*new_block = FUNC14(argv, argc - 1);
		results = FUNC8(CMD_BLOCK, NULL);
		goto cleanup;
	}

	// Check for the end of a block
	if (FUNC16(argv[argc - 1], "}") == 0) {
		results = FUNC8(CMD_BLOCK_END, NULL);
		goto cleanup;
	}

	// Make sure the command is not stored in a variable
	if (*argv[0] == '$') {
		argv[0] = FUNC10(argv[0]);
		char *temp = FUNC14(argv, argc);
		FUNC13(argc, argv);
		argv = FUNC15(temp, &argc);
		FUNC12(temp);
		if (!argc) {
			results = FUNC8(CMD_SUCCESS, NULL);
			goto cleanup;
		}
	}

	// Determine the command handler
	FUNC21(SWAY_INFO, "Config command: %s", exec);
	struct cmd_handler *handler = FUNC11(argv[0]);
	if (!handler || !handler->handle) {
		const char *error = handler
			? "Command '%s' is shimmed, but unimplemented"
			: "Unknown/invalid command '%s'";
		results = FUNC8(CMD_INVALID, error, argv[0]);
		goto cleanup;
	}

	// Do variable replacement
	if (handler->handle == cmd_set && argc > 1 && *argv[1] == '$') {
		// Escape the variable name so it does not get replaced by one shorter
		char *temp = FUNC0(1, FUNC19(argv[1]) + 2);
		temp[0] = '$';
		FUNC17(&temp[1], argv[1]);
		FUNC12(argv[1]);
		argv[1] = temp;
	}
	char *command = FUNC10(FUNC14(argv, argc));
	FUNC21(SWAY_INFO, "After replacement: %s", command);
	FUNC13(argc, argv);
	argv = FUNC15(command, &argc);
	FUNC12(command);

	// Strip quotes and unescape the string
	for (int i = handler->handle == cmd_set ? 2 : 1; i < argc; ++i) {
		if (handler->handle != cmd_exec && handler->handle != cmd_exec_always
				&& handler->handle != cmd_mode
				&& handler->handle != cmd_bindsym
				&& handler->handle != cmd_bindcode
				&& handler->handle != cmd_bindswitch
				&& handler->handle != cmd_set
				&& handler->handle != cmd_for_window
				&& (*argv[i] == '\"' || *argv[i] == '\'')) {
			FUNC18(argv[i]);
		}
		FUNC22(argv[i]);
	}

	// Run command
	results = handler->handle(argc - 1, argv + 1);

cleanup:
	FUNC13(argc, argv);
	return results;
}