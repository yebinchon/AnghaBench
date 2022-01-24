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
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  DimensionVec ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BTLessStrategyNumber ; 
 int /*<<< orphan*/  DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ; 
 int DIMENSION_VEC_DEFAULT_SIZE ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_INT8LT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_vec_tuple_found ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **) ; 

DimensionVec *
FUNC6(int32 dimension_id, int64 point, int limit,
												  ScanDirection scandir, MemoryContext mctx)
{
	ScanKeyData scankey[3];
	DimensionVec *slices = FUNC4(limit > 0 ? limit : DIMENSION_VEC_DEFAULT_SIZE);

	FUNC2(&scankey[0],
				Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(dimension_id));
	FUNC2(&scankey[1],
				Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start,
				BTLessStrategyNumber,
				F_INT8LT,
				FUNC1(point));
	FUNC2(&scankey[2],
				Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end,
				BTLessStrategyNumber,
				F_INT8LT,
				FUNC1(point));

	FUNC3(
		DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
		scankey,
		3,
		dimension_vec_tuple_found,
		&slices,
		limit,
		scandir,
		AccessShareLock,
		mctx);

	return FUNC5(&slices);
}