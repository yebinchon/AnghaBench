
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int* argnull; scalar_t__* arg; } ;
struct TYPE_11__ {TYPE_9__ finalfn_fcinfo; int finalfn; int finalfnoid; } ;
struct TYPE_10__ {int internal_deserialfn; TYPE_9__ internal_deserialfn_fcinfo; int recv_fn; int typIOParam; int transtype; int deserialfn; TYPE_9__ deserialfn_fcinfo; int deserialfnoid; int combinefn; TYPE_9__ combfn_fcinfo; int combinefnoid; } ;
struct TYPE_15__ {TYPE_2__ final_meta; TYPE_1__ combine_meta; } ;
struct TYPE_14__ {scalar_t__ aggnumdirectargs; int aggtranstype; scalar_t__ aggfinalextra; int aggdeserialfn; int aggcombinefn; int aggfinalfn; } ;
struct TYPE_13__ {TYPE_3__* flinfo; scalar_t__ context; } ;
struct TYPE_12__ {void* fn_extra; int fn_mcxt; } ;
typedef int Oid ;
typedef int Node ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_4__* FunctionCallInfo ;
typedef TYPE_5__* Form_pg_aggregate ;
typedef TYPE_6__ FAPerQueryState ;
typedef int Expr ;
typedef scalar_t__ Datum ;
typedef int ArrayType ;
typedef int AggState ;


 int AGGFNOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InitFunctionCallInfoData (TYPE_9__,int *,int,int ,void*,int *) ;
 int InvalidOid ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 char* NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ PG_ARGISNULL (int) ;
 int * PG_GETARG_ARRAYTYPE_P (int) ;
 int * PG_GETARG_NAME (int) ;
 int PG_GETARG_TEXT_PP (int) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int aggfnoid_from_aggname (int ) ;
 int build_aggregate_finalfn_expr (int *,int,int ,int ,int ,int ,int **) ;
 int collation_oid_from_name (char*,char*) ;
 int elog (int ,char*,...) ;
 int fmgr_info_cxt (int ,int *,int ) ;
 int fmgr_info_set_expr (int *,int *) ;
 int getTypeBinaryInputInfo (int ,int *,int *) ;
 int get_func_nargs (int ) ;
 int * get_input_types (int *,size_t*) ;

__attribute__((used)) static FAPerQueryState *
fa_perquery_state_init(FunctionCallInfo fcinfo)
{
 char *inner_agg_input_coll_schema = PG_ARGISNULL(2) ? ((void*)0) : NameStr(*PG_GETARG_NAME(2));
 char *inner_agg_input_coll_name = PG_ARGISNULL(3) ? ((void*)0) : NameStr(*PG_GETARG_NAME(3));
 ArrayType *input_types = PG_ARGISNULL(4) ? ((void*)0) : PG_GETARG_ARRAYTYPE_P(4);
 Oid inner_agg_fn_oid = aggfnoid_from_aggname(PG_GETARG_TEXT_PP(1));

 Oid collation = collation_oid_from_name(inner_agg_input_coll_schema, inner_agg_input_coll_name);
 FAPerQueryState *tstate;
 HeapTuple inner_agg_tuple;
 Form_pg_aggregate inner_agg_form;
 MemoryContext qcontext = fcinfo->flinfo->fn_mcxt;
 MemoryContext oldcontext = MemoryContextSwitchTo(qcontext);
 AggState *fa_aggstate = (AggState *) fcinfo->context;


 inner_agg_tuple = SearchSysCache1(AGGFNOID, inner_agg_fn_oid);
 if (!HeapTupleIsValid(inner_agg_tuple))
  elog(ERROR, "cache lookup failed for aggregate %u", inner_agg_fn_oid);
 inner_agg_form = (Form_pg_aggregate) GETSTRUCT(inner_agg_tuple);


 if (inner_agg_form->aggnumdirectargs != 0)
  elog(ERROR,
    "function calls with direct args are not supported by TimescaleDB finalize agg");
 tstate = (FAPerQueryState *) MemoryContextAlloc(qcontext, sizeof(FAPerQueryState));

 tstate->final_meta.finalfnoid = inner_agg_form->aggfinalfn;
 tstate->combine_meta.combinefnoid = inner_agg_form->aggcombinefn;
 tstate->combine_meta.deserialfnoid = inner_agg_form->aggdeserialfn;
 tstate->combine_meta.transtype = inner_agg_form->aggtranstype;
 ReleaseSysCache(inner_agg_tuple);


 if (!OidIsValid(tstate->combine_meta.combinefnoid))
  elog(ERROR,
    "no valid combine function for the aggregate specified in Timescale finalize call");

 fmgr_info_cxt(tstate->combine_meta.combinefnoid, &tstate->combine_meta.combinefn, qcontext);
 InitFunctionCallInfoData(tstate->combine_meta.combfn_fcinfo,
        &tstate->combine_meta.combinefn,
        2,
        collation,
        (void *) fa_aggstate,
        ((void*)0));

 if (OidIsValid(tstate->combine_meta.deserialfnoid))

 {
  fmgr_info_cxt(tstate->combine_meta.deserialfnoid,
       &tstate->combine_meta.deserialfn,
       qcontext);
  InitFunctionCallInfoData(tstate->combine_meta.deserialfn_fcinfo,
         &tstate->combine_meta.deserialfn,
         1,
         collation,
         (void *) fa_aggstate,
         ((void*)0));
 }
 else
 {


  getTypeBinaryInputInfo(tstate->combine_meta.transtype,
          &tstate->combine_meta.recv_fn,
          &tstate->combine_meta.typIOParam);
  fmgr_info_cxt(tstate->combine_meta.recv_fn,
       &tstate->combine_meta.internal_deserialfn,
       qcontext);
  InitFunctionCallInfoData(tstate->combine_meta.internal_deserialfn_fcinfo,
         &tstate->combine_meta.internal_deserialfn,
         3,
         InvalidOid,
         ((void*)0),
         ((void*)0));
 }

 if (OidIsValid(tstate->final_meta.finalfnoid))
 {
  int num_args = 1;
  Oid *types = ((void*)0);
  size_t number_types = 0;
  if (inner_agg_form->aggfinalextra)
  {
   types = get_input_types(input_types, &number_types);
   num_args += number_types;
  }
  if (num_args != get_func_nargs(tstate->final_meta.finalfnoid))
   elog(ERROR, "invalid number of input types");

  fmgr_info_cxt(tstate->final_meta.finalfnoid, &tstate->final_meta.finalfn, qcontext);

  InitFunctionCallInfoData(tstate->final_meta.finalfn_fcinfo,
         &tstate->final_meta.finalfn,
         num_args,
         collation,
         (void *) fa_aggstate,
         ((void*)0));
  if (number_types > 0)
  {
   Expr *expr;
   int i;
   build_aggregate_finalfn_expr(types,
           num_args,
           inner_agg_form->aggtranstype,
           types[number_types - 1],
           collation,
           tstate->final_meta.finalfnoid,
           &expr);
   fmgr_info_set_expr((Node *) expr, &tstate->final_meta.finalfn);
   for (i = 1; i < num_args; i++)
   {
    tstate->final_meta.finalfn_fcinfo.arg[i] = (Datum) 0;
    tstate->final_meta.finalfn_fcinfo.argnull[i] = 1;
   }
  }
 }
 fcinfo->flinfo->fn_extra = (void *) tstate;

 MemoryContextSwitchTo(oldcontext);

 return tstate;
}
