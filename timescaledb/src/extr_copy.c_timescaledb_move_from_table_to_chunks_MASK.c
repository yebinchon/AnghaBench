#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  behavior; int /*<<< orphan*/  relations; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ TruncateStmt ;
struct TYPE_25__ {int /*<<< orphan*/  attnum; } ;
struct TYPE_20__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_24__ {int /*<<< orphan*/  main_table_relid; TYPE_1__ fd; } ;
struct TYPE_23__ {int inh; int /*<<< orphan*/  inhOpt; int /*<<< orphan*/  relname; int /*<<< orphan*/  schemaname; } ;
struct TYPE_22__ {TYPE_17__* rd_att; } ;
struct TYPE_19__ {int natts; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__ RangeVar ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_5__ Hypertable ;
typedef  int /*<<< orphan*/  HeapScanDesc ;
typedef  TYPE_6__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  CopyChunkState ;

/* Variables and functions */
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INH_NO ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_TruncateStmt ; 
 TYPE_6__* FUNC4 (TYPE_17__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  next_copy_from_table_to_chunks ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 

void
FUNC15(Hypertable *ht, LOCKMODE lockmode)
{
	Relation rel;
	CopyChunkState *ccstate;
	HeapScanDesc scandesc;
	Snapshot snapshot;
	List *attnums = NIL;
	List *range_table = NIL;
	RangeVar rv = {
		.schemaname = FUNC2(ht->fd.schema_name),
		.relname = FUNC2(ht->fd.table_name),
#if PG96
		.inhOpt = INH_NO,
#else
		.inh = false, /* Don't recurse */
#endif
	};

	TruncateStmt stmt = {
		.type = T_TruncateStmt,
		.relations = FUNC13(&rv),
		.behavior = DROP_RESTRICT,
	};
	int i;

	rel = FUNC11(ht->main_table_relid, lockmode);

	for (i = 0; i < rel->rd_att->natts; i++)
	{
		Form_pg_attribute attr = FUNC4(rel->rd_att, i);

		attnums = FUNC12(attnums, attr->attnum);
	}

	FUNC7(rel, attnums);
	snapshot = FUNC3(FUNC1());
	scandesc = FUNC8(rel, snapshot, 0, NULL);
	ccstate = FUNC6(ht, rel, next_copy_from_table_to_chunks, scandesc);
	FUNC14(ccstate, range_table, ht);
	FUNC10(scandesc);
	FUNC5(snapshot);
	FUNC9(rel, lockmode);

	FUNC0(&stmt);
}