#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  scanrel; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_8__ {int last_run_success; scalar_t__ consecutive_failures; int /*<<< orphan*/  last_finish; int /*<<< orphan*/  next_start; int /*<<< orphan*/  total_failures; int /*<<< orphan*/  last_successful_finish; int /*<<< orphan*/  total_success; scalar_t__ consecutive_crashes; int /*<<< orphan*/  total_crashes; int /*<<< orphan*/  total_duration; int /*<<< orphan*/  last_start; } ;
struct TYPE_7__ {scalar_t__ result; int /*<<< orphan*/  job; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  TYPE_2__ JobResultCtx ;
typedef  int /*<<< orphan*/  Interval ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ FormData_bgw_job_stat ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ JOB_SUCCESS ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  interval_pl ; 
 int /*<<< orphan*/  timestamp_mi ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static ScanTupleResult
FUNC12(TupleInfo *ti, void *const data)
{
	JobResultCtx *result_ctx = data;
	HeapTuple tuple = FUNC8(ti->tuple);
	FormData_bgw_job_stat *fd = (FormData_bgw_job_stat *) FUNC2(tuple);
	Interval *duration;

	fd->last_finish = FUNC11();

	duration = FUNC0(FUNC1(timestamp_mi,
													 FUNC4(fd->last_finish),
													 FUNC4(fd->last_start)));
	fd->total_duration =
		*FUNC0(FUNC1(interval_pl,
											   FUNC3(&fd->total_duration),
											   FUNC3(duration)));

	/* undo marking created by start marks */
	fd->last_run_success = result_ctx->result == JOB_SUCCESS ? true : false;
	fd->total_crashes--;
	fd->consecutive_crashes = 0;

	if (result_ctx->result == JOB_SUCCESS)
	{
		fd->total_success++;
		fd->consecutive_failures = 0;
		fd->last_successful_finish = fd->last_finish;
		/* Mark the next start at the end if the job itself hasn't */
		if (!FUNC5(fd))
			fd->next_start = FUNC7(fd->last_finish, result_ctx->job);
	}
	else
	{
		fd->total_failures++;
		fd->consecutive_failures++;

		/*
		 * Mark the next start at the end if the job itself hasn't (this may
		 * have happened before failure)
		 */
		if (!FUNC5(fd))
			fd->next_start = FUNC6(fd->last_finish,
															 fd->consecutive_failures,
															 result_ctx->job);
	}

	FUNC10(ti->scanrel, tuple);
	FUNC9(tuple);

	return SCAN_DONE;
}