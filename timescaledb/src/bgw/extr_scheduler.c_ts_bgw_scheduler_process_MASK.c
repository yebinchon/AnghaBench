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
typedef  int /*<<< orphan*/  register_background_worker_callback_type ;
typedef  int /*<<< orphan*/  int32 ;
typedef  scalar_t__ TimestampTz ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ DT_NOEND ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  ProcDiePending ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int got_SIGHUP ; 
 int jobs_list_needs_update ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scheduled_jobs ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ ts_shutdown_bgw ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

void
FUNC18(int32 run_for_interval_ms,
						 register_background_worker_callback_type bgw_register)
{
	TimestampTz start = FUNC14();
	TimestampTz quit_time = DT_NOEND;
	MemoryContext scheduler_mctx = CurrentMemoryContext;

	/* txn to read the list of jobs from the DB */
	FUNC4();
	scheduled_jobs = FUNC16(scheduled_jobs, scheduler_mctx);
	FUNC2();

	jobs_list_needs_update = false;

	if (run_for_interval_ms > 0)
		quit_time = FUNC5(start, run_for_interval_ms);

	FUNC10(DEBUG1, (FUNC11("database scheduler starting for database %d", MyDatabaseId)));

	/*
	 * on SIGTERM the process will usually die from the CHECK_FOR_INTERRUPTS
	 * in the die() called from the sigterm handler. Child reaping is then
	 * handled in the before_shmem_exit,
	 * bgw_scheduler_before_shmem_exit_callback.
	 */
	while (quit_time > FUNC14() && !ProcDiePending && !ts_shutdown_bgw)
	{
		TimestampTz next_wakeup = quit_time;

		/* start jobs, and then check when to next wake up */
		FUNC13(bgw_register);
		next_wakeup = FUNC12(next_wakeup, FUNC8());
		next_wakeup = FUNC12(next_wakeup, FUNC7());

		FUNC15(next_wakeup);

		FUNC1();

		if (got_SIGHUP)
		{
			got_SIGHUP = false;
			FUNC3(PGC_SIGHUP);
		}

		/*
		 * Process any cache invalidation message that indicates we need to
		 * update the jobs list
		 */
		FUNC0();

		/* txn to read the list of jobs from the DB */
		if (jobs_list_needs_update)
		{
			FUNC4();
			scheduled_jobs = FUNC16(scheduled_jobs, scheduler_mctx);
			FUNC2();
			jobs_list_needs_update = false;
		}

		FUNC6();
	}

#ifdef TS_DEBUG
	if (ts_shutdown_bgw)
		elog(WARNING, "bgw scheduler stopped due to shutdown_bgw guc");
#endif

	FUNC1();

	FUNC17();
	FUNC6();
}