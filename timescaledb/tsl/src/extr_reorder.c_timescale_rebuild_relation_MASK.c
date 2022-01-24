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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {char relpersistence; int /*<<< orphan*/  reltablespace; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Relation OldHeap, Oid indexOid, bool verbose, Oid wait_id,
						   Oid destination_tablespace, Oid index_tablespace)
{
	Oid tableOid = FUNC1(OldHeap);
	Oid tableSpace = FUNC0(destination_tablespace) ? destination_tablespace :
														  OldHeap->rd_rel->reltablespace;
	Oid OIDNewHeap;
	List *old_index_oids;
	List *new_index_oids;
	char relpersistence;
	bool swap_toast_by_content;
	TransactionId frozenXid;
	MultiXactId cutoffMulti;

	/* Mark the correct index as clustered */
	FUNC6(OldHeap, indexOid, true);

	/* Remember info about rel before closing OldHeap */
	relpersistence = OldHeap->rd_rel->relpersistence;

	/* Close relcache entry, but keep lock until transaction commit */
	FUNC4(OldHeap, NoLock);

	/* Create the transient table that will receive the re-ordered data */
	OIDNewHeap = FUNC5(tableOid, tableSpace, relpersistence, ExclusiveLock);

	/* Copy the heap data into the new table in the desired order */
	FUNC2(OIDNewHeap,
				   tableOid,
				   indexOid,
				   verbose,
				   &swap_toast_by_content,
				   &frozenXid,
				   &cutoffMulti);

	/* Create versions of the tables indexes for the new table */
	new_index_oids =
		FUNC7(tableOid, OIDNewHeap, &old_index_oids, index_tablespace);

	/*
	 * Swap the physical files of the target and transient tables, then
	 * rebuild the target's indexes and throw away the transient table.
	 */
	FUNC3(tableOid,
					  OIDNewHeap,
					  old_index_oids,
					  new_index_oids,
					  swap_toast_by_content,
					  true,
					  frozenXid,
					  cutoffMulti,
					  wait_id);
}