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
typedef  int /*<<< orphan*/  zpool_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 

int
FUNC7(int argc, char **argv)
{
	int c;
	char *poolname, *path;
	zpool_handle_t *zhp;
	int ret;

	/* check options */
	while ((c = FUNC1(argc, argv, "")) != -1) {
		switch (c) {
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC3(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* get pool name and check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name argument\n"));
		FUNC3(B_FALSE);
	}

	if (argc < 2) {
		(void) FUNC0(stderr,
		    "%s", FUNC2("missing <device> specification\n"));
		FUNC3(B_FALSE);
	}

	poolname = argv[0];
	path = argv[1];

	if ((zhp = FUNC5(g_zfs, poolname)) == NULL)
		return (1);

	ret = FUNC6(zhp, path);

	FUNC4(zhp);

	return (ret);
}