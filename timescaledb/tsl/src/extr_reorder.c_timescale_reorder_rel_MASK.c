#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  indisclustered; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ relpersistence; scalar_t__ relkind; scalar_t__ relhasoids; scalar_t__ relisshared; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  ERRCODE_ASSERT_FAILURE ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WARNING ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  RELOID ; 
 scalar_t__ RELPERSISTENCE_PERMANENT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20(Oid tableOid, Oid indexOid, bool verbose, Oid wait_id,
					  Oid destination_tablespace, Oid index_tablespace)
{
	Relation OldHeap;
	HeapTuple tuple;
	Form_pg_index indexForm;

	if (!FUNC7(indexOid))
		FUNC12(ERROR, "Reorder must specify an index.");

	/* Check for user-requested abort. */
	FUNC0();

	/*
	 * We grab exclusive access to the target rel and index for the duration
	 * of the transaction.  (This is redundant for the single-transaction
	 * case, since cluster() already did it.)  The index lock is taken inside
	 * check_index_is_clusterable.
	 */
	OldHeap = FUNC19(tableOid, ExclusiveLock);

	/* If the table has gone away, we can skip processing it */
	if (!OldHeap)
	{
		FUNC13(WARNING, (FUNC14(ERRCODE_WARNING), FUNC15("table disappeared during reorder.")));
		return;
	}

	/*
	 * Since we may open a new transaction for each relation, we have to check
	 * that the relation still is what we think it is.
	 */
	/* Check that the user still owns the relation */
	if (!FUNC16(tableOid, FUNC3()))
	{
		FUNC17(OldHeap, ExclusiveLock);
		FUNC13(WARNING, (FUNC14(ERRCODE_WARNING), FUNC15("ownership change during reorder.")));
		return;
	}

	if (FUNC5(OldHeap))
		FUNC13(ERROR,
				(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("cannot reorder a system relation.")));

	if (OldHeap->rd_rel->relpersistence != RELPERSISTENCE_PERMANENT)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("can only reorder a permanent table.")));

	/* We do not allow reordering on shared catalogs. */
	if (OldHeap->rd_rel->relisshared)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("cannot reorder a shared catalog")));

	if (OldHeap->rd_rel->relkind != RELKIND_RELATION)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED), FUNC15("can only reorder a relation.")));

	if (OldHeap->rd_rel->relhasoids)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("cannot reorder a table with OIDs.")));

	/*
	 * Check that the index still exists
	 */
	if (!FUNC10(RELOID, FUNC6(indexOid)))
	{
		FUNC13(WARNING, (FUNC14(ERRCODE_WARNING), FUNC15("index disappeared during reorder")));
		FUNC17(OldHeap, ExclusiveLock);
		return;
	}

	/*
	 * Check that the index is still the one with indisclustered set.
	 */
	tuple = FUNC9(INDEXRELID, FUNC6(indexOid));
	if (!FUNC4(tuple)) /* probably can't happen */
	{
		FUNC13(WARNING, (FUNC14(ERRCODE_WARNING), FUNC15("invalid index heap during reorder")));
		FUNC17(OldHeap, ExclusiveLock);
		return;
	}
	indexForm = (Form_pg_index) FUNC2(tuple);

	/*
	 * We always mark indexes as clustered when we intercept a cluster
	 * command, if it's not marked as such here, something has gone wrong
	 */
	if (!indexForm->indisclustered)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_ASSERT_FAILURE), FUNC15("invalid index heap during reorder")));
	FUNC8(tuple);

	/*
	 * Also check for active uses of the relation in the current transaction,
	 * including open scans and pending AFTER trigger events.
	 */
	FUNC1(OldHeap, "CLUSTER");

	/* Check heap and index are valid to cluster on */
	FUNC11(OldHeap, indexOid, true, ExclusiveLock);

	/* timescale_rebuild_relation does all the dirty work */
	FUNC18(OldHeap,
							   indexOid,
							   verbose,
							   wait_id,
							   destination_tablespace,
							   index_tablespace);

	/* NB: timescale_rebuild_relation does heap_close() on OldHeap */
}