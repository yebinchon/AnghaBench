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
typedef  int /*<<< orphan*/  bm ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	const char *av[3];
	char bm[128];

	FUNC0(gUnusedArg);
	/* Skip visual mode if "-l". */
	if ((argc == 1) && (FUNC3(bm, sizeof(bm)) == 0)) {
		if (bm[0] != '\0') {
			av[0] = "open";
			av[1] = bm;
			av[2] = NULL;
			FUNC1(2, av, (CommandPtr) 0, (ArgvInfoPtr) 0);
		}
		return;
	}
	if (FUNC2() <= 0) {
		(void) FUNC4("You haven't bookmarked any FTP sites.\n");
		(void) FUNC4("Before closing a site, you can use the \"bookmark\" command to save the current\nhost and directory for next time.\n");
	} else {
		(void) FUNC4("\nTo use a bookmark, use the \"open\" command with the name of the bookmark.\n");
	}
}