#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  args; int /*<<< orphan*/  opno; } ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_1__ OpExpr ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  Const ; 
 double INVALID_ESTIMATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static double
FUNC7(PlannerInfo *root, OpExpr *opexpr)
{
	char *function_name = FUNC2(opexpr->opno);
	Expr *left;
	Expr *right;
	Expr *nonconst;

	if (FUNC4(opexpr->args) != 2 || FUNC6(function_name) != 1)
		return INVALID_ESTIMATE;

	left = FUNC3(opexpr->args);
	right = FUNC5(opexpr->args);

	if (FUNC0(left, Const))
		nonconst = right;
	else if (FUNC0(right, Const))
		nonconst = left;
	else
		return INVALID_ESTIMATE;

	/* adding or subtracting a constant doesn't affect the range */
	if (function_name[0] == '-' || function_name[0] == '+')
		return FUNC1(root, nonconst);

	return INVALID_ESTIMATE;
}