#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_12__ {int mmp_last_write; int mmp_delay; int /*<<< orphan*/  mmp_thread; int /*<<< orphan*/ * mmp_zio_root; int /*<<< orphan*/  mmp_thread_lock; int /*<<< orphan*/  mmp_thread_cv; int /*<<< orphan*/  mmp_io_lock; int /*<<< orphan*/  mmp_thread_exiting; } ;
struct TYPE_11__ {TYPE_2__ spa_mmp; } ;
typedef  TYPE_1__ spa_t ;
typedef  TYPE_2__ mmp_thread_t ;
typedef  int hrtime_t ;
typedef  int /*<<< orphan*/  callb_cpr_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CALLOUT_FLAG_ABSOLUTE ; 
 int /*<<< orphan*/  CE_WARN ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MMP_DEFAULT_INTERVAL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMP_MIN_INTERVAL ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  ZIO_SUSPEND_MMP ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int,int,int,int,...) ; 
 int /*<<< orphan*/  zfs_multihost_fail_intervals ; 
 int /*<<< orphan*/  zfs_multihost_interval ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC23(void *arg)
{
	spa_t *spa = (spa_t *)arg;
	mmp_thread_t *mmp = &spa->spa_mmp;
	boolean_t suspended = FUNC18(spa);
	boolean_t multihost = FUNC16(spa);
	uint64_t mmp_interval = FUNC5(FUNC4(
	    zfs_multihost_interval));
	uint32_t mmp_fail_intervals = FUNC3(
	    zfs_multihost_fail_intervals);
	hrtime_t mmp_fail_ns = mmp_fail_intervals * mmp_interval;
	boolean_t last_spa_suspended = suspended;
	boolean_t last_spa_multihost = multihost;
	uint64_t last_mmp_interval = mmp_interval;
	uint32_t last_mmp_fail_intervals = mmp_fail_intervals;
	hrtime_t last_mmp_fail_ns = mmp_fail_ns;
	callb_cpr_t cpr;
	int skip_wait = 0;

	FUNC11(mmp, &cpr);

	while (!mmp->mmp_thread_exiting) {
		hrtime_t next_time = FUNC10() +
		    FUNC5(MMP_DEFAULT_INTERVAL);
		int leaves = FUNC2(FUNC19(spa), 1);

		/* Detect changes in tunables or state */

		last_spa_suspended = suspended;
		last_spa_multihost = multihost;
		suspended = FUNC18(spa);
		multihost = FUNC16(spa);

		last_mmp_interval = mmp_interval;
		last_mmp_fail_intervals = mmp_fail_intervals;
		last_mmp_fail_ns = mmp_fail_ns;
		mmp_interval = FUNC5(FUNC4(
		    zfs_multihost_interval));
		mmp_fail_intervals = FUNC3(
		    zfs_multihost_fail_intervals);

		/* Smooth so pool is not suspended when reducing tunables */
		if (mmp_fail_intervals * mmp_interval < mmp_fail_ns) {
			mmp_fail_ns = (mmp_fail_ns * 31 +
			    mmp_fail_intervals * mmp_interval) / 32;
		} else {
			mmp_fail_ns = mmp_fail_intervals *
			    mmp_interval;
		}

		if (mmp_interval != last_mmp_interval ||
		    mmp_fail_intervals != last_mmp_fail_intervals) {
			/*
			 * We want other hosts to see new tunables as quickly as
			 * possible.  Write out at higher frequency than usual.
			 */
			skip_wait += leaves;
		}

		if (multihost)
			next_time = FUNC10() + mmp_interval / leaves;

		if (mmp_fail_ns != last_mmp_fail_ns) {
			FUNC20("MMP interval change pool '%s' "
			    "gethrtime %llu last_mmp_interval %llu "
			    "mmp_interval %llu last_mmp_fail_intervals %u "
			    "mmp_fail_intervals %u mmp_fail_ns %llu "
			    "skip_wait %d leaves %d next_time %llu",
			    FUNC17(spa), FUNC10(), last_mmp_interval,
			    mmp_interval, last_mmp_fail_intervals,
			    mmp_fail_intervals, mmp_fail_ns, skip_wait, leaves,
			    next_time);
		}

		/*
		 * MMP off => on, or suspended => !suspended:
		 * No writes occurred recently.  Update mmp_last_write to give
		 * us some time to try.
		 */
		if ((!last_spa_multihost && multihost) ||
		    (last_spa_suspended && !suspended)) {
			FUNC20("MMP state change pool '%s': gethrtime %llu "
			    "last_spa_multihost %u multihost %u "
			    "last_spa_suspended %u suspended %u",
			    FUNC17(spa), last_spa_multihost, multihost,
			    last_spa_suspended, suspended);
			FUNC14(&mmp->mmp_io_lock);
			mmp->mmp_last_write = FUNC10();
			mmp->mmp_delay = mmp_interval;
			FUNC15(&mmp->mmp_io_lock);
		}

		/*
		 * MMP on => off:
		 * mmp_delay == 0 tells importing node to skip activity check.
		 */
		if (last_spa_multihost && !multihost) {
			FUNC14(&mmp->mmp_io_lock);
			mmp->mmp_delay = 0;
			FUNC15(&mmp->mmp_io_lock);
		}

		/*
		 * Suspend the pool if no MMP write has succeeded in over
		 * mmp_interval * mmp_fail_intervals nanoseconds.
		 */
		if (multihost && !suspended && mmp_fail_intervals &&
		    (FUNC10() - mmp->mmp_last_write) > mmp_fail_ns) {
			FUNC20("MMP suspending pool '%s': gethrtime %llu "
			    "mmp_last_write %llu mmp_interval %llu "
			    "mmp_fail_intervals %llu mmp_fail_ns %llu",
			    FUNC17(spa), (u_longlong_t)FUNC10(),
			    (u_longlong_t)mmp->mmp_last_write,
			    (u_longlong_t)mmp_interval,
			    (u_longlong_t)mmp_fail_intervals,
			    (u_longlong_t)mmp_fail_ns);
			FUNC8(CE_WARN, "MMP writes to pool '%s' have not "
			    "succeeded in over %llu ms; suspending pool. "
			    "Hrtime %llu",
			    FUNC17(spa),
			    FUNC6(FUNC10() - mmp->mmp_last_write),
			    FUNC10());
			FUNC21(spa, NULL, ZIO_SUSPEND_MMP);
		}

		if (multihost && !suspended)
			FUNC13(spa);

		if (skip_wait > 0) {
			next_time = FUNC10() + FUNC5(MMP_MIN_INTERVAL) /
			    leaves;
			skip_wait--;
		}

		FUNC0(&cpr);
		(void) FUNC9(&mmp->mmp_thread_cv,
		    &mmp->mmp_thread_lock, next_time, FUNC7(100),
		    CALLOUT_FLAG_ABSOLUTE);
		FUNC1(&cpr, &mmp->mmp_thread_lock);
	}

	/* Outstanding writes are allowed to complete. */
	if (mmp->mmp_zio_root)
		FUNC22(mmp->mmp_zio_root);

	mmp->mmp_zio_root = NULL;
	FUNC12(mmp, &mmp->mmp_thread, &cpr);
}