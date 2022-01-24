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
struct TYPE_2__ {int relkind; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  CollectedCommand ;
typedef  TYPE_1__ AlterTableStmt ;

/* Variables and functions */
#define  OBJECT_INDEX 129 
#define  OBJECT_TABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(Node *parsetree, CollectedCommand *cmd)
{
	AlterTableStmt *stmt = (AlterTableStmt *) parsetree;

	switch (stmt->relkind)
	{
		case OBJECT_TABLE:
			FUNC1(parsetree, cmd);
			break;
		case OBJECT_INDEX:
			FUNC0(parsetree, cmd);
			break;
		default:
			break;
	}
}