
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int Var ;
struct TYPE_8__ {scalar_t__ hash_proc; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_11__ {int fn_oid; } ;
struct TYPE_10__ {TYPE_7__ func_fmgr; int rettype; int schema; int name; } ;
struct TYPE_9__ {scalar_t__ column_attnum; TYPE_4__ partfunc; int dimtype; int column; } ;
typedef TYPE_2__ PartitioningInfo ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int FuncExpr ;
typedef int DimensionType ;


 int COERCE_EXPLICIT_CALL ;
 int DIMENSION_TYPE_CLOSED ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 scalar_t__ InvalidOid ;
 int NAMEDATALEN ;
 int StrNCpy (int ,char const*,int ) ;
 int TYPECACHE_HASH_FLAGS ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int fmgr_info_set_expr (int *,TYPE_7__*) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_attnum (scalar_t__,int ) ;
 scalar_t__ get_atttype (scalar_t__,scalar_t__) ;
 scalar_t__ get_typcollation (scalar_t__) ;
 int list_make1 (int *) ;
 TYPE_1__* lookup_type_cache (scalar_t__,int ) ;
 int * makeFuncExpr (int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int * makeVar (int,scalar_t__,scalar_t__,int,scalar_t__,int ) ;
 TYPE_2__* palloc0 (int) ;
 int partitioning_func_set_func_fmgr (TYPE_4__*,scalar_t__,int ) ;
 scalar_t__ ts_partitioning_func_is_closed_default (char const*,char const*) ;

PartitioningInfo *
ts_partitioning_info_create(const char *schema, const char *partfunc, const char *partcol,
       DimensionType dimtype, Oid relid)
{
 PartitioningInfo *pinfo;
 Oid columntype, varcollid, funccollid = InvalidOid;
 Var *var;
 FuncExpr *expr;

 if (schema == ((void*)0) || partfunc == ((void*)0) || partcol == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("partitioning function information cannot be null")));

 pinfo = palloc0(sizeof(PartitioningInfo));
 StrNCpy(pinfo->partfunc.name, partfunc, NAMEDATALEN);
 StrNCpy(pinfo->column, partcol, NAMEDATALEN);
 pinfo->column_attnum = get_attnum(relid, pinfo->column);
 pinfo->dimtype = dimtype;


 if (pinfo->column_attnum == InvalidAttrNumber)
  return ((void*)0);

 StrNCpy(pinfo->partfunc.schema, schema, NAMEDATALEN);


 columntype = get_atttype(relid, pinfo->column_attnum);

 if (dimtype == DIMENSION_TYPE_CLOSED)
 {
  TypeCacheEntry *tce = lookup_type_cache(columntype, TYPECACHE_HASH_FLAGS);

  if (tce->hash_proc == InvalidOid &&
   ts_partitioning_func_is_closed_default(schema, partfunc))
   elog(ERROR, "could not find hash function for type %s", format_type_be(columntype));
 }

 partitioning_func_set_func_fmgr(&pinfo->partfunc, columntype, dimtype);






 varcollid = get_typcollation(columntype);

 var = makeVar(1, pinfo->column_attnum, columntype, -1, varcollid, 0);

 expr = makeFuncExpr(pinfo->partfunc.func_fmgr.fn_oid,
      pinfo->partfunc.rettype,
      list_make1(var),
      funccollid,
      varcollid,
      COERCE_EXPLICIT_CALL);

 fmgr_info_set_expr((Node *) expr, &pinfo->partfunc.func_fmgr);

 return pinfo;
}
