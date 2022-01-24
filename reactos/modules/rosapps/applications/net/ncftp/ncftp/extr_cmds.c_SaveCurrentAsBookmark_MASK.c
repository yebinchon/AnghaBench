#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ans ;
struct TYPE_4__ {char* pass; char* bookmarkName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ gBm ; 
 int gLoadedBm ; 
 int gSavePasswords ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

void
FUNC9(void)
{
	int saveBm;
	char ans[64];

	/* gBm.bookmarkName must already be set. */
	FUNC0(&gBm);

	saveBm = gSavePasswords;
	if (gLoadedBm != 0)
		saveBm = 1;
	if ((saveBm < 0) && (gBm.pass[0] != '\0')) {
		(void) FUNC8("\n\nYou logged into this site using a password.\nWould you like to save the password with this bookmark?\n\n");
		(void) FUNC8("Save? [no] ");
		(void) FUNC7(ans, 0, sizeof(ans));
		FUNC4(stdin);
		(void) FUNC5(ans, sizeof(ans) - 1, stdin);
		if ((saveBm = FUNC3(ans)) == 0) {
			(void) FUNC8("\nNot saving the password.\n");
		}
	}
	if (FUNC1(&gBm, saveBm) < 0) {
		(void) FUNC6(stderr, "Could not save bookmark.\n");
	} else {
		/* Also marks whether we saved it. */
		gLoadedBm = 1;
		(void) FUNC8("Bookmark \"%s\" saved.\n", gBm.bookmarkName);

		FUNC2();
	}
}