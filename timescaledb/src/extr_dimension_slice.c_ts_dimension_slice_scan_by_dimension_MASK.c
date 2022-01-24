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
typedef  int /*<<< orphan*/  DimensionVec ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ; 
 int DIMENSION_VEC_DEFAULT_SIZE ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_vec_tuple_found ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **) ; 

DimensionVec *
FUNC5(int32 dimension_id, int limit)
{
	ScanKeyData scankey[1];
	DimensionVec *slices = FUNC3(limit > 0 ? limit : DIMENSION_VEC_DEFAULT_SIZE);

	FUNC1(&scankey[0],
				Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(dimension_id));

	FUNC2(DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
										scankey,
										1,
										dimension_vec_tuple_found,
										&slices,
										limit,
										AccessShareLock,
										CurrentMemoryContext);

	return FUNC4(&slices);
}