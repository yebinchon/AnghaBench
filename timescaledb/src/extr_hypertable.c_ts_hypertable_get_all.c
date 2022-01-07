
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int CurrentMemoryContext ;
 int InvalidOid ;
 int LockTupleKeyShare ;
 int * NIL ;
 int hypertable_scan_limit_internal (int *,int ,int ,int ,int **,int,int ,int,int ) ;
 int hypertable_tuple_append ;

List *
ts_hypertable_get_all(void)
{
 List *result = NIL;

 hypertable_scan_limit_internal(((void*)0),
           0,
           InvalidOid,
           hypertable_tuple_append,
           &result,
           -1,
           LockTupleKeyShare,
           0,
           CurrentMemoryContext);

 return result;
}
