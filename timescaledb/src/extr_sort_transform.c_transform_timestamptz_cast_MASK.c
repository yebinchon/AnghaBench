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
struct TYPE_3__ {int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ FuncExpr ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Var ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Expr *
FUNC5(FuncExpr *func)
{
	/*
	 * Transform cast from date to timestamptz, or timestamp to timestamptz,
	 * or abstime to timestamptz Handles only single-argument versions of the
	 * cast to avoid explicit timezone specifiers
	 *
	 *
	 * timestamptz(var) => var
	 *
	 * proof: timestamptz(time1) >= timestamptz(time2) iff time1 > time2
	 *
	 */

	Expr *first;

	if (FUNC3(func->args) != 1)
		return (Expr *) func;

	first = FUNC4(FUNC2(func->args));
	if (!FUNC0(first, Var))
		return (Expr *) func;

	return (Expr *) FUNC1(first);
}