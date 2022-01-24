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
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  OpExpr ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  FuncExpr ;

/* Variables and functions */
 double INVALID_ESTIMATE ; 
#define  T_FuncExpr 129 
#define  T_OpExpr 128 
 double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double) ; 
 double FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static double
FUNC3(PlannerInfo *root, Node *expr, double path_rows)
{
	switch (FUNC2(expr))
	{
		case T_FuncExpr:
			return FUNC0(root, (FuncExpr *) expr, path_rows);
		case T_OpExpr:
			return FUNC1(root, (OpExpr *) expr, path_rows);
		default:
			return INVALID_ESTIMATE;
	}
}