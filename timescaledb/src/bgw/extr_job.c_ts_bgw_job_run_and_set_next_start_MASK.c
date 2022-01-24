#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int (* job_main_func ) () ;
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {TYPE_1__ fd; } ;
struct TYPE_9__ {scalar_t__ total_runs; int /*<<< orphan*/  last_start; } ;
struct TYPE_10__ {TYPE_2__ fd; } ;
typedef  int /*<<< orphan*/  Interval ;
typedef  TYPE_3__ BgwJobStat ;
typedef  TYPE_4__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timestamptz_pl_interval ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 

bool
FUNC8(BgwJob *job, job_main_func func, int64 initial_runs,
								  Interval *next_interval)
{
	BgwJobStat *job_stat;
	bool ret = func();

	/* Now update next_start. */
	FUNC4();

	job_stat = FUNC6(job->fd.id);

	/*
	 * Note that setting next_start explicitly from this function will
	 * override any backoff calculation due to failure.
	 */
	if (job_stat->fd.total_runs < initial_runs)
	{
		TimestampTz next_start =
			FUNC1(FUNC2(timestamptz_pl_interval,
													FUNC5(job_stat->fd.last_start),
													FUNC3(next_interval)));

		FUNC7(job, next_start);
	}
	FUNC0();

	return ret;
}