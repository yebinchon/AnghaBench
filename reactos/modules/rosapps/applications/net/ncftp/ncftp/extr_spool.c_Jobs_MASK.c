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
 int /*<<< orphan*/  BINDIR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC11(void)
{
#if defined(WIN32) || defined(_WINDOWS)
	assert(0); // Not supported
#else
	char *argv[8];
	pid_t pid;
#ifdef BINDIR
	char ncftpbatch[256];

	STRNCPY(ncftpbatch, BINDIR);
	STRNCAT(ncftpbatch, "/");
	STRNCAT(ncftpbatch, "ncftpbatch");
#endif	/* BINDIR */

	pid = FUNC6();
	if (pid < 0) {
		FUNC8("fork");
	} else if (pid == 0) {
		argv[0] = (char *) "ncftpbatch";
		argv[1] = (char *) "-l";
		argv[2] = NULL;

#ifdef BINDIR
		(void) execv(ncftpbatch, argv);
		(void) fprintf(stderr, "Could not run %s.  Is it in installed as %s?\n", argv[0], ncftpbatch);
#else	/* BINDIR */
		(void) FUNC4(argv[0], argv);
		(void) FUNC7(stderr, "Could not run %s.  Is it in your $PATH?\n", argv[0]);
#endif	/* BINDIR */
		FUNC8(argv[0]);
		FUNC5(1);
	} else {
#ifdef HAVE_WAITPID
		(void) waitpid(pid, NULL, 0);
#else
		(void) FUNC9(NULL);
#endif
	}
#endif
}