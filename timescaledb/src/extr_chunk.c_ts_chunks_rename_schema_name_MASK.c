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
struct TYPE_3__ {int nkeys; char* data; int /*<<< orphan*/  scandirection; int /*<<< orphan*/  lockmode; int /*<<< orphan*/  tuple_found; int /*<<< orphan*/ * scankey; int /*<<< orphan*/  index; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ ScannerCtx ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_schema_name_idx_schema_name ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CHUNK ; 
 int /*<<< orphan*/  CHUNK_SCHEMA_NAME_INDEX ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chunk_rename_schema_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(char *old_schema, char *new_schema)
{
	NameData old_schema_name;
	ScanKeyData scankey[1];
	Catalog *catalog = FUNC5();
	ScannerCtx scanctx = {
		.table = FUNC3(catalog, CHUNK),
		.index = FUNC2(catalog, CHUNK, CHUNK_SCHEMA_NAME_INDEX),
		.nkeys = 1,
		.scankey = scankey,
		.tuple_found = chunk_rename_schema_name,
		.data = new_schema,
		.lockmode = RowExclusiveLock,
		.scandirection = ForwardScanDirection,
	};

	FUNC4(&old_schema_name, old_schema);

	FUNC1(&scankey[0],
				Anum_chunk_schema_name_idx_schema_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC0(&old_schema_name));

	FUNC6(&scanctx);
}