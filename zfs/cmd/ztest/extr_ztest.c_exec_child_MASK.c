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
struct rlimit {int member_0; int member_1; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 scalar_t__ SIGKILL ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC15 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_dump_core ; 
 int ztest_fd_data ; 
 int /*<<< orphan*/  ztest_fd_rand ; 

__attribute__((used)) static boolean_t
FUNC20(char *cmd, char *libpath, boolean_t ignorekill, int *statusp)
{
	pid_t pid;
	int status;
	char *cmdbuf = NULL;

	pid = FUNC10();

	if (cmd == NULL) {
		cmdbuf = FUNC17(MAXPATHLEN, UMEM_NOFAIL);
		(void) FUNC16(cmdbuf, FUNC12(), MAXPATHLEN);
		cmd = cmdbuf;
	}

	if (pid == -1)
		FUNC9(1, "fork failed");

	if (pid == 0) {	/* child */
		char *emptyargv[2] = { cmd, NULL };
		char fd_data_str[12];

		struct rlimit rl = { 1024, 1024 };
		(void) FUNC14(RLIMIT_NOFILE, &rl);

		(void) FUNC5(ztest_fd_rand);
		FUNC0(11 >= FUNC15(fd_data_str, 12, "%d", ztest_fd_data));
		FUNC0(0 == FUNC13("ZTEST_FD_DATA", fd_data_str, 1));

		(void) FUNC6(-1, -1);
		if (libpath != NULL)
			FUNC0(0 == FUNC13("LD_LIBRARY_PATH", libpath, 1));
		(void) FUNC7(cmd, emptyargv);
		ztest_dump_core = B_FALSE;
		FUNC9(B_TRUE, "exec failed: %s", cmd);
	}

	if (cmdbuf != NULL) {
		FUNC18(cmdbuf, MAXPATHLEN);
		cmd = NULL;
	}

	while (FUNC19(pid, &status, 0) != pid)
		continue;
	if (statusp != NULL)
		*statusp = status;

	if (FUNC2(status)) {
		if (FUNC1(status) != 0) {
			(void) FUNC11(stderr, "child exited with code %d\n",
			    FUNC1(status));
			FUNC8(2);
		}
		return (B_FALSE);
	} else if (FUNC3(status)) {
		if (!ignorekill || FUNC4(status) != SIGKILL) {
			(void) FUNC11(stderr, "child died with signal %d\n",
			    FUNC4(status));
			FUNC8(3);
		}
		return (B_TRUE);
	} else {
		(void) FUNC11(stderr, "something strange happened to child\n");
		FUNC8(4);
		/* NOTREACHED */
	}
}