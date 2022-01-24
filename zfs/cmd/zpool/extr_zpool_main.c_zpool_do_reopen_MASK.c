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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zpool_reopen_one ; 

int
FUNC5(int argc, char **argv)
{
	int c;
	int ret = 0;
	boolean_t scrub_restart = B_TRUE;

	/* check options */
	while ((c = FUNC2(argc, argv, "n")) != -1) {
		switch (c) {
		case 'n':
			scrub_restart = B_FALSE;
			break;
		case '?':
			(void) FUNC1(stderr, FUNC3("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* if argc == 0 we will execute zpool_reopen_one on all pools */
	ret = FUNC0(argc, argv, B_TRUE, NULL, zpool_reopen_one,
	    &scrub_restart);

	return (ret);
}