#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ FuncExpr ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Var ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Expr *
FUNC7(FuncExpr *func)
{
	/*
	 * time_bucket(const, var, const) => var
	 *
	 * proof: time_bucket(const1, time1) >= time_bucket(const1,time2) iff time1
	 * > time2
	 */
	Expr *second;

	FUNC0(FUNC3(func->args) >= 2);

	/*
	 * If period and offset are not constants we must not do the optimization
	 */
	if (!FUNC5(func))
		return (Expr *) func;

	second = FUNC6(FUNC4(func->args));

	if (!FUNC1(second, Var))
		return (Expr *) func;

	return (Expr *) FUNC2(second);
}