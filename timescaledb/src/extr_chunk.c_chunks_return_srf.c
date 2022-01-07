
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint64 ;
typedef int TupleDesc ;
struct TYPE_7__ {int table_id; } ;
struct TYPE_6__ {size_t call_cntr; size_t max_calls; scalar_t__ user_fctx; } ;
typedef int FunctionCallInfo ;
typedef TYPE_1__ FuncCallContext ;
typedef int Datum ;
typedef TYPE_2__ Chunk ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ SRF_IS_FIRSTCALL () ;
 TYPE_1__* SRF_PERCALL_SETUP () ;
 int SRF_RETURN_DONE (TYPE_1__*) ;
 int SRF_RETURN_NEXT (TYPE_1__*,int ) ;
 scalar_t__ TYPEFUNC_SCALAR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ get_call_result_type (int ,int *,int *) ;

__attribute__((used)) static Datum
chunks_return_srf(FunctionCallInfo fcinfo)
{
 FuncCallContext *funcctx;
 uint64 call_cntr;
 TupleDesc tupdesc;
 Chunk **result_set;


 if (SRF_IS_FIRSTCALL())
 {


  if (get_call_result_type(fcinfo, ((void*)0), &tupdesc) != TYPEFUNC_SCALAR)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("function returning record called in context "
       "that cannot accept type record")));
 }


 funcctx = SRF_PERCALL_SETUP();

 call_cntr = funcctx->call_cntr;
 result_set = (Chunk **) funcctx->user_fctx;


 if (call_cntr < funcctx->max_calls)
  SRF_RETURN_NEXT(funcctx, result_set[call_cntr]->table_id);
 else
  SRF_RETURN_DONE(funcctx);
}
