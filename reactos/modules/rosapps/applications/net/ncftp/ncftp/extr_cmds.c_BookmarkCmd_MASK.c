#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* bookmarkName; } ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ gBm ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	/* The only reason we do this is to get gcc/lint to shut up
	 * about unused parameters.
	 */
	FUNC0(gUnusedArg);

	if (gOurDirectoryPath[0] == '\0') {
		(void) FUNC4("Sorry, configuration information is not saved for this user.\n");
	} else if ((argc <= 1) || (argv[1][0] == '\0')) {
		/* No name specified on the command line. */
		if (gBm.bookmarkName[0] == '\0') {
			/* Not previously bookmarked. */
			if (FUNC1(&gBm) < 0) {
				(void) FUNC4("Nevermind.\n");
			} else {
				FUNC3();
			}
		} else {
			/* User wants to update an existing bookmark. */
			FUNC3();
		}
	} else {
		(void) FUNC2(gBm.bookmarkName, argv[1]);
		FUNC3();
	}
}