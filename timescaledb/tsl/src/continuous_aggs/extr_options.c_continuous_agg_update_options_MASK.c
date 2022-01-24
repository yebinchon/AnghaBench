#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_18__ {int /*<<< orphan*/  is_default; int /*<<< orphan*/  parsed; } ;
typedef  TYPE_3__ WithClauseResult ;
struct TYPE_16__ {void* retry_period; void* schedule_interval; } ;
struct TYPE_21__ {TYPE_1__ fd; } ;
struct TYPE_17__ {int /*<<< orphan*/  job_id; int /*<<< orphan*/  bucket_width; int /*<<< orphan*/  raw_hypertable_id; } ;
struct TYPE_20__ {TYPE_2__ data; } ;
struct TYPE_19__ {int /*<<< orphan*/  space; } ;
typedef  TYPE_4__ Hypertable ;
typedef  int /*<<< orphan*/  Dimension ;
typedef  TYPE_5__ ContinuousAgg ;
typedef  int /*<<< orphan*/  Cache ;
typedef  TYPE_6__ BgwJob ;

/* Variables and functions */
 size_t ContinuousEnabled ; 
 size_t ContinuousViewOptionCreateGroupIndex ; 
 size_t ContinuousViewOptionMaxIntervalPerRun ; 
 size_t ContinuousViewOptionRefreshInterval ; 
 size_t ContinuousViewOptionRefreshLag ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 void** FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 

void
FUNC13(ContinuousAgg *agg, WithClauseResult *with_clause_options)
{
	if (!with_clause_options[ContinuousEnabled].is_default)
		FUNC3(ERROR, "cannot disable continuous aggregates");

	if (!with_clause_options[ContinuousViewOptionRefreshLag].is_default)
	{
		Cache *hcache = FUNC10();
		Hypertable *ht = FUNC9(hcache, agg->data.raw_hypertable_id);
		Dimension *time_dimension = FUNC4(ht->space, 0);
		int64 lag =
			FUNC2(FUNC8(time_dimension),
											 with_clause_options);
		FUNC12(agg, lag);
		FUNC7(hcache);
	}

	if (!with_clause_options[ContinuousViewOptionMaxIntervalPerRun].is_default)
	{
		Cache *hcache = FUNC10();
		Hypertable *ht = FUNC9(hcache, agg->data.raw_hypertable_id);
		Dimension *time_dimension = FUNC4(ht->space, 0);
		int64 max = FUNC1(FUNC8(
																  time_dimension),
															  with_clause_options,
															  agg->data.bucket_width);
		FUNC11(agg, max);
		FUNC7(hcache);
	}

	if (!with_clause_options[ContinuousViewOptionRefreshInterval].is_default)
	{
		BgwJob *job = FUNC5(agg->data.job_id, CurrentMemoryContext, true);
		job->fd.schedule_interval =
			*FUNC0(with_clause_options[ContinuousViewOptionRefreshInterval].parsed);
		job->fd.retry_period =
			*FUNC0(with_clause_options[ContinuousViewOptionRefreshInterval].parsed);
		FUNC6(agg->data.job_id, job);
	}
	if (!with_clause_options[ContinuousViewOptionCreateGroupIndex].is_default)
	{
		FUNC3(ERROR, "cannot alter create_group_indexes option for continuous aggregates");
	}
}