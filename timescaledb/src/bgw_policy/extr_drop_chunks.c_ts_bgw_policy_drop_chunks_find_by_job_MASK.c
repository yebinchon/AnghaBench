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
typedef  int /*<<< orphan*/  BgwPolicyDropChunks ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_bgw_policy_drop_chunks_pkey_job_id ; 
 int /*<<< orphan*/  BGW_POLICY_DROP_CHUNKS ; 
 int /*<<< orphan*/  BGW_POLICY_DROP_CHUNKS_PKEY ; 
 int /*<<< orphan*/  BGW_POLICY_DROP_CHUNKS_TABLE_NAME ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bgw_policy_drop_chunks_tuple_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

BgwPolicyDropChunks *
FUNC3(int32 job_id)
{
	ScanKeyData scankey[1];
	BgwPolicyDropChunks *ret = NULL;

	FUNC1(&scankey[0],
				Anum_bgw_policy_drop_chunks_pkey_job_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(job_id));

	FUNC2(BGW_POLICY_DROP_CHUNKS,
						BGW_POLICY_DROP_CHUNKS_PKEY,
						scankey,
						1,
						bgw_policy_drop_chunks_tuple_found,
						RowExclusiveLock,
						BGW_POLICY_DROP_CHUNKS_TABLE_NAME,
						(void *) &ret);

	return ret;
}