#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ datistemplate; int /*<<< orphan*/  datallowconn; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  HeapScanDesc ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__* Form_pg_database ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(HTAB *db_htab)
{
	Relation rel;
	HeapScanDesc scan;
	HeapTuple tup;

	/*
	 * by this time we should already be connected to the db, and only have
	 * access to shared catalogs
	 */
	FUNC5();
	(void) FUNC2();

	rel = FUNC11(DatabaseRelationId, AccessShareLock);
	scan = FUNC7(rel, 0, NULL);

	while (FUNC4(tup = FUNC10(scan, ForwardScanDirection)))
	{
		Form_pg_database pgdb = (Form_pg_database) FUNC1(tup);

		if (!pgdb->datallowconn || pgdb->datistemplate)
			continue; /* don't bother with dbs that don't allow
					   * connections or are templates */

		FUNC6(db_htab, FUNC3(tup));
	}
	FUNC9(scan);
	FUNC8(rel, AccessShareLock);

	FUNC0();
}