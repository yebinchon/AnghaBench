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
typedef  int /*<<< orphan*/  tuple_found_func ;
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  scalar_t__ StrategyNumber ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end ; 
 int /*<<< orphan*/  Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  INTEGER_BTREE_FAM_OID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ InvalidStrategy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PG_INT64_MAX ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(int32 dimension_id, StrategyNumber start_strategy,
									 int64 start_value, StrategyNumber end_strategy,
									 int64 end_value, void *data, tuple_found_func tuple_found,
									 int limit)
{
	ScanKeyData scankey[3];
	int nkeys = 1;

	/*
	 * Perform an index scan for slices matching the dimension's ID and which
	 * enclose the coordinate.
	 */
	FUNC5(&scankey[0],
				Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC1(dimension_id));
	if (start_strategy != InvalidStrategy)
	{
		Oid opno = FUNC8(INTEGER_BTREE_FAM_OID, INT8OID, INT8OID, start_strategy);
		Oid proc = FUNC7(opno);

		FUNC0(FUNC3(proc));

		FUNC5(&scankey[nkeys++],
					Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start,
					start_strategy,
					proc,
					FUNC2(start_value));
	}
	if (end_strategy != InvalidStrategy)
	{
		Oid opno = FUNC8(INTEGER_BTREE_FAM_OID, INT8OID, INT8OID, end_strategy);
		Oid proc = FUNC7(opno);

		FUNC0(FUNC3(proc));

		/*
		 * range_end is stored as exclusive, so add 1 to the value being
		 * searched. Also avoid overflow
		 */
		if (end_value != PG_INT64_MAX)
		{
			end_value++;

			/*
			 * If getting as input INT64_MAX-1, need to remap the incremented
			 * value back to INT64_MAX-1
			 */
			end_value = FUNC4(end_value);
		}
		else
		{
			/*
			 * The point with INT64_MAX gets mapped to INT64_MAX-1 so
			 * incrementing that gets you to INT_64MAX
			 */
			end_value = PG_INT64_MAX;
		}

		FUNC5(&scankey[nkeys++],
					Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end,
					end_strategy,
					proc,
					FUNC2(end_value));
	}

	FUNC6(DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
										scankey,
										nkeys,
										tuple_found,
										data,
										limit,
										AccessShareLock,
										CurrentMemoryContext);
}