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
struct TYPE_2__ {scalar_t__ tgisinternal; int /*<<< orphan*/  tgname; int /*<<< orphan*/  tgtype; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_trigger ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OLD_INSERT_BLOCKER_NAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_BEFORE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_INSERT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_ROW ; 
 int /*<<< orphan*/  TriggerRelationId ; 
 int /*<<< orphan*/  TriggerRelidNameIndexId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC14(Oid relid)
{
	Relation tgrel;
	ScanKeyData skey[1];
	SysScanDesc tgscan;
	HeapTuple tuple;
	Oid tgoid = InvalidOid;

	tgrel = FUNC8(TriggerRelationId, AccessShareLock);

	FUNC5(&skey[0],
				Anum_pg_trigger_tgrelid,
				BTEqualStrategyNumber,
				F_OIDEQ,
				FUNC4(relid));

	tgscan = FUNC11(tgrel, TriggerRelidNameIndexId, true, NULL, 1, skey);

	while (FUNC2(tuple = FUNC13(tgscan)))
	{
		Form_pg_trigger trig = (Form_pg_trigger) FUNC0(tuple);

		if (FUNC6(trig->tgtype,
								 TRIGGER_TYPE_ROW,
								 TRIGGER_TYPE_BEFORE,
								 TRIGGER_TYPE_INSERT) &&
			FUNC10(OLD_INSERT_BLOCKER_NAME,
					FUNC3(trig->tgname),
					FUNC9(OLD_INSERT_BLOCKER_NAME)) == 0 &&
			trig->tgisinternal)
		{
			tgoid = FUNC1(tuple);
			break;
		}
	}

	FUNC12(tgscan);
	FUNC7(tgrel, AccessShareLock);

	return tgoid;
}