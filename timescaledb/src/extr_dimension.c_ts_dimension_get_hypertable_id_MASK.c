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
typedef  int int32 ;
typedef  int /*<<< orphan*/  ScanKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_dimension_id_idx_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DIMENSION_ID_IDX ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_find_hypertable_id_tuple_found ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32
FUNC3(int32 dimension_id)
{
	int32 hypertable_id;
	ScanKeyData scankey[1];
	int ret;

	/* Perform an index scan dimension_id. */
	FUNC1(&scankey[0],
				Anum_dimension_id_idx_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(dimension_id));

	ret = FUNC2(scankey,
								  1,
								  dimension_find_hypertable_id_tuple_found,
								  &hypertable_id,
								  1,
								  DIMENSION_ID_IDX,
								  AccessShareLock,
								  CurrentMemoryContext);

	if (ret == 1)
		return hypertable_id;

	return -1;
}