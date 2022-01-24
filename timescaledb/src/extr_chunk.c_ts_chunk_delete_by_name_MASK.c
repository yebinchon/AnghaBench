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
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  DropBehavior ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_schema_name_idx_schema_name ; 
 int /*<<< orphan*/  Anum_chunk_schema_name_idx_table_name ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CHUNK_SCHEMA_NAME_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chunk_tuple_delete ; 
 int /*<<< orphan*/  namein ; 

int
FUNC4(const char *schema, const char *table, DropBehavior behavior)
{
	ScanKeyData scankey[2];

	FUNC2(&scankey[0],
				Anum_chunk_schema_name_idx_schema_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC1(namein, FUNC0(schema)));
	FUNC2(&scankey[1],
				Anum_chunk_schema_name_idx_table_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC1(namein, FUNC0(table)));

	return FUNC3(CHUNK_SCHEMA_NAME_INDEX,
							   scankey,
							   2,
							   chunk_tuple_delete,
							   &behavior,
							   0,
							   ForwardScanDirection,
							   RowExclusiveLock,
							   CurrentMemoryContext);
}