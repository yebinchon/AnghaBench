
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ provolatile; scalar_t__ pronargs; scalar_t__ prorettype; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;


 int Assert (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_NO_DATA_FOUND ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int IS_INTEGER_TYPE (scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 int PROCOID ;
 scalar_t__ PROVOLATILE_IMMUTABLE ;
 scalar_t__ PROVOLATILE_STABLE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;

void
ts_interval_now_func_validate(Oid now_func_oid, Oid open_dim_type)
{
 HeapTuple tuple;
 Form_pg_proc now_func;


 Assert(IS_INTEGER_TYPE(open_dim_type));

 if (!OidIsValid(now_func_oid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION), (errmsg("invalid integer_now function"))));

 tuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(now_func_oid));
 if (!HeapTupleIsValid(tuple))
 {
  ReleaseSysCache(tuple);
  ereport(ERROR,
    (errcode(ERRCODE_NO_DATA_FOUND),
     errmsg("cache lookup failed for function %u", now_func_oid)));
 }

 now_func = (Form_pg_proc) GETSTRUCT(tuple);

 if ((now_func->provolatile != PROVOLATILE_IMMUTABLE &&
   now_func->provolatile != PROVOLATILE_STABLE) ||
  now_func->pronargs != 0)
 {
  ReleaseSysCache(tuple);
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("integer_now_func must take no arguments and it must be STABLE")));
 }

 if (now_func->prorettype != open_dim_type)
 {
  ReleaseSysCache(tuple);
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("return type of integer_now_func must be the same as "
      "the type of the time partitioning column of the hypertable")));
 }
 ReleaseSysCache(tuple);
}
