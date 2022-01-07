
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64 ;
typedef int TupleDesc ;
struct TYPE_5__ {int column_name; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ fd; int * partitioning; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__ Dimension ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int) ;
 scalar_t__ DIMENSION_TYPE_OPEN ;
 int ERRCODE_NOT_NULL_VIOLATION ;
 int ERROR ;
 int NameStr (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int ts_dimension_get_partition_type (TYPE_2__*) ;
 int ts_partitioning_func_apply (int *,int ) ;
 int ts_time_value_to_internal (int ,int ) ;

__attribute__((used)) static int64
tuple_get_time(Dimension *d, HeapTuple tuple, AttrNumber col, TupleDesc tupdesc)
{
 Datum datum;
 bool isnull;
 Oid dimtype;

 datum = heap_getattr(tuple, col, tupdesc, &isnull);

 if (((void*)0) != d->partitioning)
  datum = ts_partitioning_func_apply(d->partitioning, datum);

 Assert(d->type == DIMENSION_TYPE_OPEN);

 dimtype = ts_dimension_get_partition_type(d);

 if (isnull)
  ereport(ERROR,
    (errcode(ERRCODE_NOT_NULL_VIOLATION),
     errmsg("NULL value in column \"%s\" violates not-null constraint",
      NameStr(d->fd.column_name)),
     errhint("Columns used for time partitioning cannot be NULL")));

 return ts_time_value_to_internal(datum, dimtype);
}
