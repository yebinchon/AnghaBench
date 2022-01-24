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
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  gConn ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int i, n;

	FUNC0(gUnusedArg);
	if (FUNC2() < 0)
		return;

	if ((argc < 2) || ((n = FUNC3(argv[1])) < 2)) {
		FUNC1(0, &gConn);
		(void) FUNC4("Background process started.\n");
#if defined(WIN32) || defined(_WINDOWS)
#else
		(void) FUNC4("Watch the \"%s/batchlog\" file to see how it is progressing.\n", gOurDirectoryPath);
#endif
	} else {
		for (i=0; i<n; i++)
			FUNC1(0, &gConn);
		(void) FUNC4("Background processes started.\n");
#if defined(WIN32) || defined(_WINDOWS)
#else
		(void) FUNC4("Watch the \"%s/batchlog\" file to see how it is progressing.\n", gOurDirectoryPath);
#endif
	}
}