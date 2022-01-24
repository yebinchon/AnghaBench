#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  schema_name; int /*<<< orphan*/  table_name; } ;
struct TYPE_26__ {TYPE_2__ fd; } ;
struct TYPE_25__ {char* tablespacename; int /*<<< orphan*/  options; int /*<<< orphan*/  inhRelations; int /*<<< orphan*/  relation; int /*<<< orphan*/  type; } ;
struct TYPE_19__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_24__ {int /*<<< orphan*/  main_table_relid; TYPE_1__ fd; } ;
struct TYPE_23__ {scalar_t__ objectId; } ;
struct TYPE_22__ {TYPE_3__* rd_rel; } ;
struct TYPE_21__ {scalar_t__ relowner; } ;
struct TYPE_18__ {scalar_t__ owner_uid; } ;
typedef  TYPE_4__* Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_5__ ObjectAddress ;
typedef  TYPE_6__ Hypertable ;
typedef  TYPE_7__ CreateStmt ;
typedef  TYPE_8__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 TYPE_5__ FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int*) ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELKIND_RELATION ; 
 int SECURITY_LOCAL_USERID_CHANGE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  T_CreateStmt ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,scalar_t__) ; 
 TYPE_11__* FUNC12 () ; 

Oid
FUNC13(Chunk *chunk, Hypertable *ht, char *tablespacename)
{
	Relation rel;
	ObjectAddress objaddr;
	int sec_ctx;
	CreateStmt stmt = {
		.type = T_CreateStmt,
		.relation = FUNC9(FUNC2(chunk->fd.schema_name), FUNC2(chunk->fd.table_name), 0),
		.inhRelations =
			FUNC8(FUNC9(FUNC2(ht->fd.schema_name), FUNC2(ht->fd.table_name), 0)),
		.tablespacename = tablespacename,
		.options = FUNC5(ht->main_table_relid),
	};
	Oid uid, saved_uid;

	rel = FUNC7(ht->main_table_relid, AccessShareLock);

	/*
	 * If the chunk is created in the internal schema, become the catalog
	 * owner, otherwise become the hypertable owner
	 */
	if (FUNC10(&chunk->fd.schema_name, INTERNAL_SCHEMA_NAME) == 0)
		uid = FUNC12()->owner_uid;
	else
		uid = rel->rd_rel->relowner;

	FUNC1(&saved_uid, &sec_ctx);

	if (uid != saved_uid)
		FUNC3(uid, sec_ctx | SECURITY_LOCAL_USERID_CHANGE);

	objaddr = FUNC0(&stmt,
							 RELKIND_RELATION,
							 rel->rd_rel->relowner,
							 NULL
#if !PG96
							 ,
							 NULL
#endif
	);

	/*
	 * need to create a toast table explicitly for some of the option setting
	 * to work
	 */
	FUNC4(&stmt, objaddr.objectId);

	if (uid != saved_uid)
		FUNC3(saved_uid, sec_ctx);

	FUNC11(rel, objaddr.objectId);

	FUNC6(rel, AccessShareLock);

	return objaddr.objectId;
}