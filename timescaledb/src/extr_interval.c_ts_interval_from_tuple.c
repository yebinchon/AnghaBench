
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_7__ {int integer_interval; int time_interval; scalar_t__ is_time_interval; } ;
struct TYPE_6__ {int t_data; int t_tableOid; int t_self; int t_len; } ;
typedef int Oid ;
typedef int HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef TYPE_2__ FormData_ts_interval ;
typedef scalar_t__ Datum ;


 int Anum_integer_interval ;
 int Anum_is_time_interval ;
 int Anum_time_interval ;
 int Assert (int) ;
 size_t AttrNumberGetAttrOffset (int ) ;
 int DatumGetHeapTupleHeader (scalar_t__) ;
 int DatumGetInt64 (scalar_t__) ;
 int * DatumGetIntervalP (scalar_t__) ;
 int DecrTupleDescRefCount (int ) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int Natts_ts_interval ;
 int heap_deform_tuple (TYPE_1__*,int ,scalar_t__*,int*) ;
 int lookup_rowtype_tupdesc (int ,int ) ;
 TYPE_2__* palloc0 (int) ;

FormData_ts_interval *
ts_interval_from_tuple(Datum interval)
{
 bool isnull[Natts_ts_interval];
 Datum values[Natts_ts_interval];
 HeapTupleHeader th;
 HeapTupleData tuple;
 FormData_ts_interval *invl;

 Oid rowType;
 int32 rowTypmod;
 TupleDesc rowdesc;

 th = DatumGetHeapTupleHeader(interval);
 rowType = HeapTupleHeaderGetTypeId(th);
 rowTypmod = HeapTupleHeaderGetTypMod(th);
 rowdesc = lookup_rowtype_tupdesc(rowType, rowTypmod);

 tuple.t_len = HeapTupleHeaderGetDatumLength(th);
 ItemPointerSetInvalid(&(tuple.t_self));
 tuple.t_tableOid = InvalidOid;
 tuple.t_data = th;

 heap_deform_tuple(&tuple, rowdesc, values, isnull);

 DecrTupleDescRefCount(rowdesc);

 invl = palloc0(sizeof(FormData_ts_interval));

 Assert(!isnull[AttrNumberGetAttrOffset(Anum_is_time_interval)]);

 invl->is_time_interval = values[AttrNumberGetAttrOffset(Anum_is_time_interval)];
 if (invl->is_time_interval)
 {
  Assert(!isnull[AttrNumberGetAttrOffset(Anum_time_interval)]);
  Assert(isnull[AttrNumberGetAttrOffset(Anum_integer_interval)]);
  invl->time_interval =
   *DatumGetIntervalP(values[AttrNumberGetAttrOffset(Anum_time_interval)]);
 }
 else
 {
  Assert(isnull[AttrNumberGetAttrOffset(Anum_time_interval)]);
  Assert(!isnull[AttrNumberGetAttrOffset(Anum_integer_interval)]);
  invl->integer_interval =
   DatumGetInt64(values[AttrNumberGetAttrOffset(Anum_integer_interval)]);
 }

 return invl;
}
