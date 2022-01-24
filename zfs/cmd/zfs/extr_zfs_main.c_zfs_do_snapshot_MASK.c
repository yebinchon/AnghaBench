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
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_3__ {char* sd_snapname; int /*<<< orphan*/ * sd_nvl; void* sd_recursive; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ snap_cbdata_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(int argc, char **argv)
{
	int ret = 0;
	int c;
	nvlist_t *props;
	snap_cbdata_t sd = { 0 };
	boolean_t multiple_snaps = B_FALSE;

	if (FUNC4(&props, NV_UNIQUE_NAME, 0) != 0)
		FUNC3();
	if (FUNC4(&sd.sd_nvl, NV_UNIQUE_NAME, 0) != 0)
		FUNC3();

	/* check options */
	while ((c = FUNC1(argc, argv, "ro:")) != -1) {
		switch (c) {
		case 'o':
			if (!FUNC6(props, optarg)) {
				FUNC5(sd.sd_nvl);
				FUNC5(props);
				return (1);
			}
			break;
		case 'r':
			sd.sd_recursive = B_TRUE;
			multiple_snaps = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			goto usage;
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing snapshot argument\n"));
		goto usage;
	}

	if (argc > 1)
		multiple_snaps = B_TRUE;
	for (; argc > 0; argc--, argv++) {
		char *atp;
		zfs_handle_t *zhp;

		atp = FUNC7(argv[0], '@');
		if (atp == NULL)
			goto usage;
		*atp = '\0';
		sd.sd_snapname = atp + 1;
		zhp = FUNC9(g_zfs, argv[0],
		    ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
		if (zhp == NULL)
			goto usage;
		if (FUNC10(zhp, &sd) != 0)
			goto usage;
	}

	ret = FUNC11(g_zfs, sd.sd_nvl, props);
	FUNC5(sd.sd_nvl);
	FUNC5(props);
	if (ret != 0 && multiple_snaps)
		(void) FUNC0(stderr, "%s", FUNC2("no snapshots were created\n"));
	return (ret != 0);

usage:
	FUNC5(sd.sd_nvl);
	FUNC5(props);
	FUNC8(B_FALSE);
	return (-1);
}