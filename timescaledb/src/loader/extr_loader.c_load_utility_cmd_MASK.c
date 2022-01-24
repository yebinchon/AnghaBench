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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  T_AlterExtensionStmt 131 
#define  T_CreateExtensionStmt 130 
#define  T_DropStmt 129 
#define  T_VariableSetStmt 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(Node *utility_stmt)
{
	switch (FUNC0(utility_stmt))
	{
		case T_VariableSetStmt:
			return FUNC4(utility_stmt);
		case T_AlterExtensionStmt:
			return FUNC1(utility_stmt);
		case T_CreateExtensionStmt:
			return FUNC2(utility_stmt);
		case T_DropStmt:
			return FUNC3(utility_stmt);
		default:
			return true;
	}
}