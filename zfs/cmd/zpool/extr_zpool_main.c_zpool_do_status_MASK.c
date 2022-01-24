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
struct TYPE_3__ {scalar_t__ cb_count; void* cb_allpools; void* cb_first; void* cb_explain; int /*<<< orphan*/ * vcdl; void* cb_print_status; void* cb_print_vdev_trim; void* cb_dedup_stats; void* cb_verbose; void* cb_print_slow_ios; int /*<<< orphan*/  cb_name_flags; void* cb_literal; void* cb_print_vdev_init; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ status_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ NODATE ; 
 int /*<<< orphan*/  VDEV_NAME_FOLLOW_LINKS ; 
 int /*<<< orphan*/  VDEV_NAME_GUID ; 
 int /*<<< orphan*/  VDEV_NAME_PATH ; 
 int /*<<< orphan*/ * FUNC0 (int,char**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (float) ; 
 int /*<<< orphan*/  FUNC6 (int*,char**,float*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int,char**,char*) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 char optopt ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  status_callback ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ timestamp_fmt ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(int argc, char **argv)
{
	int c;
	int ret;
	float interval = 0;
	unsigned long count = 0;
	status_cbdata_t cb = { 0 };
	char *cmd = NULL;

	/* check options */
	while ((c = FUNC10(argc, argv, "c:igLpPsvxDtT:")) != -1) {
		switch (c) {
		case 'c':
			if (cmd != NULL) {
				FUNC3(stderr,
				    "%s", FUNC11("Can't set -c flag twice\n"));
				FUNC1(1);
			}

			if (FUNC8("ZPOOL_SCRIPTS_ENABLED") != NULL &&
			    !FUNC13("ZPOOL_SCRIPTS_ENABLED")) {
				FUNC3(stderr, "%s", FUNC11(
				    "Can't run -c, disabled by "
				    "ZPOOL_SCRIPTS_ENABLED.\n"));
				FUNC1(1);
			}

			if ((FUNC12() <= 0 || FUNC9() <= 0) &&
			    !FUNC13("ZPOOL_SCRIPTS_AS_ROOT")) {
				FUNC3(stderr, "%s", FUNC11(
				    "Can't run -c with root privileges "
				    "unless ZPOOL_SCRIPTS_AS_ROOT is set.\n"));
				FUNC1(1);
			}
			cmd = optarg;
			break;
		case 'i':
			cb.cb_print_vdev_init = B_TRUE;
			break;
		case 'g':
			cb.cb_name_flags |= VDEV_NAME_GUID;
			break;
		case 'L':
			cb.cb_name_flags |= VDEV_NAME_FOLLOW_LINKS;
			break;
		case 'p':
			cb.cb_literal = B_TRUE;
			break;
		case 'P':
			cb.cb_name_flags |= VDEV_NAME_PATH;
			break;
		case 's':
			cb.cb_print_slow_ios = B_TRUE;
			break;
		case 'v':
			cb.cb_verbose = B_TRUE;
			break;
		case 'x':
			cb.cb_explain = B_TRUE;
			break;
		case 'D':
			cb.cb_dedup_stats = B_TRUE;
			break;
		case 't':
			cb.cb_print_vdev_trim = B_TRUE;
			break;
		case 'T':
			FUNC7(*optarg);
			break;
		case '?':
			if (optopt == 'c') {
				FUNC15("status");
				FUNC1(0);
			} else {
				FUNC3(stderr,
				    FUNC11("invalid option '%c'\n"), optopt);
			}
			FUNC17(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	FUNC6(&argc, argv, &interval, &count);

	if (argc == 0)
		cb.cb_allpools = B_TRUE;

	cb.cb_first = B_TRUE;
	cb.cb_print_status = B_TRUE;

	for (;;) {
		if (timestamp_fmt != NODATE)
			FUNC14(timestamp_fmt);

		if (cmd != NULL)
			cb.vcdl = FUNC0(argc, argv, cmd,
			    NULL, NULL, 0, 0);

		ret = FUNC2(argc, argv, B_TRUE, NULL,
		    status_callback, &cb);

		if (cb.vcdl != NULL)
			FUNC4(cb.vcdl);

		if (argc == 0 && cb.cb_count == 0)
			(void) FUNC3(stderr, "%s", FUNC11("no pools available\n"));
		else if (cb.cb_explain && cb.cb_first && cb.cb_allpools)
			(void) FUNC16(FUNC11("all pools are healthy\n"));

		if (ret != 0)
			return (ret);

		if (interval == 0)
			break;

		if (count != 0 && --count == 0)
			break;

		(void) FUNC5(interval);
	}

	return (0);
}