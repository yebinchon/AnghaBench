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
typedef  int /*<<< orphan*/  vsigproc_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FTPSigProc ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ SIG_IGN ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 char* gShell ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (int*) ; 
 scalar_t__ FUNC11 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

void
FUNC12(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
#if defined(WIN32) || defined(_WINDOWS)
#else
	const char *cp;
	pid_t pid;
	int status;
	vsigproc_t osigint;

	osigint = FUNC1(SIGINT, (FTPSigProc) SIG_IGN);
	FUNC0(gUnusedArg);
	pid = FUNC7();
	if (pid < (pid_t) 0) {
		FUNC8("fork");
	} else if (pid == 0) {
		cp = FUNC9(gShell, '/');
		if (cp == NULL)
			cp = gShell;	/* bug */
		else
			cp++;
		if (argc == 1) {
			FUNC4(gShell, cp, NULL);
			FUNC8(gShell);
			FUNC6(1);
		} else {
			FUNC5(argv[1], (char **) argv + 1);
			FUNC8(gShell);
			FUNC6(1);
		}
	} else {
		/* parent */
		for (;;) {
#ifdef HAVE_WAITPID
			if ((waitpid(pid, &status, 0) < 0) && (errno != EINTR))
				break;
#else
			if ((FUNC10(&status) < 0) && (errno != EINTR))
				break;
#endif
			if (FUNC2(status) || FUNC3(status))
				break;		/* done */
		}
	}
	(void) FUNC1(SIGINT, osigint);
#endif
}