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
struct TYPE_3__ {scalar_t__ first; scalar_t__ internal; scalar_t__ longfmt; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ hist_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  get_history_one ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(int argc, char **argv)
{
	hist_cbdata_t cbdata = { 0 };
	int ret;
	int c;

	cbdata.first = B_TRUE;
	/* check options */
	while ((c = FUNC2(argc, argv, "li")) != -1) {
		switch (c) {
		case 'l':
			cbdata.longfmt = B_TRUE;
			break;
		case 'i':
			cbdata.internal = B_TRUE;
			break;
		case '?':
			(void) FUNC1(stderr, FUNC3("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}
	argc -= optind;
	argv += optind;

	ret = FUNC0(argc, argv, B_FALSE,  NULL, get_history_one,
	    &cbdata);

	if (argc == 0 && cbdata.first == B_TRUE) {
		(void) FUNC1(stderr, "%s", FUNC3("no pools available\n"));
		return (0);
	}

	return (ret);
}