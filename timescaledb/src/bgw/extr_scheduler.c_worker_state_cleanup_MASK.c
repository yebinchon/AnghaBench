#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int reserved_worker; int may_need_mark_end; TYPE_2__ job; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_3__ ScheduledBgwJob ;
typedef  int /*<<< orphan*/  BgwJobStat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  JOB_FAILURE ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(ScheduledBgwJob *sjob)
{
	/*
	 * This function needs to be safe wrt failures occurring at any point in
	 * the job starting process.
	 */
	if (sjob->handle != NULL)
	{
#if USE_ASSERT_CHECKING
		/* Sanity check: worker has stopped (if it was started) */
		assert_that_worker_has_stopped(sjob);
#endif
		FUNC4(sjob->handle);
		sjob->handle = NULL;
	}

	/*
	 * first cleanup reserved workers before accessing db. Want to minimize
	 * the possibility of errors before worker is released
	 */
	if (sjob->reserved_worker)
	{
		FUNC8();
		sjob->reserved_worker = false;
	}

	if (sjob->may_need_mark_end)
	{
		BgwJobStat *job_stat;

		if (!FUNC5(sjob->job.fd.id, CurrentMemoryContext))
		{
			FUNC2(WARNING,
				 "scheduler detected that job %d was deleted after job quit",
				 sjob->job.fd.id);
			sjob->may_need_mark_end = false;
			return;
		}

		job_stat = FUNC7(sjob->job.fd.id);

		FUNC0(job_stat != NULL);

		if (!FUNC6(job_stat))
		{
			/*
			 * Usually the job process will mark the end, but if the job gets
			 * a signal (cancel or terminate), it won't be able to so we
			 * should.
			 */
			FUNC3(sjob, JOB_FAILURE);
			/* reload updated value */
			job_stat = FUNC7(sjob->job.fd.id);
		}
		else
		{
			sjob->may_need_mark_end = false;
		}
	}
}