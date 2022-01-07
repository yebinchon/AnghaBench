
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int regproc ;
struct TYPE_7__ {int func_name; int func_schema; int func; } ;
struct TYPE_5__ {scalar_t__* values; } ;
struct TYPE_6__ {scalar_t__ pronargs; scalar_t__ prorettype; int proname; int pronamespace; TYPE_1__ proargtypes; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;
typedef TYPE_3__ ChunkSizingInfo ;


 scalar_t__ CHUNK_SIZING_FUNC_NARGS ;
 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ INT4OID ;
 scalar_t__ INT8OID ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int get_namespace_name (int ) ;
 int namestrcpy (int *,int ) ;

void
ts_chunk_sizing_func_validate(regproc func, ChunkSizingInfo *info)
{
 HeapTuple tuple;
 Form_pg_proc form;
 Oid *typearr;

 if (!OidIsValid(func))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION), (errmsg("invalid chunk sizing function"))));

 tuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(func));

 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for function %u", func);

 form = (Form_pg_proc) GETSTRUCT(tuple);
 typearr = form->proargtypes.values;

 if (form->pronargs != CHUNK_SIZING_FUNC_NARGS || typearr[0] != INT4OID ||
  typearr[1] != INT8OID || typearr[2] != INT8OID || form->prorettype != INT8OID)
 {
  ReleaseSysCache(tuple);
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
     errmsg("invalid function signature"),
     errhint("A chunk sizing function's signature should be (int, bigint, bigint) -> "
       "bigint")));
 }

 if (((void*)0) != info)
 {
  info->func = func;
  namestrcpy(&info->func_schema, get_namespace_name(form->pronamespace));
  namestrcpy(&info->func_name, NameStr(form->proname));
 }

 ReleaseSysCache(tuple);
}
