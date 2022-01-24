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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {void* fullpool; int /*<<< orphan*/  rate; void* secure; } ;
typedef  TYPE_1__ trimflags_t ;
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  pool_trim_func_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  POOL_TRIM_CANCEL ; 
 int /*<<< orphan*/  POOL_TRIM_START ; 
 int /*<<< orphan*/  POOL_TRIM_SUSPEND ; 
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
 int /*<<< orphan*/  optarg ; 
 size_t optind ; 
 int optopt ; 
 int /*<<< orphan*/  required_argument ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC14(int argc, char **argv)
{
	struct option long_options[] = {
		{"cancel",	no_argument,		NULL,	'c'},
		{"secure",	no_argument,		NULL,	'd'},
		{"rate",	required_argument,	NULL,	'r'},
		{"suspend",	no_argument,		NULL,	's'},
		{0, 0, 0, 0}
	};

	pool_trim_func_t cmd_type = POOL_TRIM_START;
	uint64_t rate = 0;
	boolean_t secure = B_FALSE;

	int c;
	while ((c = FUNC5(argc, argv, "cdr:s", long_options, NULL))
	    != -1) {
		switch (c) {
		case 'c':
			if (cmd_type != POOL_TRIM_START &&
			    cmd_type != POOL_TRIM_CANCEL) {
				(void) FUNC4(stderr, "%s", FUNC6("-c cannot be "
				    "combined with other options\n"));
				FUNC7(B_FALSE);
			}
			cmd_type = POOL_TRIM_CANCEL;
			break;
		case 'd':
			if (cmd_type != POOL_TRIM_START) {
				(void) FUNC4(stderr, "%s", FUNC6("-d cannot be "
				    "combined with the -c or -s options\n"));
				FUNC7(B_FALSE);
			}
			secure = B_TRUE;
			break;
		case 'r':
			if (cmd_type != POOL_TRIM_START) {
				(void) FUNC4(stderr, "%s", FUNC6("-r cannot be "
				    "combined with the -c or -s options\n"));
				FUNC7(B_FALSE);
			}
			if (FUNC8(NULL, optarg, &rate) == -1) {
				(void) FUNC4(stderr,
				    "%s", FUNC6("invalid value for rate\n"));
				FUNC7(B_FALSE);
			}
			break;
		case 's':
			if (cmd_type != POOL_TRIM_START &&
			    cmd_type != POOL_TRIM_SUSPEND) {
				(void) FUNC4(stderr, "%s", FUNC6("-s cannot be "
				    "combined with other options\n"));
				FUNC7(B_FALSE);
			}
			cmd_type = POOL_TRIM_SUSPEND;
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

	char *poolname = argv[0];
	zpool_handle_t *zhp = FUNC12(g_zfs, poolname);
	if (zhp == NULL)
		return (-1);

	trimflags_t trim_flags = {
		.secure = secure,
		.rate = rate,
	};

	nvlist_t *vdevs = FUNC1();
	if (argc == 1) {
		/* no individual leaf vdevs specified, so add them all */
		nvlist_t *config = FUNC11(zhp, NULL);
		nvlist_t *nvroot = FUNC3(config,
		    ZPOOL_CONFIG_VDEV_TREE);
		FUNC10(zhp, nvroot, vdevs);
		trim_flags.fullpool = B_TRUE;
	} else {
		trim_flags.fullpool = B_FALSE;
		for (int i = 1; i < argc; i++) {
			FUNC0(vdevs, argv[i]);
		}
	}

	int error = FUNC13(zhp, cmd_type, vdevs, &trim_flags);

	FUNC2(vdevs);
	FUNC9(zhp);

	return (error);
}