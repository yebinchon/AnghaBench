#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int relkind; } ;
struct TYPE_6__ {scalar_t__ parsetree; } ;
typedef  TYPE_1__ ProcessUtilityArgs ;
typedef  TYPE_2__ AlterTableStmt ;

/* Variables and functions */
#define  OBJECT_TABLE 129 
#define  OBJECT_VIEW 128 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC2(ProcessUtilityArgs *args)
{
	AlterTableStmt *stmt = (AlterTableStmt *) args->parsetree;
	switch (stmt->relkind)
	{
		case OBJECT_TABLE:
			return FUNC0(args);
		case OBJECT_VIEW:
			return FUNC1(args);
		default:
			return false;
	}
}