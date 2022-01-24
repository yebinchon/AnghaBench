#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  varcollid; int /*<<< orphan*/  vartype; } ;
typedef  TYPE_2__ Var ;
struct TYPE_9__ {TYPE_1__* compressed_rel; } ;
struct TYPE_7__ {int /*<<< orphan*/  relid; } ;
typedef  int /*<<< orphan*/  StrategyNumber ;
typedef  TYPE_3__ QualPushdownContext ;
typedef  int /*<<< orphan*/  OpExpr ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BOOLOID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OpExpr *
FUNC3(QualPushdownContext *context, Oid opno, AttrNumber meta_column_attno,
						 Var *uncompressed_var, Expr *compare_to_expr, StrategyNumber strategy)
{
	Var *meta_var = FUNC1(context->compressed_rel->relid,
							meta_column_attno,
							uncompressed_var->vartype,
							-1,
							InvalidOid,
							0);

	return (OpExpr *) FUNC2(opno,
									BOOLOID,
									false,
									(Expr *) meta_var,
									FUNC0(compare_to_expr),
									InvalidOid,
									uncompressed_var->varcollid);
}