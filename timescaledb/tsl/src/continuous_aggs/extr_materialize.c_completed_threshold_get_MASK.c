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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  ScanKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_continuous_aggs_completed_threshold_pkey_materialization_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CONTINUOUS_AGGS_COMPLETED_THRESHOLD ; 
 int /*<<< orphan*/  CONTINUOUS_AGGS_COMPLETED_THRESHOLD_PKEY ; 
 int /*<<< orphan*/  CONTINUOUS_AGGS_COMPLETED_THRESHOLD_TABLE_NAME ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_INT64_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  completed_threshold_tuple_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64
FUNC3(int32 materialization_id)
{
	int64 threshold = 0;
	ScanKeyData scankey[1];

	FUNC1(&scankey[0],
				Anum_continuous_aggs_completed_threshold_pkey_materialization_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(materialization_id));

	if (!FUNC2(CONTINUOUS_AGGS_COMPLETED_THRESHOLD /*=table*/,
							 CONTINUOUS_AGGS_COMPLETED_THRESHOLD_PKEY /*=indexid*/,
							 scankey /*=scankey*/,
							 1 /*=num_keys*/,
							 completed_threshold_tuple_found /*=tuple_found*/,
							 AccessShareLock /*=lockmode*/,
							 CONTINUOUS_AGGS_COMPLETED_THRESHOLD_TABLE_NAME /*=table_name*/,
							 &threshold /*=data*/))
		return PG_INT64_MIN;

	return threshold;
}