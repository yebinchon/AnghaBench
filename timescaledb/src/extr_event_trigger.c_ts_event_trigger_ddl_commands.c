
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int rsinfo ;
typedef scalar_t__ fmNodePtr ;
typedef int TupleTableSlot ;
struct TYPE_10__ {int natts; } ;
struct TYPE_9__ {scalar_t__ resultinfo; } ;
struct TYPE_8__ {int econtext; TYPE_3__* setDesc; int setResult; int allowedModes; int type; } ;
typedef TYPE_1__ ReturnSetInfo ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__ FunctionCallInfoData ;
typedef int EState ;
typedef int Datum ;
typedef int CollectedCommand ;


 int * CreateExecutorState () ;
 int CreateExprContext (int *) ;
 int DDL_INFO_NATTS ;
 scalar_t__ DatumGetPointer (int ) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int ExecFetchSlotTuple (int *) ;
 int FreeExecutorState (int *) ;
 int FreeExprContext (int ,int) ;
 int FunctionCallInvoke (TYPE_2__*) ;
 int InitFunctionCallInfoData (TYPE_2__,int *,int,int ,int *,int *) ;
 int InvalidOid ;
 int * MakeSingleTupleTableSlot (TYPE_3__*) ;
 int MemSet (TYPE_1__*,int ,int) ;
 int * NIL ;
 int SFRM_Materialize ;
 int T_ReturnSetInfo ;
 int ddl_commands_fmgrinfo ;
 int heap_deform_tuple (int ,TYPE_3__*,int *,int*) ;
 int * lappend (int *,int *) ;
 scalar_t__ tuplestore_gettupleslot (int ,int,int,int *) ;

List *
ts_event_trigger_ddl_commands(void)
{
 ReturnSetInfo rsinfo;
 FunctionCallInfoData fcinfo;
 TupleTableSlot *slot;
 EState *estate = CreateExecutorState();
 List *objects = NIL;

 InitFunctionCallInfoData(fcinfo, &ddl_commands_fmgrinfo, 1, InvalidOid, ((void*)0), ((void*)0));
 MemSet(&rsinfo, 0, sizeof(rsinfo));
 rsinfo.type = T_ReturnSetInfo;
 rsinfo.allowedModes = SFRM_Materialize;
 rsinfo.econtext = CreateExprContext(estate);
 fcinfo.resultinfo = (fmNodePtr) &rsinfo;

 FunctionCallInvoke(&fcinfo);

 slot = MakeSingleTupleTableSlot(rsinfo.setDesc);

 while (tuplestore_gettupleslot(rsinfo.setResult, 1, 0, slot))
 {
  HeapTuple tuple = ExecFetchSlotTuple(slot);
  CollectedCommand *cmd;
  Datum values[DDL_INFO_NATTS];
  bool nulls[DDL_INFO_NATTS];

  heap_deform_tuple(tuple, rsinfo.setDesc, values, nulls);

  if (rsinfo.setDesc->natts > 8 && !nulls[8])
  {
   cmd = (CollectedCommand *) DatumGetPointer(values[8]);
   objects = lappend(objects, cmd);
  }
 }

 FreeExprContext(rsinfo.econtext, 0);
 FreeExecutorState(estate);
 ExecDropSingleTupleTableSlot(slot);

 return objects;
}
