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
struct TYPE_7__ {scalar_t__ is_grant; } ;
struct TYPE_6__ {scalar_t__ parsetree; } ;
typedef  TYPE_1__ ProcessUtilityArgs ;
typedef  TYPE_2__ GrantRoleStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC2(ProcessUtilityArgs *args)
{
	GrantRoleStmt *stmt = (GrantRoleStmt *) args->parsetree;

	/*
	 * Need to apply the REVOKE first to be able to check remaining
	 * permissions
	 */
	FUNC0(args);

	/* We only care about revokes and setting privileges on a specific object */
	if (stmt->is_grant)
		return true;

	FUNC1(stmt);

	return true;
}