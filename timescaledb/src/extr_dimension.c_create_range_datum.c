
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_4__ {int range_end; int range_start; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef TYPE_2__ DimensionSlice ;
typedef int Datum ;


 int BlessTupleDesc (int ) ;
 int ERROR ;
 int HeapTupleGetDatum (int ) ;
 int Int64GetDatum (int ) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int elog (int ,char*) ;
 scalar_t__ get_call_result_type (int ,int *,int *) ;
 int heap_form_tuple (int ,int *,int*) ;

__attribute__((used)) static Datum
create_range_datum(FunctionCallInfo fcinfo, DimensionSlice *slice)
{
 TupleDesc tupdesc;
 Datum values[2];
 bool nulls[2] = { 0 };
 HeapTuple tuple;

 if (get_call_result_type(fcinfo, ((void*)0), &tupdesc) != TYPEFUNC_COMPOSITE)
  elog(ERROR, "function returning record called in context that cannot accept type record");

 tupdesc = BlessTupleDesc(tupdesc);

 values[0] = Int64GetDatum(slice->fd.range_start);
 values[1] = Int64GetDatum(slice->fd.range_end);
 tuple = heap_form_tuple(tupdesc, values, nulls);

 return HeapTupleGetDatum(tuple);
}
