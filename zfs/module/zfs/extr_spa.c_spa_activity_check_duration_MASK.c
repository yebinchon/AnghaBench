#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_8__ {int ub_mmp_delay; } ;
typedef  TYPE_1__ uberblock_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int MMP_IMPORT_SAFETY_FACTOR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int NANOSEC ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int,...) ; 
 int zfs_multihost_import_intervals ; 
 int /*<<< orphan*/  zfs_multihost_interval ; 

__attribute__((used)) static uint64_t
FUNC11(spa_t *spa, uberblock_t *ub)
{
	uint64_t import_intervals = FUNC1(zfs_multihost_import_intervals, 1);
	uint64_t multihost_interval = FUNC8(
	    FUNC5(zfs_multihost_interval));
	uint64_t import_delay = FUNC1(NANOSEC, import_intervals *
	    multihost_interval);

	/*
	 * Local tunables determine a minimum duration except for the case
	 * where we know when the remote host will suspend the pool if MMP
	 * writes do not land.
	 *
	 * See Big Theory comment at the top of mmp.c for the reasoning behind
	 * these cases and times.
	 */

	FUNC0(MMP_IMPORT_SAFETY_FACTOR >= 100);

	if (FUNC6(ub) && FUNC3(ub) &&
	    FUNC2(ub) > 0) {

		/* MMP on remote host will suspend pool after failed writes */
		import_delay = FUNC2(ub) * FUNC8(FUNC4(ub)) *
		    MMP_IMPORT_SAFETY_FACTOR / 100;

		FUNC10("fail_intvals>0 import_delay=%llu ub_mmp "
		    "mmp_fails=%llu ub_mmp mmp_interval=%llu "
		    "import_intervals=%u", import_delay, FUNC2(ub),
		    FUNC4(ub), import_intervals);

	} else if (FUNC6(ub) && FUNC3(ub) &&
	    FUNC2(ub) == 0) {

		/* MMP on remote host will never suspend pool */
		import_delay = FUNC1(import_delay, (FUNC8(FUNC4(ub)) +
		    ub->ub_mmp_delay) * import_intervals);

		FUNC10("fail_intvals=0 import_delay=%llu ub_mmp "
		    "mmp_interval=%llu ub_mmp_delay=%llu "
		    "import_intervals=%u", import_delay, FUNC4(ub),
		    ub->ub_mmp_delay, import_intervals);

	} else if (FUNC7(ub)) {
		/*
		 * zfs-0.7 compatibility case
		 */

		import_delay = FUNC1(import_delay, (multihost_interval +
		    ub->ub_mmp_delay) * import_intervals);

		FUNC10("import_delay=%llu ub_mmp_delay=%llu "
		    "import_intervals=%u leaves=%u", import_delay,
		    ub->ub_mmp_delay, import_intervals,
		    FUNC9(spa));
	} else {
		/* Using local tunings is the only reasonable option */
		FUNC10("pool last imported on non-MMP aware "
		    "host using import_delay=%llu multihost_interval=%llu "
		    "import_intervals=%u", import_delay, multihost_interval,
		    import_intervals);
	}

	return (import_delay);
}