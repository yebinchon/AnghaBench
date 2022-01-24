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
typedef  int /*<<< orphan*/  DimensionSlice ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BackwardScanDirection ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_slice_nth_tuple_found ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

DimensionSlice *
FUNC3(int32 dimension_id, int n)
{
	ScanKeyData scankey[1];
	int num_tuples;
	DimensionSlice *ret = NULL;

	FUNC1(&scankey[0],
				Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(dimension_id));

	num_tuples = FUNC2(
		DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
		scankey,
		1,
		dimension_slice_nth_tuple_found,
		&ret,
		n,
		BackwardScanDirection,
		AccessShareLock,
		CurrentMemoryContext);
	if (num_tuples < n)
		return NULL;

	return ret;
}