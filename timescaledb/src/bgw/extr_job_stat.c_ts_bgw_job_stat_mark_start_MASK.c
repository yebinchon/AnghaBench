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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Relation ;

/* Variables and functions */
 int /*<<< orphan*/  BGW_JOB_STAT ; 
 int /*<<< orphan*/  DT_NOBEGIN ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  ShareRowExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bgw_job_stat_tuple_mark_start ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(int32 bgw_job_id)
{
	/* Use double-check locking */
	if (!FUNC1(bgw_job_id,
								  bgw_job_stat_tuple_mark_start,
								  NULL,
								  NULL,
								  RowExclusiveLock))
	{
		Relation rel =
			FUNC4(FUNC2(FUNC5(), BGW_JOB_STAT), ShareRowExclusiveLock);
		/* Recheck while having a self-exclusive lock */
		if (!FUNC1(bgw_job_id,
									  bgw_job_stat_tuple_mark_start,
									  NULL,
									  NULL,
									  RowExclusiveLock))
			FUNC0(rel, bgw_job_id, true, DT_NOBEGIN);
		FUNC3(rel, ShareRowExclusiveLock);
	}
}