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
 scalar_t__ FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int const,char const** const,int /*<<< orphan*/  const,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void
FUNC4(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
#if defined(WIN32) || defined(_WINDOWS)
	const char *arg;
	int i;

	for (i = 1; i < argc; i++) {
		arg = argv[i];
		if (MkDirs(arg, 00755) < 0) {
			perror(arg);
		}
	}
#else
	FUNC0(gUnusedArg);
	FUNC2(argc, argv, aip, "/bin/mkdir", 0);
#endif
}