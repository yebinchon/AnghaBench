
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rsinfo ;
typedef scalar_t__ fmNodePtr ;
typedef int TupleTableSlot ;
struct TYPE_7__ {scalar_t__ resultinfo; } ;
struct TYPE_6__ {int econtext; int setDesc; int setResult; int allowedModes; int type; } ;
typedef TYPE_1__ ReturnSetInfo ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__ FunctionCallInfoData ;
typedef int EState ;
typedef int Datum ;



 int * CreateExecutorState () ;
 int CreateExprContext (int *) ;
 int DROPPED_OBJECTS_NATTS ;
 int DatumGetArrayTypeP (int ) ;
 int DatumGetObjectId (int ) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int ExecFetchSlotTuple (int *) ;
 int FreeExecutorState (int *) ;
 int FreeExprContext (int ,int) ;
 int FunctionCallInvoke (TYPE_2__*) ;
 int InitFunctionCallInfoData (TYPE_2__,int *,int ,int ,int *,int *) ;
 int InvalidOid ;
 int * MakeSingleTupleTableSlot (int ) ;
 int MemSet (TYPE_1__*,int ,int) ;
 int * NIL ;


 int SFRM_Materialize ;
 int T_ReturnSetInfo ;
 char* TextDatumGetCString (int ) ;

 int dropped_objects_fmgrinfo ;
 int * extract_addrnames (int ) ;
 int heap_deform_tuple (int ,int ,int *,int*) ;
 int * lappend (int *,int ) ;
 int linitial (int *) ;
 int lsecond (int *) ;
 int lthird (int *) ;
 int make_event_trigger_drop_index (int ,int ) ;
 int make_event_trigger_drop_schema (int ) ;
 int make_event_trigger_drop_table (int ,int ) ;
 int make_event_trigger_drop_table_constraint (int ,int ,int ) ;
 int make_event_trigger_drop_trigger (int ,int ,int ) ;
 int make_event_trigger_drop_view (int ,int ) ;
 int strcmp (char*,char*) ;
 scalar_t__ tuplestore_gettupleslot (int ,int,int,int *) ;

List *
ts_event_trigger_dropped_objects(void)
{
 ReturnSetInfo rsinfo;
 FunctionCallInfoData fcinfo;
 TupleTableSlot *slot;
 EState *estate = CreateExecutorState();
 List *objects = NIL;

 InitFunctionCallInfoData(fcinfo, &dropped_objects_fmgrinfo, 0, InvalidOid, ((void*)0), ((void*)0));
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
  Datum values[DROPPED_OBJECTS_NATTS];
  bool nulls[DROPPED_OBJECTS_NATTS];
  Oid class_id;
  char *objtype;

  heap_deform_tuple(tuple, rsinfo.setDesc, values, nulls);

  class_id = DatumGetObjectId(values[0]);

  switch (class_id)
  {
   case 131:
    objtype = TextDatumGetCString(values[6]);
    if (objtype != ((void*)0) && strcmp(objtype, "table constraint") == 0)
    {
     List *addrnames = extract_addrnames(DatumGetArrayTypeP(values[10]));

     objects = lappend(objects,
           make_event_trigger_drop_table_constraint(lthird(addrnames),
                      linitial(addrnames),
                      lsecond(addrnames)));
    }
    break;
   case 129:
    objtype = TextDatumGetCString(values[6]);
    if (objtype == ((void*)0))
     break;
    if (strcmp(objtype, "index") == 0)
    {
     List *addrnames = extract_addrnames(DatumGetArrayTypeP(values[10]));

     objects = lappend(objects,
           make_event_trigger_drop_index(lsecond(addrnames),
                 linitial(addrnames)));
    }
    else if (strcmp(objtype, "table") == 0)
    {
     List *addrnames = extract_addrnames(DatumGetArrayTypeP(values[10]));

     objects = lappend(objects,
           make_event_trigger_drop_table(lsecond(addrnames),
                 linitial(addrnames)));
    }
    else if (strcmp(objtype, "view") == 0)
    {
     List *addrnames = extract_addrnames(DatumGetArrayTypeP(values[10]));

     objects = lappend(objects,
           make_event_trigger_drop_view(lsecond(addrnames),
                   linitial(addrnames)));
    }
    break;
   case 130:
   {
    List *addrnames = extract_addrnames(DatumGetArrayTypeP(values[10]));

    objects = lappend(objects, make_event_trigger_drop_schema(linitial(addrnames)));
   }
   break;
   case 128:
   {
    List *addrnames = extract_addrnames(DatumGetArrayTypeP(values[10]));

    objects = lappend(objects,
          make_event_trigger_drop_trigger(lthird(addrnames),
                  linitial(addrnames),
                  lsecond(addrnames)));
   }
   break;

   default:
    break;
  }
 }

 FreeExprContext(rsinfo.econtext, 0);
 FreeExecutorState(estate);
 ExecDropSingleTupleTableSlot(slot);

 return objects;
}
