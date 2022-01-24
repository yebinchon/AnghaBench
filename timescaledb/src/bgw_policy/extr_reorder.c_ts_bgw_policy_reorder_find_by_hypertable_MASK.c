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
typedef  int /*<<< orphan*/  BgwPolicyReorder ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_bgw_policy_reorder_hypertable_id_idx_hypertable_id ; 
 int /*<<< orphan*/  BGW_POLICY_REORDER ; 
 int /*<<< orphan*/  BGW_POLICY_REORDER_HYPERTABLE_ID_IDX ; 
 int /*<<< orphan*/  BGW_POLICY_REORDER_TABLE_NAME ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bgw_policy_reorder_tuple_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

BgwPolicyReorder *
FUNC3(int32 hypertable_id)
{
	ScanKeyData scankey[1];
	BgwPolicyReorder *ret = NULL;

	FUNC1(&scankey[0],
				Anum_bgw_policy_reorder_hypertable_id_idx_hypertable_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(hypertable_id));

	FUNC2(BGW_POLICY_REORDER,
						BGW_POLICY_REORDER_HYPERTABLE_ID_IDX,
						scankey,
						1,
						bgw_policy_reorder_tuple_found,
						AccessShareLock,
						BGW_POLICY_REORDER_TABLE_NAME,
						(void *) &ret);

	return ret;
}