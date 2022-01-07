
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int cmp_type_cache; int value_type_cache; int cmp_func_cache; } ;
typedef TYPE_1__ TransCache ;
struct TYPE_13__ {int cmp; int value; } ;
struct TYPE_12__ {int is_null; } ;
typedef TYPE_2__ PolyDatum ;
typedef int MemoryContext ;
typedef TYPE_3__ InternalCmpAggStore ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_RETURN_POINTER (TYPE_3__*) ;
 scalar_t__ cmpfunccache_cmp (int *,int ,char*,TYPE_2__,int ) ;
 TYPE_1__* transcache_get (int ) ;
 int typeinfocache_polydatumcopy (int *,TYPE_2__,int *) ;

__attribute__((used)) static inline Datum
bookend_sfunc(MemoryContext aggcontext, InternalCmpAggStore *state, PolyDatum value, PolyDatum cmp,
     char *opname, FunctionCallInfo fcinfo)
{
 MemoryContext old_context;
 TransCache *cache = transcache_get(fcinfo);

 old_context = MemoryContextSwitchTo(aggcontext);

 if (state == ((void*)0))
 {
  state = (InternalCmpAggStore *) MemoryContextAlloc(aggcontext, sizeof(InternalCmpAggStore));
  typeinfocache_polydatumcopy(&cache->value_type_cache, value, &state->value);
  typeinfocache_polydatumcopy(&cache->cmp_type_cache, cmp, &state->cmp);
 }
 else
 {

  if (!cmp.is_null &&
   cmpfunccache_cmp(&cache->cmp_func_cache, fcinfo, opname, cmp, state->cmp))
  {
   typeinfocache_polydatumcopy(&cache->value_type_cache, value, &state->value);
   typeinfocache_polydatumcopy(&cache->cmp_type_cache, cmp, &state->cmp);
  }
 }
 MemoryContextSwitchTo(old_context);

 PG_RETURN_POINTER(state);
}
