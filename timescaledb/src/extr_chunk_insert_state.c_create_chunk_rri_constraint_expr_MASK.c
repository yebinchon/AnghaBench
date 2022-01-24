#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ccbin; } ;
struct TYPE_11__ {TYPE_2__* rd_att; } ;
struct TYPE_10__ {int /*<<< orphan*/ ** ri_ConstraintExprs; } ;
struct TYPE_9__ {TYPE_1__* constr; } ;
struct TYPE_8__ {int num_check; TYPE_5__* check; } ;
typedef  TYPE_3__ ResultRelInfo ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_5__ ConstrCheck ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(ResultRelInfo *rri, Relation rel)
{
	int ncheck, i;
	ConstrCheck *check;

	FUNC0(rel->rd_att->constr != NULL && rri->ri_ConstraintExprs == NULL);

	ncheck = rel->rd_att->constr->num_check;
	check = rel->rd_att->constr->check;
#if PG96
	rri->ri_ConstraintExprs = (List **) palloc(ncheck * sizeof(List *));

	for (i = 0; i < ncheck; i++)
	{
		/* ExecQual wants implicit-AND form */
		List *qual = make_ands_implicit(stringToNode(check[i].ccbin));

		rri->ri_ConstraintExprs[i] = (List *) prepare_constr_expr((Expr *) qual);
	}
#else
	rri->ri_ConstraintExprs = (ExprState **) FUNC2(ncheck * sizeof(ExprState *));

	for (i = 0; i < ncheck; i++)
	{
		Expr *checkconstr = FUNC4(check[i].ccbin);

		rri->ri_ConstraintExprs[i] = FUNC3(checkconstr);
	}
#endif
}