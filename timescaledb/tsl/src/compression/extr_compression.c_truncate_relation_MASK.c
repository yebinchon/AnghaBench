#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {scalar_t__ relpersistence; int /*<<< orphan*/  reltoastrelid; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REINDEX_REL_PROCESS_TOAST ; 
 scalar_t__ RELPERSISTENCE_UNLOGGED ; 
 int /*<<< orphan*/  RecentXmin ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(Oid table_oid)
{
	List *fks = FUNC7(FUNC8(table_oid));
	/* Take an access exclusive lock now. Note that this may very well
	 *  be a lock upgrade. */
	Relation rel = FUNC10(table_oid, AccessExclusiveLock);
	MultiXactId minmulti;
	Oid toast_relid;

	/* Chunks should never have fks into them, but double check */
	if (fks != NIL)
		FUNC5(ERROR, "found a FK into a chunk while truncating");

	FUNC1(rel);

	minmulti = FUNC2();

	FUNC4(rel, rel->rd_rel->relpersistence, RecentXmin, minmulti);

	toast_relid = rel->rd_rel->reltoastrelid;

	FUNC6(rel, NoLock);

	if (FUNC3(toast_relid))
	{
		rel = FUNC10(toast_relid, AccessExclusiveLock);
		FUNC4(rel, rel->rd_rel->relpersistence, RecentXmin, minmulti);
		FUNC0(rel->rd_rel->relpersistence != RELPERSISTENCE_UNLOGGED);
		FUNC6(rel, NoLock);
	}

	FUNC9(table_oid, REINDEX_REL_PROCESS_TOAST, 0);
}