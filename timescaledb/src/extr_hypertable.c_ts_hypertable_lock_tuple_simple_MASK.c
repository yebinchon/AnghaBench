#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int HTSU_Result ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_LOCK_NOT_AVAILABLE ; 
 int /*<<< orphan*/  ERROR ; 
#define  HeapTupleBeingUpdated 133 
#define  HeapTupleInvisible 132 
#define  HeapTupleMayBeUpdated 131 
#define  HeapTupleSelfUpdated 130 
#define  HeapTupleUpdated 129 
#define  HeapTupleWouldBlock 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

bool
FUNC7(Oid table_relid)
{
	HTSU_Result result = FUNC6(table_relid);

	switch (result)
	{
		case HeapTupleSelfUpdated:

			/*
			 * Updated by the current transaction already. We equate this with
			 * a successful lock since the tuple should be locked if updated
			 * by us.
			 */
			return true;
		case HeapTupleMayBeUpdated:
			/* successfully locked */
			return true;
		case HeapTupleUpdated:
			FUNC1(ERROR,
					(FUNC2(ERRCODE_LOCK_NOT_AVAILABLE),
					 FUNC4("hypertable \"%s\" has already been updated by another transaction",
							FUNC5(table_relid)),
					 FUNC3("Retry the operation again")));
		case HeapTupleBeingUpdated:
			FUNC1(ERROR,
					(FUNC2(ERRCODE_LOCK_NOT_AVAILABLE),
					 FUNC4("hypertable \"%s\" is being updated by another transaction",
							FUNC5(table_relid)),
					 FUNC3("Retry the operation again")));
		case HeapTupleWouldBlock:
			/* Locking would block. Let caller decide what to do */
			return false;
		case HeapTupleInvisible:
			FUNC0(ERROR, "attempted to lock invisible tuple");
			return false;
		default:
			FUNC0(ERROR, "unexpected tuple lock status");
			return false;
	}
}