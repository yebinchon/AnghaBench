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
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_schema_name_idx_schema_name ; 
 int /*<<< orphan*/  Anum_chunk_schema_name_idx_table_name ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CHUNK_SCHEMA_NAME_INDEX ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

Chunk *
FUNC4(const char *schema_name, const char *table_name,
										 int16 num_constraints, MemoryContext mctx,
										 bool fail_if_not_found)
{
	NameData schema, table;
	ScanKeyData scankey[2];

	FUNC3(&schema, schema_name);
	FUNC3(&table, table_name);

	/*
	 * Perform an index scan on chunk name.
	 */
	FUNC1(&scankey[0],
				Anum_chunk_schema_name_idx_schema_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC0(&schema));
	FUNC1(&scankey[1],
				Anum_chunk_schema_name_idx_table_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC0(&table));

	return FUNC2(CHUNK_SCHEMA_NAME_INDEX,
						   scankey,
						   2,
						   num_constraints,
						   mctx,
						   fail_if_not_found);
}