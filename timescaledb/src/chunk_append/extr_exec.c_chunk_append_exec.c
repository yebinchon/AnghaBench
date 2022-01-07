
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_14__ {size_t current; size_t num_subplans; int (* choose_next_subplan ) (TYPE_5__*) ;int ** subplanstates; } ;
struct TYPE_10__ {int ps_TupFromTlist; int * ps_ProjInfo; int ps_ResultTupleSlot; TYPE_3__* ps_ExprContext; } ;
struct TYPE_11__ {TYPE_1__ ps; } ;
struct TYPE_13__ {TYPE_2__ ss; } ;
struct TYPE_12__ {int * ecxt_scantuple; } ;
typedef int PlanState ;
typedef scalar_t__ ExprDoneCond ;
typedef TYPE_3__ ExprContext ;
typedef TYPE_4__ CustomScanState ;
typedef TYPE_5__ ChunkAppendState ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int * ExecClearTuple (int ) ;
 int * ExecProcNode (int *) ;
 int * ExecProject (int *,...) ;
 scalar_t__ ExprEndResult ;
 scalar_t__ ExprMultipleResult ;
 size_t INVALID_SUBPLAN_INDEX ;
 size_t NO_MATCHING_SUBPLANS ;
 int ResetExprContext (TYPE_3__*) ;
 int TupIsNull (int *) ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_5__*) ;

__attribute__((used)) static TupleTableSlot *
chunk_append_exec(CustomScanState *node)
{
 ChunkAppendState *state = (ChunkAppendState *) node;
 TupleTableSlot *subslot;
 ExprContext *econtext = node->ss.ps.ps_ExprContext;





 if (state->current == INVALID_SUBPLAN_INDEX)
  state->choose_next_subplan(state);
 while (1)
 {
  PlanState *subnode;

  CHECK_FOR_INTERRUPTS();

  if (state->current == NO_MATCHING_SUBPLANS)
   return ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);

  Assert(state->current >= 0 && state->current < state->num_subplans);

  subnode = state->subplanstates[state->current];




  subslot = ExecProcNode(subnode);

  if (!TupIsNull(subslot))
  {




   if (node->ss.ps.ps_ProjInfo == ((void*)0))
    return subslot;

   ResetExprContext(econtext);
   econtext->ecxt_scantuple = subslot;
   return ExecProject(node->ss.ps.ps_ProjInfo);

  }

  state->choose_next_subplan(state);


 }
}
