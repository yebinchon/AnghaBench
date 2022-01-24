#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct cmd_results {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {scalar_t__ validating; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DEFER ; 
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct cmd_results* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,void*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char**,int) ; 
 scalar_t__ FUNC8 (int*) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (int,int /*<<< orphan*/ *,int) ; 

struct cmd_results *FUNC21(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if (!config->active || config->validating) {
		return FUNC3(CMD_DEFER, NULL);
	}
	if ((error = FUNC1(argc, argv[-1], EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	char *tmp = NULL;
	if (FUNC14(argv[0], "--no-startup-id") == 0) {
		FUNC18(SWAY_INFO, "exec switch '--no-startup-id' not supported, ignored.");
		--argc; ++argv;
		if ((error = FUNC1(argc, argv[-1], EXPECTED_AT_LEAST, 1))) {
			return error;
		}
	}

	if (argc == 1 && (argv[0][0] == '\'' || argv[0][0] == '"')) {
		tmp = FUNC15(argv[0]);
		FUNC16(tmp);
	} else {
		tmp = FUNC7(argv, argc);
	}

	// Put argument into cmd array
	char cmd[4096];
	FUNC17(cmd, tmp, sizeof(cmd) - 1);
	cmd[sizeof(cmd) - 1] = 0;
	FUNC6(tmp);
	FUNC18(SWAY_DEBUG, "Executing %s", cmd);

	int fd[2];
	if (FUNC8(fd) != 0) {
		FUNC18(SWAY_ERROR, "Unable to create pipe for fork");
	}

	pid_t pid, child;
	// Fork process
	if ((pid = FUNC5()) == 0) {
		// Fork child process again
		FUNC11();
		sigset_t set;
		FUNC12(&set);
		FUNC13(SIG_SETMASK, &set, NULL);
		FUNC2(fd[0]);
		if ((child = FUNC5()) == 0) {
			FUNC2(fd[1]);
			FUNC4("/bin/sh", "/bin/sh", "-c", cmd, (void *)NULL);
			FUNC0(0);
		}
		ssize_t s = 0;
		while ((size_t)s < sizeof(pid_t)) {
			s += FUNC20(fd[1], ((uint8_t *)&child) + s, sizeof(pid_t) - s);
		}
		FUNC2(fd[1]);
		FUNC0(0); // Close child process
	} else if (pid < 0) {
		FUNC2(fd[0]);
		FUNC2(fd[1]);
		return FUNC3(CMD_FAILURE, "fork() failed");
	}
	FUNC2(fd[1]); // close write
	ssize_t s = 0;
	while ((size_t)s < sizeof(pid_t)) {
		s += FUNC9(fd[0], ((uint8_t *)&child) + s, sizeof(pid_t) - s);
	}
	FUNC2(fd[0]);
	// cleanup child process
	FUNC19(pid, NULL, 0);
	if (child > 0) {
		FUNC18(SWAY_DEBUG, "Child process created with pid %d", child);
		FUNC10(child);
	} else {
		return FUNC3(CMD_FAILURE, "Second fork() failed");
	}

	return FUNC3(CMD_SUCCESS, NULL);
}