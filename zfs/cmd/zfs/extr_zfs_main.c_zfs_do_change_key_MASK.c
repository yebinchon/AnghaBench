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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(int argc, char **argv)
{
	int c, ret;
	uint64_t keystatus;
	boolean_t loadkey = B_FALSE, inheritkey = B_FALSE;
	zfs_handle_t *zhp = NULL;
	nvlist_t *props = FUNC0();

	while ((c = FUNC2(argc, argv, "lio:")) != -1) {
		switch (c) {
		case 'l':
			loadkey = B_TRUE;
			break;
		case 'i':
			inheritkey = B_TRUE;
			break;
		case 'o':
			if (!FUNC6(props, optarg)) {
				FUNC5(props);
				return (1);
			}
			break;
		default:
			(void) FUNC1(stderr,
			    FUNC3("invalid option '%c'\n"), optopt);
			FUNC7(B_FALSE);
		}
	}

	if (inheritkey && !FUNC4(props)) {
		(void) FUNC1(stderr,
		    "%s", FUNC3("Properties not allowed for inheriting\n"));
		FUNC7(B_FALSE);
	}

	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void) FUNC1(stderr, "%s", FUNC3("Missing dataset argument\n"));
		FUNC7(B_FALSE);
	}

	if (argc > 1) {
		(void) FUNC1(stderr, "%s", FUNC3("Too many arguments\n"));
		FUNC7(B_FALSE);
	}

	zhp = FUNC11(g_zfs, argv[argc - 1],
	    ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
	if (zhp == NULL)
		FUNC7(B_FALSE);

	if (loadkey) {
		keystatus = FUNC12(zhp, ZFS_PROP_KEYSTATUS);
		if (keystatus != ZFS_KEYSTATUS_AVAILABLE) {
			ret = FUNC9(zhp, B_FALSE, NULL);
			if (ret != 0) {
				FUNC5(props);
				FUNC8(zhp);
				return (-1);
			}
		}

		/* refresh the properties so the new keystatus is visible */
		FUNC13(zhp);
	}

	ret = FUNC10(zhp, props, inheritkey);
	if (ret != 0) {
		FUNC5(props);
		FUNC8(zhp);
		return (-1);
	}

	FUNC5(props);
	FUNC8(zhp);
	return (0);
}