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
typedef  int /*<<< orphan*/  DropBehavior ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_hypertable_id_idx_hypertable_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CHUNK_HYPERTABLE_ID_INDEX ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chunk_tuple_delete ; 

int
FUNC3(int32 hypertable_id)
{
	ScanKeyData scankey[1];
	DropBehavior behavior = DROP_RESTRICT;

	FUNC1(&scankey[0],
				Anum_chunk_hypertable_id_idx_hypertable_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(hypertable_id));

	return FUNC2(CHUNK_HYPERTABLE_ID_INDEX,
							   scankey,
							   1,
							   chunk_tuple_delete,
							   &behavior,
							   0,
							   ForwardScanDirection,
							   RowExclusiveLock,
							   CurrentMemoryContext);
}