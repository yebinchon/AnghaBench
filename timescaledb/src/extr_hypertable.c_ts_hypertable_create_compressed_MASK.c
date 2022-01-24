#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {int /*<<< orphan*/  target_size_bytes; int /*<<< orphan*/  func_name; int /*<<< orphan*/  func_schema; int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  NameData ;
typedef  TYPE_1__ ChunkSizingInfo ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_EXISTS ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bool
FUNC20(Oid table_relid, int32 hypertable_id)
{
	Oid user_oid = FUNC0();
	Oid tspc_oid = FUNC8(table_relid);
	NameData schema_name, table_name, associated_schema_name;
	ChunkSizingInfo *chunk_sizing_info;
	Relation rel;

	rel = FUNC11(table_relid, AccessExclusiveLock);
	/*
	 * Check that the user has permissions to make this table to a compressed
	 * hypertable
	 */
	FUNC17(table_relid, user_oid);
	if (FUNC18(table_relid))
	{
		FUNC2(ERROR,
				(FUNC3(ERRCODE_TS_HYPERTABLE_EXISTS),
				 FUNC4("table \"%s\" is already a hypertable", FUNC6(table_relid))));
		FUNC10(rel, AccessExclusiveLock);
	}

	FUNC14(&schema_name, FUNC5(FUNC7(table_relid)));
	FUNC14(&table_name, FUNC6(table_relid));

	/* we don't use the chunking size info for managing the compressed table.
	 * But need this to satisfy hypertable constraints
	 */
	chunk_sizing_info = FUNC16(table_relid);
	FUNC15(chunk_sizing_info->func, chunk_sizing_info);

	/* Checks pass, now we can create the catalog information */
	FUNC14(&schema_name, FUNC5(FUNC7(table_relid)));
	FUNC14(&table_name, FUNC6(table_relid));
	FUNC14(&associated_schema_name, INTERNAL_SCHEMA_NAME);

	/* compressed hypertable has no dimensions of its own , shares the original hypertable dims*/
	FUNC12(hypertable_id,
					  &schema_name,
					  &table_name,
					  &associated_schema_name,
					  NULL,
					  &chunk_sizing_info->func_schema,
					  &chunk_sizing_info->func_name,
					  chunk_sizing_info->target_size_bytes,
					  0 /*num_dimensions*/,
					  true);

	/* No indexes are created for the compressed hypertable here */

	/* Attach tablespace, if any */
	if (FUNC1(tspc_oid))
	{
		NameData tspc_name;

		FUNC14(&tspc_name, FUNC9(tspc_oid));
		FUNC19(&tspc_name, table_relid, false);
	}

	FUNC13(table_relid);
	/* lock will be released after the transaction is done */
	FUNC10(rel, NoLock);
	return true;
}