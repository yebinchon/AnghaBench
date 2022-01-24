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
struct TYPE_2__ {scalar_t__ contype; scalar_t__ connoinherit; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_conrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CONSTRAINT_CHECK ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ConstraintRelidTypidNameIndexId ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(Oid relid)
{
	Relation catalog;
	SysScanDesc scan;
	ScanKeyData scankey;
	HeapTuple tuple;

	catalog = FUNC10(ConstraintRelationId, AccessShareLock);

	FUNC3(&scankey,
				Anum_pg_constraint_conrelid,
				BTEqualStrategyNumber,
				F_OIDEQ,
				FUNC2(relid));

	scan = FUNC11(catalog, ConstraintRelidTypidNameIndexId, true, NULL, 1, &scankey);

	while (FUNC1(tuple = FUNC13(scan)))
	{
		Form_pg_constraint form = (Form_pg_constraint) FUNC0(tuple);

		if (form->contype == CONSTRAINT_CHECK && form->connoinherit)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_TABLE_DEFINITION),
					 FUNC7("cannot have NO INHERIT constraints on hypertable \"%s\"",
							FUNC8(relid)),
					 FUNC6("Remove all NO INHERIT constraints from table \"%s\" before making it "
							 "a hypertable.",
							 FUNC8(relid))));
	}

	FUNC12(scan);
	FUNC9(catalog, AccessShareLock);
}