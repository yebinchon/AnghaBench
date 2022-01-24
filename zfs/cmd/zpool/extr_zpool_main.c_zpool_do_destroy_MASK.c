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
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  history_str ; 
 void* log_history ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,void*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 

int
FUNC10(int argc, char **argv)
{
	boolean_t force = B_FALSE;
	int c;
	char *pool;
	zpool_handle_t *zhp;
	int ret;

	/* check options */
	while ((c = FUNC1(argc, argv, "f")) != -1) {
		switch (c) {
		case 'f':
			force = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* check arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool argument\n"));
		FUNC4(B_FALSE);
	}
	if (argc > 1) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC4(B_FALSE);
	}

	pool = argv[0];

	if ((zhp = FUNC9(g_zfs, pool)) == NULL) {
		/*
		 * As a special case, check for use of '/' in the name, and
		 * direct the user to use 'zfs destroy' instead.
		 */
		if (FUNC3(pool, '/') != NULL)
			(void) FUNC0(stderr, "%s", FUNC2("use 'zfs destroy' to "
			    "destroy a dataset\n"));
		return (1);
	}

	if (FUNC7(zhp, force) != 0) {
		(void) FUNC0(stderr, FUNC2("could not destroy '%s': "
		    "could not unmount datasets\n"), FUNC8(zhp));
		FUNC5(zhp);
		return (1);
	}

	/* The history must be logged as part of the export */
	log_history = B_FALSE;

	ret = (FUNC6(zhp, history_str) != 0);

	FUNC5(zhp);

	return (ret);
}