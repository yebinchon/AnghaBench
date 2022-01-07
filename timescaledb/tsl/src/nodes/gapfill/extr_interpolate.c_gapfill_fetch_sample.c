
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int TupleDesc ;
struct TYPE_15__ {scalar_t__ typid; int typlen; int typbyval; } ;
struct TYPE_19__ {TYPE_2__ base; } ;
struct TYPE_18__ {int isnull; int value; int time; } ;
struct TYPE_17__ {size_t time_index; int gapfill_typid; TYPE_1__** columns; } ;
struct TYPE_16__ {int t_data; int t_tableOid; int t_self; int t_len; } ;
struct TYPE_14__ {scalar_t__ typid; } ;
struct TYPE_13__ {scalar_t__ atttypid; } ;
typedef int HeapTupleHeader ;
typedef TYPE_3__ HeapTupleData ;
typedef TYPE_4__ GapFillState ;
typedef TYPE_5__ GapFillInterpolateSample ;
typedef TYPE_6__ GapFillInterpolateColumnState ;
typedef int Expr ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetHeapTupleHeader (int ) ;
 int DecrTupleDescRefCount (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetNatts (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 scalar_t__ HeapTupleHeaderGetTypeId (int ) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 scalar_t__ RECORDOID ;
 TYPE_12__* TupleDescAttr (int ,int) ;
 int datumCopy (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int gapfill_datum_get_internal (int ,int ) ;
 int gapfill_exec_expr (TYPE_4__*,int *,int*) ;
 int heap_getattr (TYPE_3__*,int,int ,int*) ;
 int lookup_rowtype_tupdesc (scalar_t__,int ) ;

__attribute__((used)) static void
gapfill_fetch_sample(GapFillState *state, GapFillInterpolateColumnState *column,
      GapFillInterpolateSample *sample, Expr *lookup)
{
 HeapTupleHeader th;
 HeapTupleData tuple;
 TupleDesc tupdesc;
 Datum value;
 bool isnull;
 Datum datum = gapfill_exec_expr(state, lookup, &isnull);

 if (isnull)
 {
  sample->isnull = 1;
  return;
 }

 th = DatumGetHeapTupleHeader(datum);
 if (HeapTupleHeaderGetNatts(th) != 2)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("interpolate RECORD arguments must have 2 elements")));


 Assert(RECORDOID == HeapTupleHeaderGetTypeId(th));
 tupdesc = lookup_rowtype_tupdesc(HeapTupleHeaderGetTypeId(th), HeapTupleHeaderGetTypMod(th));


 tuple.t_len = HeapTupleHeaderGetDatumLength(th);
 ItemPointerSetInvalid(&(tuple.t_self));
 tuple.t_tableOid = InvalidOid;
 tuple.t_data = th;


 if (TupleDescAttr(tupdesc, 0)->atttypid != state->columns[state->time_index]->typid)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("first argument of interpolate returned record must match used timestamp "
      "datatype")));


 if (TupleDescAttr(tupdesc, 1)->atttypid != column->base.typid)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("second argument of interpolate returned record must match used "
      "interpolate datatype")));

 value = heap_getattr(&tuple, 1, tupdesc, &sample->isnull);
 if (!sample->isnull)
 {
  sample->time = gapfill_datum_get_internal(value, state->gapfill_typid);

  value = heap_getattr(&tuple, 2, tupdesc, &sample->isnull);
  if (!sample->isnull)
   sample->value = datumCopy(value, column->base.typbyval, column->base.typlen);
 }

 DecrTupleDescRefCount(tupdesc);
}
