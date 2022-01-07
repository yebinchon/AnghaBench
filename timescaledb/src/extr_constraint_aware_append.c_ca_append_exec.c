
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_12__ {scalar_t__ num_append_subplans; } ;
struct TYPE_8__ {int ps_TupFromTlist; int ps_ProjInfo; TYPE_3__* ps_ExprContext; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ ss; int custom_ps; } ;
struct TYPE_10__ {int * ecxt_scantuple; } ;
typedef scalar_t__ ExprDoneCond ;
typedef TYPE_3__ ExprContext ;
typedef TYPE_4__ CustomScanState ;
typedef TYPE_5__ ConstraintAwareAppendState ;


 int * ExecProcNode (int ) ;
 int * ExecProject (int ,...) ;
 scalar_t__ ExprEndResult ;
 scalar_t__ ExprMultipleResult ;
 int ResetExprContext (TYPE_3__*) ;
 scalar_t__ TupIsNull (int *) ;
 int linitial (int ) ;

__attribute__((used)) static TupleTableSlot *
ca_append_exec(CustomScanState *node)
{
 ConstraintAwareAppendState *state = (ConstraintAwareAppendState *) node;
 TupleTableSlot *subslot;
 ExprContext *econtext = node->ss.ps.ps_ExprContext;
 if (state->num_append_subplans == 0)
  return ((void*)0);
 ResetExprContext(econtext);

 while (1)
 {
  subslot = ExecProcNode(linitial(node->custom_ps));

  if (TupIsNull(subslot))
   return ((void*)0);

  if (!node->ss.ps.ps_ProjInfo)
   return subslot;

  econtext->ecxt_scantuple = subslot;
  return ExecProject(node->ss.ps.ps_ProjInfo);

 }
}
