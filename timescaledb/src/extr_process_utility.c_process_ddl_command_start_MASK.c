#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  parsetree; } ;
typedef  TYPE_1__ ProcessUtilityArgs ;

/* Variables and functions */
#define  T_AlterObjectSchemaStmt 144 
#define  T_AlterTableStmt 143 
#define  T_ClusterStmt 142 
#define  T_CopyStmt 141 
#define  T_CreateTrigStmt 140 
#define  T_DropStmt 139 
#define  T_DropTableSpaceStmt 138 
#define  T_GrantRoleStmt 137 
#define  T_GrantStmt 136 
#define  T_IndexStmt 135 
#define  T_RefreshMatViewStmt 134 
#define  T_ReindexStmt 133 
#define  T_RenameStmt 132 
#define  T_RuleStmt 131 
#define  T_TruncateStmt 130 
#define  T_VacuumStmt 129 
#define  T_ViewStmt 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC18(ProcessUtilityArgs *args)
{
	bool handled = false;

	switch (FUNC0(args->parsetree))
	{
		case T_AlterObjectSchemaStmt:
			FUNC1(args);
			break;
		case T_TruncateStmt:
			handled = FUNC15(args);
			break;
		case T_AlterTableStmt:
			handled = FUNC2(args);
			break;
		case T_RenameStmt:
			FUNC14(args);
			break;
		case T_IndexStmt:
			handled = FUNC11(args);
			break;
		case T_CreateTrigStmt:
			handled = FUNC6(args);
			break;
		case T_RuleStmt:
			FUNC5(args);
			break;
		case T_DropStmt:

			/*
			 * Drop associated metadata/chunks but also continue on to drop
			 * the main table. Because chunks are deleted before the main
			 * table is dropped, the drop respects CASCADE in the expected
			 * way.
			 */
			FUNC7(args);
			break;
		case T_DropTableSpaceStmt:
			FUNC8(args);
			break;
		case T_GrantStmt:
			handled = FUNC9(args);
			break;
		case T_GrantRoleStmt:
			handled = FUNC10(args);
			break;
		case T_CopyStmt:
			handled = FUNC4(args);
			break;
		case T_VacuumStmt:
			handled = FUNC16(args);
			break;
		case T_ReindexStmt:
			handled = FUNC13(args);
			break;
		case T_ClusterStmt:
			handled = FUNC3(args);
			break;
		case T_ViewStmt:
			handled = FUNC17(args);
			break;
		case T_RefreshMatViewStmt:
			handled = FUNC12(args, args->parsetree);
			break;
		default:
			break;
	}

	return handled;
}