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
typedef  int /*<<< orphan*/  uint64_t ;
struct zed_conf {int /*<<< orphan*/  do_foreground; int /*<<< orphan*/  do_force; scalar_t__ do_memlock; scalar_t__ do_verbose; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 scalar_t__ STDERR_FILENO ; 
 int /*<<< orphan*/  ZFS_META_RELEASE ; 
 int /*<<< orphan*/  ZFS_META_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  _got_exit ; 
 scalar_t__ _got_hup ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct zed_conf* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct zed_conf*) ; 
 scalar_t__ FUNC11 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC12 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC13 (struct zed_conf*,int,char**) ; 
 scalar_t__ FUNC14 (struct zed_conf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct zed_conf*) ; 
 scalar_t__ FUNC16 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC17 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC18 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC19 (struct zed_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 

int
FUNC28(int argc, char *argv[])
{
	struct zed_conf *zcp;
	uint64_t saved_eid;
	int64_t saved_etime[2];

	FUNC24(argv[0]);
	FUNC26(LOG_NOTICE);
	zcp = FUNC9();
	FUNC13(zcp, argc, argv);
	if (zcp->do_verbose)
		FUNC26(LOG_INFO);

	if (FUNC6() != 0)
		FUNC22("Must be run as root");

	FUNC12(zcp);

	FUNC21(STDERR_FILENO + 1);

	(void) FUNC8(0);

	if (FUNC4("/") < 0)
		FUNC22("Failed to change to root directory");

	if (FUNC15(zcp) < 0)
		FUNC5(EXIT_FAILURE);

	if (!zcp->do_foreground) {
		FUNC3();
		FUNC27(LOG_DAEMON);
	}
	FUNC2();

	if (zcp->do_memlock)
		FUNC1();

	if ((FUNC16(zcp) < 0) && (!zcp->do_force))
		FUNC5(EXIT_FAILURE);

	if (!zcp->do_foreground)
		FUNC0();

	FUNC25(LOG_NOTICE,
	    "ZFS Event Daemon %s-%s (PID %d)",
	    ZFS_META_VERSION, ZFS_META_RELEASE, (int)FUNC7());

	if (FUNC11(zcp) < 0)
		FUNC5(EXIT_FAILURE);

	if (FUNC14(zcp, &saved_eid, saved_etime) < 0)
		FUNC5(EXIT_FAILURE);

	FUNC18(zcp);
	FUNC19(zcp, saved_eid, saved_etime);

	while (!_got_exit) {
		if (_got_hup) {
			_got_hup = 0;
			(void) FUNC15(zcp);
		}
		FUNC20(zcp);
	}
	FUNC25(LOG_NOTICE, "Exiting");
	FUNC17(zcp);
	FUNC10(zcp);
	FUNC23();
	FUNC5(EXIT_SUCCESS);
}