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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZPOOL_DO_REWIND ; 
 int /*<<< orphan*/  ZPOOL_EXTREME_REWIND ; 
 int /*<<< orphan*/  ZPOOL_LOAD_REWIND_POLICY ; 
 int /*<<< orphan*/  ZPOOL_NO_REWIND ; 
 int /*<<< orphan*/  ZPOOL_TRY_REWIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 

int
FUNC10(int argc, char **argv)
{
	int c;
	int ret = 0;
	boolean_t dryrun = B_FALSE;
	boolean_t do_rewind = B_FALSE;
	boolean_t xtreme_rewind = B_FALSE;
	uint32_t rewind_policy = ZPOOL_NO_REWIND;
	nvlist_t *policy = NULL;
	zpool_handle_t *zhp;
	char *pool, *device;

	/* check options */
	while ((c = FUNC1(argc, argv, "FnX")) != -1) {
		switch (c) {
		case 'F':
			do_rewind = B_TRUE;
			break;
		case 'n':
			dryrun = B_TRUE;
			break;
		case 'X':
			xtreme_rewind = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC6(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name\n"));
		FUNC6(B_FALSE);
	}

	if (argc > 2) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC6(B_FALSE);
	}

	if ((dryrun || xtreme_rewind) && !do_rewind) {
		(void) FUNC0(stderr,
		    "%s", FUNC2("-n or -X only meaningful with -F\n"));
		FUNC6(B_FALSE);
	}
	if (dryrun)
		rewind_policy = ZPOOL_TRY_REWIND;
	else if (do_rewind)
		rewind_policy = ZPOOL_DO_REWIND;
	if (xtreme_rewind)
		rewind_policy |= ZPOOL_EXTREME_REWIND;

	/* In future, further rewind policy choices can be passed along here */
	if (FUNC4(&policy, NV_UNIQUE_NAME, 0) != 0 ||
	    FUNC3(policy, ZPOOL_LOAD_REWIND_POLICY,
	    rewind_policy) != 0) {
		return (1);
	}

	pool = argv[0];
	device = argc == 2 ? argv[1] : NULL;

	if ((zhp = FUNC9(g_zfs, pool)) == NULL) {
		FUNC5(policy);
		return (1);
	}

	if (FUNC7(zhp, device, policy) != 0)
		ret = 1;

	FUNC8(zhp);

	FUNC5(policy);

	return (ret);
}