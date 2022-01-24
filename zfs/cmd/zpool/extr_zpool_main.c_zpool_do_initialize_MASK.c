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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
typedef  scalar_t__ pool_initialize_func_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ POOL_INITIALIZE_CANCEL ; 
 scalar_t__ POOL_INITIALIZE_START ; 
 scalar_t__ POOL_INITIALIZE_SUSPEND ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC5 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  no_argument ; 
 size_t optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 

int
FUNC14(int argc, char **argv)
{
	int c;
	char *poolname;
	zpool_handle_t *zhp;
	nvlist_t *vdevs;
	int err = 0;
	boolean_t wait = B_FALSE;

	struct option long_options[] = {
		{"cancel",	no_argument,		NULL, 'c'},
		{"suspend",	no_argument,		NULL, 's'},
		{"wait",	no_argument,		NULL, 'w'},
		{0, 0, 0, 0}
	};

	pool_initialize_func_t cmd_type = POOL_INITIALIZE_START;
	while ((c = FUNC5(argc, argv, "csw", long_options, NULL)) != -1) {
		switch (c) {
		case 'c':
			if (cmd_type != POOL_INITIALIZE_START &&
			    cmd_type != POOL_INITIALIZE_CANCEL) {
				(void) FUNC4(stderr, "%s", FUNC6("-c cannot be "
				    "combined with other options\n"));
				FUNC7(B_FALSE);
			}
			cmd_type = POOL_INITIALIZE_CANCEL;
			break;
		case 's':
			if (cmd_type != POOL_INITIALIZE_START &&
			    cmd_type != POOL_INITIALIZE_SUSPEND) {
				(void) FUNC4(stderr, "%s", FUNC6("-s cannot be "
				    "combined with other options\n"));
				FUNC7(B_FALSE);
			}
			cmd_type = POOL_INITIALIZE_SUSPEND;
			break;
		case 'w':
			wait = B_TRUE;
			break;
		case '?':
			if (optopt != 0) {
				(void) FUNC4(stderr,
				    FUNC6("invalid option '%c'\n"), optopt);
			} else {
				(void) FUNC4(stderr,
				    FUNC6("invalid option '%s'\n"),
				    argv[optind - 1]);
			}
			FUNC7(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1) {
		(void) FUNC4(stderr, "%s", FUNC6("missing pool name argument\n"));
		FUNC7(B_FALSE);
		return (-1);
	}

	if (wait && (cmd_type != POOL_INITIALIZE_START)) {
		(void) FUNC4(stderr, "%s", FUNC6("-w cannot be used with -c or "
		    "-s\n"));
		FUNC7(B_FALSE);
	}

	poolname = argv[0];
	zhp = FUNC13(g_zfs, poolname);
	if (zhp == NULL)
		return (-1);

	vdevs = FUNC1();
	if (argc == 1) {
		/* no individual leaf vdevs specified, so add them all */
		nvlist_t *config = FUNC10(zhp, NULL);
		nvlist_t *nvroot = FUNC3(config,
		    ZPOOL_CONFIG_VDEV_TREE);
		FUNC9(zhp, nvroot, vdevs);
	} else {
		for (int i = 1; i < argc; i++) {
			FUNC0(vdevs, argv[i]);
		}
	}

	if (wait)
		err = FUNC12(zhp, cmd_type, vdevs);
	else
		err = FUNC11(zhp, cmd_type, vdevs);

	FUNC2(vdevs);
	FUNC8(zhp);

	return (err);
}