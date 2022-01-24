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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int ZFS_TYPE_DATASET ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(int argc, char **argv)
{
	zfs_handle_t *zhp;
	int c;
	int ret = 0;
	boolean_t recurse = B_FALSE;
	boolean_t parents = B_FALSE;
	boolean_t force_unmount = B_FALSE;

	/* check options */
	while ((c = FUNC1(argc, argv, "prf")) != -1) {
		switch (c) {
		case 'p':
			parents = B_TRUE;
			break;
		case 'r':
			recurse = B_TRUE;
			break;
		case 'f':
			force_unmount = B_TRUE;
			break;
		case '?':
		default:
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing source dataset "
		    "argument\n"));
		FUNC4(B_FALSE);
	}
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC2("missing target dataset "
		    "argument\n"));
		FUNC4(B_FALSE);
	}
	if (argc > 2) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC4(B_FALSE);
	}

	if (recurse && parents) {
		(void) FUNC0(stderr, "%s", FUNC2("-p and -r options are mutually "
		    "exclusive\n"));
		FUNC4(B_FALSE);
	}

	if (recurse && FUNC3(argv[0], '@') == 0) {
		(void) FUNC0(stderr, "%s", FUNC2("source dataset for recursive "
		    "rename must be a snapshot\n"));
		FUNC4(B_FALSE);
	}

	if ((zhp = FUNC9(g_zfs, argv[0], parents ? ZFS_TYPE_FILESYSTEM |
	    ZFS_TYPE_VOLUME : ZFS_TYPE_DATASET)) == NULL)
		return (1);

	/* If we were asked and the name looks good, try to create ancestors. */
	if (parents && FUNC8(argv[1], FUNC7(zhp)) &&
	    FUNC6(g_zfs, argv[1]) != 0) {
		FUNC5(zhp);
		return (1);
	}

	ret = (FUNC10(zhp, argv[1], recurse, force_unmount) != 0);

	FUNC5(zhp);
	return (ret);
}