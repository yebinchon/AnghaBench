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
typedef  int /*<<< orphan*/  ScanKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id ; 
 int /*<<< orphan*/  BGW_POLICY_CHUNK_STATS ; 
 int /*<<< orphan*/  BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_bgw_policy_delete_row_only_tuple_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(int32 job_id)
{
	ScanKeyData scankey[1];

	FUNC1(&scankey[0],
				Anum_bgw_policy_chunk_stats_job_id_chunk_id_idx_job_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(job_id));

	FUNC2(BGW_POLICY_CHUNK_STATS,
						BGW_POLICY_CHUNK_STATS_JOB_ID_CHUNK_ID_IDX,
						scankey,
						1,
						ts_bgw_policy_delete_row_only_tuple_found,
						RowExclusiveLock,
						NULL);
}