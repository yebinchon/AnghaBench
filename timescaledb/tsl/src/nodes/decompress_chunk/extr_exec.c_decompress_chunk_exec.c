
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_9__ {int ps_TupFromTlist; int ps_ProjInfo; scalar_t__ qual; TYPE_3__* ps_ExprContext; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_12__ {scalar_t__ custom_ps; TYPE_2__ ss; } ;
struct TYPE_11__ {int * ecxt_scantuple; } ;
typedef scalar_t__ ExprDoneCond ;
typedef TYPE_3__ ExprContext ;
typedef int DecompressChunkState ;
typedef TYPE_4__ CustomScanState ;


 int ExecClearTuple (int *) ;
 int * ExecProject (int ,...) ;
 int ExecQual (scalar_t__,TYPE_3__*,...) ;
 scalar_t__ ExprEndResult ;
 scalar_t__ ExprMultipleResult ;
 int InstrCountFiltered1 (TYPE_4__*,int) ;
 scalar_t__ NIL ;
 int ResetExprContext (TYPE_3__*) ;
 scalar_t__ TupIsNull (int *) ;
 int * decompress_chunk_create_tuple (int *) ;

__attribute__((used)) static TupleTableSlot *
decompress_chunk_exec(CustomScanState *node)
{
 DecompressChunkState *state = (DecompressChunkState *) node;
 ExprContext *econtext = node->ss.ps.ps_ExprContext;





 if (node->custom_ps == NIL)
  return ((void*)0);
 ResetExprContext(econtext);

 while (1)
 {
  TupleTableSlot *slot = decompress_chunk_create_tuple(state);

  if (TupIsNull(slot))
   return ((void*)0);

  econtext->ecxt_scantuple = slot;




  if (node->ss.ps.qual && !ExecQual(node->ss.ps.qual, econtext))

  {
   InstrCountFiltered1(node, 1);
   ExecClearTuple(slot);
   continue;
  }

  if (!node->ss.ps.ps_ProjInfo)
   return slot;
  return ExecProject(node->ss.ps.ps_ProjInfo);

 }
}
