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
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(Oid tspcoid, Oid role, Oid relid)
{
	AclResult aclresult = FUNC6(tspcoid, role, ACL_CREATE);

	if (aclresult != ACLCHECK_OK)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
				 FUNC3("cannot revoke privilege while tablespace \"%s\" is attached to hypertable "
						"\"%s\"",
						FUNC5(tspcoid),
						FUNC4(relid)),
				 FUNC2("Detach the tablespace before revoking the privilege on it.")));
}