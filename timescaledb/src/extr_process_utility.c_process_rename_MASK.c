#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ parsetree; } ;
struct TYPE_14__ {int renameType; int /*<<< orphan*/ * relation; } ;
typedef  TYPE_1__ RenameStmt ;
typedef  TYPE_2__ ProcessUtilityArgs ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NoLock ; 
#define  OBJECT_COLUMN 133 
#define  OBJECT_INDEX 132 
#define  OBJECT_SCHEMA 131 
#define  OBJECT_TABCONSTRAINT 130 
#define  OBJECT_TABLE 129 
#define  OBJECT_VIEW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 

__attribute__((used)) static void
FUNC10(ProcessUtilityArgs *args)
{
	RenameStmt *stmt = (RenameStmt *) args->parsetree;
	Oid relid = InvalidOid;
	Cache *hcache;

	/* Only get the relid if it exists for this stmt */
	if (NULL != stmt->relation)
	{
		relid = FUNC1(stmt->relation, NoLock, true);
		if (!FUNC0(relid))
			return;
	}
	else
	{
		/*
		 * stmt->relation never be NULL unless we are renaming a schema
		 */
		if (stmt->renameType != OBJECT_SCHEMA)
			return;
	}

	hcache = FUNC9();

	switch (stmt->renameType)
	{
		case OBJECT_TABLE:
			FUNC6(args, hcache, relid, stmt);
			break;
		case OBJECT_COLUMN:
			FUNC2(args, hcache, relid, stmt);
			break;
		case OBJECT_INDEX:
			FUNC4(args, hcache, relid, stmt);
			break;
		case OBJECT_TABCONSTRAINT:
			FUNC3(args, hcache, relid, stmt);
			break;
		case OBJECT_VIEW:
			FUNC7(relid, stmt);
			break;
		case OBJECT_SCHEMA:
			FUNC5(stmt);
			break;
		default:
			break;
	}

	FUNC8(hcache);
}