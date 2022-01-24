#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nkeys; char** data; int /*<<< orphan*/  scandirection; int /*<<< orphan*/  lockmode; int /*<<< orphan*/  tuple_found; int /*<<< orphan*/ * scankey; int /*<<< orphan*/  index; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ ScannerCtx ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_dimension_integer_now_func_schema ; 
 int /*<<< orphan*/  Anum_dimension_partitioning_func_schema ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  DIMENSION ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dimension_rename_schema_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(char *old_name, char *new_name)
{
	NameData old_schema_name;
	ScanKeyData scankey[1];
	Catalog *catalog = FUNC4();
	char *names[2] = { old_name, new_name };

	ScannerCtx scanctx = {
		.table = FUNC2(catalog, DIMENSION),
		.index = InvalidOid,
		.nkeys = 1,
		.scankey = scankey,
		.tuple_found = dimension_rename_schema_name,
		.data = names,
		.lockmode = RowExclusiveLock,
		.scandirection = ForwardScanDirection,
	};

	FUNC3(&old_schema_name, old_name);

	FUNC1(&scankey[0],
				Anum_dimension_partitioning_func_schema,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC0(&old_schema_name));

	FUNC5(&scanctx);

	FUNC1(&scankey[0],
				Anum_dimension_integer_now_func_schema,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC0(&old_schema_name));

	FUNC5(&scanctx);
}