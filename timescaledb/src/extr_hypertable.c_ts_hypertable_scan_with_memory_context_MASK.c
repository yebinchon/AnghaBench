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
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_hypertable_name_idx_schema ; 
 int /*<<< orphan*/  Anum_hypertable_name_idx_table ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  HYPERTABLE_NAME_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

int
FUNC4(const char *schema, const char *table,
									   tuple_found_func tuple_found, void *data, LOCKMODE lockmode,
									   bool tuplock, MemoryContext mctx)
{
	ScanKeyData scankey[2];
	NameData schema_name, table_name;

	FUNC3(&schema_name, schema);
	FUNC3(&table_name, table);

	/* Perform an index scan on schema and table. */
	FUNC1(&scankey[0],
				Anum_hypertable_name_idx_schema,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC0(&schema_name));
	FUNC1(&scankey[1],
				Anum_hypertable_name_idx_table,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC0(&table_name));

	return FUNC2(scankey,
										  2,
										  HYPERTABLE_NAME_INDEX,
										  tuple_found,
										  data,
										  1,
										  lockmode,
										  tuplock,
										  mctx);
}