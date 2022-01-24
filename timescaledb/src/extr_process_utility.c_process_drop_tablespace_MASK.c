#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tablespacename; } ;
struct TYPE_4__ {scalar_t__ parsetree; } ;
typedef  TYPE_1__ ProcessUtilityArgs ;
typedef  TYPE_2__ DropTableSpaceStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ProcessUtilityArgs *args)
{
	DropTableSpaceStmt *stmt = (DropTableSpaceStmt *) args->parsetree;
	int count = FUNC4(stmt->tablespacename);

	if (count > 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC3("tablespace \"%s\" is still attached to %d hypertables",
						stmt->tablespacename,
						count),
				 FUNC2("Detach the tablespace from all hypertables before removing it.")));
}