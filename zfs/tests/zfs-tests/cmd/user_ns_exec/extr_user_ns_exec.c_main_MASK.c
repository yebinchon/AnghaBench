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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (int,char*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char*,int) ; 

int
FUNC13(int argc, char *argv[])
{
	char sync_buf;
	int result, wstatus;
	int syncfd[2];
	pid_t child;

	if (argc < 2 || FUNC10(argv[1]) == 0) {
		(void) FUNC6("\tUsage: %s <commands> ...\n", argv[0]);
		return (1);
	}

	if (FUNC9(AF_UNIX, SOCK_STREAM, 0, syncfd) != 0) {
		FUNC5("socketpair");
		return (1);
	}

	child = FUNC3();
	if (child == (pid_t)-1) {
		FUNC5("fork");
		return (1);
	}

	if (child == 0) {
		FUNC2(syncfd[0]);
		return (FUNC1(argc, argv, syncfd[1]));
	}

	FUNC2(syncfd[1]);

	result = 0;
	/* wait for the child to have unshared its namespaces */
	if (FUNC7(syncfd[0], &sync_buf, 1) != 1) {
		FUNC5("read");
		FUNC4(child, SIGKILL);
		result = 1;
		goto reap;
	}

	/* write uid mapping */
	if (FUNC8(child, "uid_map") != 0 ||
	    FUNC8(child, "gid_map") != 0) {
		result = 1;
		FUNC4(child, SIGKILL);
		goto reap;
	}

	/* tell the child to proceed */
	if (FUNC12(syncfd[0], "1", 1) != 1) {
		FUNC5("write");
		FUNC4(child, SIGKILL);
		result = 1;
		goto reap;
	}
	FUNC2(syncfd[0]);

reap:
	while (FUNC11(child, &wstatus, 0) != child)
		FUNC4(child, SIGKILL);
	if (result == 0)
		result = FUNC0(wstatus);

	return (result);
}