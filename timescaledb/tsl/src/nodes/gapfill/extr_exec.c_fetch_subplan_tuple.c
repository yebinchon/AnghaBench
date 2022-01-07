
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_7__ {int ps_TupFromTlist; int ps_ProjInfo; TYPE_3__* ps_ExprContext; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_10__ {TYPE_2__ ss; int custom_ps; } ;
struct TYPE_9__ {int * ecxt_scantuple; } ;
typedef scalar_t__ ExprDoneCond ;
typedef TYPE_3__ ExprContext ;
typedef TYPE_4__ CustomScanState ;


 int * ExecProcNode (int ) ;
 int * ExecProject (int ,...) ;
 scalar_t__ ExprEndResult ;
 scalar_t__ ExprMultipleResult ;
 int ResetExprContext (TYPE_3__*) ;
 scalar_t__ TupIsNull (int *) ;
 int linitial (int ) ;

__attribute__((used)) static TupleTableSlot *
fetch_subplan_tuple(CustomScanState *node)
{
 TupleTableSlot *subslot;
 ExprContext *econtext = node->ss.ps.ps_ExprContext;
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
