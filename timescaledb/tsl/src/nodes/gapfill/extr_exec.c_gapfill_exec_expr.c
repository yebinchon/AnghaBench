
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int state; } ;
struct TYPE_12__ {int ecxt_scantuple; } ;
struct TYPE_9__ {TYPE_7__ ps; } ;
struct TYPE_10__ {TYPE_1__ ss; } ;
struct TYPE_11__ {int scanslot; TYPE_2__ csstate; } ;
typedef TYPE_3__ GapFillState ;
typedef int ExprState ;
typedef TYPE_4__ ExprContext ;
typedef int Expr ;
typedef int Datum ;


 int ExecEvalExprSwitchContext (int *,TYPE_4__*,int*,...) ;
 int * ExecInitExpr (int *,TYPE_7__*) ;
 TYPE_4__* GetPerTupleExprContext (int ) ;

Datum
gapfill_exec_expr(GapFillState *state, Expr *expr, bool *isnull)
{
 ExprState *exprstate = ExecInitExpr(expr, &state->csstate.ss.ps);
 ExprContext *exprcontext = GetPerTupleExprContext(state->csstate.ss.ps.state);

 exprcontext->ecxt_scantuple = state->scanslot;




 return ExecEvalExprSwitchContext(exprstate, exprcontext, isnull);

}
