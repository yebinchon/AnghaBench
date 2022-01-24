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
struct TYPE_3__ {int /*<<< orphan*/  opno; int /*<<< orphan*/  args; } ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_1__ OpExpr ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  Const ; 
 double INVALID_ESTIMATE ; 
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double) ; 
 double FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double
FUNC8(PlannerInfo *root, OpExpr *opexpr, double path_rows)
{
	Node *first;
	Node *second;
	double estimate;

	if (FUNC6(opexpr->args) != 2)
		return INVALID_ESTIMATE;

	first = FUNC2(root, FUNC5(opexpr->args));
	second = FUNC2(root, FUNC7(opexpr->args));

	estimate = FUNC4(root, opexpr->opno, first, second);
	if (FUNC0(estimate))
		return estimate;

	if (FUNC1(first, Const))
		return FUNC3(root, second, path_rows);
	if (FUNC1(second, Const))
		return FUNC3(root, first, path_rows);
	return INVALID_ESTIMATE;
}