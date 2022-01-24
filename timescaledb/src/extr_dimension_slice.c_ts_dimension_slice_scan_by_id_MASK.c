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
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  DimensionSlice ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_dimension_slice_id_idx_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  DIMENSION_SLICE_ID_IDX ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_slice_tuple_found ; 

DimensionSlice *
FUNC3(int32 dimension_slice_id, MemoryContext mctx)
{
	DimensionSlice *slice = NULL;
	ScanKeyData scankey[1];

	FUNC1(&scankey[0],
				Anum_dimension_slice_id_idx_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(dimension_slice_id));

	FUNC2(DIMENSION_SLICE_ID_IDX,
										scankey,
										1,
										dimension_slice_tuple_found,
										&slice,
										1,
										AccessShareLock,
										mctx);

	return slice;
}