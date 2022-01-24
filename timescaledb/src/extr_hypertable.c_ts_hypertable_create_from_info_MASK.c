#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_12__ {scalar_t__ target_size_bytes; int /*<<< orphan*/  func_name; int /*<<< orphan*/  func_schema; int /*<<< orphan*/  func; } ;
struct TYPE_11__ {int adaptive_chunking; int /*<<< orphan*/ * ht; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/ * Name ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_1__ DimensionInfo ;
typedef  TYPE_2__ ChunkSizingInfo ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_EXISTS ; 
 int /*<<< orphan*/  ERRCODE_WARNING ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int HYPERTABLE_CREATE_DISABLE_DEFAULT_INDEXES ; 
 int HYPERTABLE_CREATE_IF_NOT_EXISTS ; 
 int HYPERTABLE_CREATE_MIGRATE_DATA ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
#define  RELKIND_PARTITIONED_TABLE 129 
#define  RELKIND_RELATION 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 TYPE_2__* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*) ; 
 void* FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bool
FUNC43(Oid table_relid, int32 hypertable_id, uint32 flags,
							   DimensionInfo *time_dim_info, DimensionInfo *space_dim_info,
							   Name associated_schema_name, Name associated_table_prefix,
							   ChunkSizingInfo *chunk_sizing_info)
{
	Cache *hcache;
	Hypertable *ht;
	Oid associated_schema_oid;
	Oid user_oid = FUNC2();
	Oid tspc_oid = FUNC14(table_relid);
	bool table_has_data;
	NameData schema_name, table_name, default_associated_schema_name;
	Relation rel;
	bool if_not_exists = (flags & HYPERTABLE_CREATE_IF_NOT_EXISTS) != 0;

	/* quick exit in the easy if-not-exists case to avoid all locking */
	if (if_not_exists && FUNC40(table_relid))
	{
		FUNC5(NOTICE,
				(FUNC6(ERRCODE_TS_HYPERTABLE_EXISTS),
				 FUNC9("table \"%s\" is already a hypertable, skipping",
						FUNC11(table_relid))));

		return false;
	}

	/*
	 * Serialize hypertable creation to avoid having multiple transactions
	 * creating the same hypertable simultaneously. The lock should conflict
	 * with itself and RowExclusive, to prevent simultaneous inserts on the
	 * table. Also since TRUNCATE (part of data migrations) takes an
	 * AccessExclusiveLock take that lock level here too so that we don't have
	 * lock upgrades, which are susceptible to deadlocks. If we aren't
	 * migrating data, then shouldn't have much contention on the table thus
	 * not worth optimizing.
	 */
	rel = FUNC17(table_relid, AccessExclusiveLock);

	/* recheck after getting lock */
	if (FUNC40(table_relid))
	{
		/*
		 * Unlock and return. Note that unlocking is analogous to what PG does
		 * for ALTER TABLE ADD COLUMN IF NOT EXIST
		 */
		FUNC16(rel, AccessExclusiveLock);

		if (if_not_exists)
		{
			FUNC5(NOTICE,
					(FUNC6(ERRCODE_TS_HYPERTABLE_EXISTS),
					 FUNC9("table \"%s\" is already a hypertable, skipping",
							FUNC11(table_relid))));
			return false;
		}

		FUNC5(ERROR,
				(FUNC6(ERRCODE_TS_HYPERTABLE_EXISTS),
				 FUNC9("table \"%s\" is already a hypertable", FUNC11(table_relid))));
	}

	/*
	 * Check that the user has permissions to make this table into a
	 * hypertable
	 */
	FUNC37(table_relid, user_oid);

	/* Is this the right kind of relation? */
	switch (FUNC13(table_relid))
	{
#if PG10_GE
		case RELKIND_PARTITIONED_TABLE:
			ereport(ERROR,
					(errcode(ERRCODE_WRONG_OBJECT_TYPE),
					 errmsg("table \"%s\" is already partitioned", get_rel_name(table_relid)),
					 errdetail("It is not possible to turn partitioned tables into hypertables.")));
#endif
		case RELKIND_RELATION:
			break;
		default:
			FUNC5(ERROR, (FUNC6(ERRCODE_WRONG_OBJECT_TYPE), FUNC9("invalid relation type")));
	}

	/* Check that the table doesn't have any unsupported constraints */
	FUNC21(table_relid);

	table_has_data = FUNC25(rel);

	if ((flags & HYPERTABLE_CREATE_MIGRATE_DATA) == 0 && table_has_data)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("table \"%s\" is not empty", FUNC11(table_relid)),
				 FUNC8("You can migrate data by specifying 'migrate_data => true' when calling "
						 "this function.")));

	if (FUNC23(table_relid))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("table \"%s\" is already partitioned", FUNC11(table_relid)),
				 FUNC7(
					 "It is not possible to turn tables that use inheritance into hypertables.")));

	if (!FUNC28(table_relid))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("table \"%s\" has to be logged", FUNC11(table_relid)),
				 FUNC7(
					 "It is not possible to turn temporary or unlogged tables into hypertables.")));

	if (FUNC26(rel))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("table \"%s\" has replica identity set", FUNC11(table_relid)),
				 FUNC7("Logical replication is not supported on hypertables.")));

	if (FUNC27(rel))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("hypertables do not support rules"),
				 FUNC7("Table \"%s\" has attached rules, which do not work on hypertables.",
						   FUNC11(table_relid)),
				 FUNC8("Remove the rules before calling create_hypertable")));

	/*
	 * Create the associated schema where chunks are stored, or, check
	 * permissions if it already exists
	 */
	if (NULL == associated_schema_name)
	{
		FUNC24(&default_associated_schema_name, INTERNAL_SCHEMA_NAME);
		associated_schema_name = &default_associated_schema_name;
	}

	associated_schema_oid =
		FUNC18(FUNC3(*associated_schema_name), user_oid);

	/* Create the associated schema if it doesn't already exist */
	if (!FUNC4(associated_schema_oid))
		FUNC19(FUNC3(*associated_schema_name));

	/*
	 * Hypertables do not support transition tables in triggers, so if the
	 * table already has such triggers we bail out
	 */
	if (FUNC41(table_relid))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("hypertables do not support transition tables in triggers")));

	if (NULL == chunk_sizing_info)
		chunk_sizing_info = FUNC32(table_relid);

	/* Validate and set chunk sizing information */
	if (FUNC4(chunk_sizing_info->func))
	{
		FUNC31(chunk_sizing_info);

		if (chunk_sizing_info->target_size_bytes > 0)
		{
			FUNC5(NOTICE,
					(FUNC6(ERRCODE_WARNING),
					 FUNC9("adaptive chunking is a BETA feature and is not recommended for "
							"production deployments")));

			time_dim_info->adaptive_chunking = true;
		}
	}
	else
	{
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC9("invalid chunk_sizing function: cannot be NULL")));
	}

	/* Validate that the dimensions are OK */
	FUNC34(time_dim_info);

	if (FUNC1(space_dim_info))
		FUNC34(space_dim_info);

	/* Checks pass, now we can create the catalog information */
	FUNC24(&schema_name, FUNC10(FUNC12(table_relid)));
	FUNC24(&table_name, FUNC11(table_relid));

	FUNC20(hypertable_id,
					  &schema_name,
					  &table_name,
					  associated_schema_name,
					  associated_table_prefix,
					  &chunk_sizing_info->func_schema,
					  &chunk_sizing_info->func_name,
					  chunk_sizing_info->target_size_bytes,
					  FUNC1(space_dim_info) ? 2 : 1,
					  false);

	/* Get the a Hypertable object via the cache */
	hcache = FUNC36();
	time_dim_info->ht = FUNC35(hcache, table_relid);

	FUNC0(time_dim_info->ht != NULL);

	/* Add validated dimensions */
	FUNC33(time_dim_info);

	if (FUNC1(space_dim_info))
	{
		space_dim_info->ht = time_dim_info->ht;
		FUNC33(space_dim_info);
	}

	/* Refresh the cache to get the updated hypertable with added dimensions */
	FUNC30(hcache);
	hcache = FUNC36();
	ht = FUNC35(hcache, table_relid);

	FUNC0(ht != NULL);

	/* Verify that existing indexes are compatible with a hypertable */
	FUNC39(ht);

	/* Attach tablespace, if any */
	if (FUNC4(tspc_oid))
	{
		NameData tspc_name;

		FUNC24(&tspc_name, FUNC15(tspc_oid));
		FUNC42(&tspc_name, table_relid, false);
	}

	/*
	 * Migrate data from the main table to chunks
	 *
	 * Note: we do not unlock here. We wait till the end of the txn instead.
	 * Must close the relation before migrating data.
	 */
	FUNC16(rel, NoLock);

	if (table_has_data)
	{
		FUNC5(NOTICE,
				(FUNC9("migrating data to chunks"),
				 FUNC7("Migration might take a while depending on the amount of data.")));

		FUNC29(ht, AccessShareLock);
	}

	FUNC22(table_relid);

	if ((flags & HYPERTABLE_CREATE_DISABLE_DEFAULT_INDEXES) == 0)
		FUNC38(ht);

	FUNC30(hcache);

	return true;
}