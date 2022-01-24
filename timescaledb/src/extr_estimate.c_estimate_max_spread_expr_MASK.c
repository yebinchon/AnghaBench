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
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  OpExpr ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 double INVALID_ESTIMATE ; 
#define  T_OpExpr 129 
#define  T_Var 128 
 double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static double
FUNC3(PlannerInfo *root, Expr *expr)
{
	switch (FUNC2(expr))
	{
		case T_Var:
			return FUNC1(root, (Var *) expr);
		case T_OpExpr:
			return FUNC0(root, (OpExpr *) expr);
		default:
			return INVALID_ESTIMATE;
	}
}