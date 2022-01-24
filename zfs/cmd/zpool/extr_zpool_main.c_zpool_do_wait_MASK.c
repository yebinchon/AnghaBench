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
struct TYPE_3__ {scalar_t__ wd_interval; char* wd_poolname; int /*<<< orphan*/  wd_sem; void** wd_enabled; void* wd_exact; void* wd_headers_once; void* wd_scripted; } ;
typedef  TYPE_1__ wait_data_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int ZPOOL_WAIT_NUM_ACTIVITIES ; 
 int /*<<< orphan*/  FUNC0 (void***,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  FUNC2 (int*,char**,scalar_t__*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char FUNC4 (int,char**,char*) ; 
 int FUNC5 (char**,char**,char**) ; 
 char* FUNC6 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  wait_status_thread ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,int*,int*) ; 

int
FUNC17(int argc, char **argv)
{
	boolean_t verbose = B_FALSE;
	char c;
	char *value;
	int i;
	unsigned long count;
	pthread_t status_thr;
	int error = 0;
	zpool_handle_t *zhp;

	wait_data_t wd;
	wd.wd_scripted = B_FALSE;
	wd.wd_exact = B_FALSE;
	wd.wd_headers_once = B_FALSE;

	(void) FUNC10(&wd.wd_sem, 0, 0);

	/* By default, wait for all types of activity. */
	for (i = 0; i < ZPOOL_WAIT_NUM_ACTIVITIES; i++)
		wd.wd_enabled[i] = B_TRUE;

	while ((c = FUNC4(argc, argv, "HpT:t:")) != -1) {
		switch (c) {
		case 'H':
			wd.wd_scripted = B_TRUE;
			break;
		case 'n':
			wd.wd_headers_once = B_TRUE;
			break;
		case 'p':
			wd.wd_exact = B_TRUE;
			break;
		case 'T':
			FUNC3(*optarg);
			break;
		case 't':
		{
			static char *col_subopts[] = { "discard", "free",
			    "initialize", "replace", "remove", "resilver",
			    "scrub", NULL };

			/* Reset activities array */
			FUNC0(&wd.wd_enabled, sizeof (wd.wd_enabled));
			while (*optarg != '\0') {
				int activity = FUNC5(&optarg, col_subopts,
				    &value);

				if (activity < 0) {
					(void) FUNC1(stderr,
					    FUNC6("invalid activity '%s'\n"),
					    value);
					FUNC13(B_FALSE);
				}

				wd.wd_enabled[activity] = B_TRUE;
			}
			break;
		}
		case '?':
			(void) FUNC1(stderr, FUNC6("invalid option '%c'\n"),
			    optopt);
			FUNC13(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	FUNC2(&argc, argv, &wd.wd_interval, &count);
	if (count != 0) {
		/* This subcmd only accepts an interval, not a count */
		(void) FUNC1(stderr, "%s", FUNC6("too many arguments\n"));
		FUNC13(B_FALSE);
	}

	if (wd.wd_interval != 0)
		verbose = B_TRUE;

	if (argc < 1) {
		(void) FUNC1(stderr, "%s", FUNC6("missing 'pool' argument\n"));
		FUNC13(B_FALSE);
	}
	if (argc > 1) {
		(void) FUNC1(stderr, "%s", FUNC6("too many arguments\n"));
		FUNC13(B_FALSE);
	}

	wd.wd_poolname = argv[0];

	if ((zhp = FUNC15(g_zfs, wd.wd_poolname)) == NULL)
		return (1);

	if (verbose) {
		/*
		 * We use a separate thread for printing status updates because
		 * the main thread will call lzc_wait(), which blocks as long
		 * as an activity is in progress, which can be a long time.
		 */
		if (FUNC7(&status_thr, NULL, wait_status_thread, &wd)
		    != 0) {
			(void) FUNC1(stderr, FUNC6("failed to create status"
			    "thread: %s\n"), FUNC12(errno));
			FUNC14(zhp);
			return (1);
		}
	}

	/*
	 * Loop over all activities that we are supposed to wait for until none
	 * of them are in progress. Note that this means we can end up waiting
	 * for more activities to complete than just those that were in progress
	 * when we began waiting; if an activity we are interested in begins
	 * while we are waiting for another activity, we will wait for both to
	 * complete before exiting.
	 */
	for (;;) {
		boolean_t missing = B_FALSE;
		boolean_t any_waited = B_FALSE;

		for (i = 0; i < ZPOOL_WAIT_NUM_ACTIVITIES; i++) {
			boolean_t waited;

			if (!wd.wd_enabled[i])
				continue;

			error = FUNC16(zhp, i, &missing, &waited);
			if (error != 0 || missing)
				break;

			any_waited = (any_waited || waited);
		}

		if (error != 0 || missing || !any_waited)
			break;
	}

	FUNC14(zhp);

	if (verbose) {
		uintptr_t status;
		(void) FUNC11(&wd.wd_sem);
		(void) FUNC8(status_thr, (void *)&status);
		if (status != 0)
			error = status;
	}

	(void) FUNC9(&wd.wd_sem);

	return (error);
}