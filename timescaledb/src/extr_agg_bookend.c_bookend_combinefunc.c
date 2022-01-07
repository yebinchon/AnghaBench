
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int cmp_type_cache; int value_type_cache; int cmp_func_cache; } ;
typedef TYPE_1__ TransCache ;
struct TYPE_13__ {scalar_t__ is_null; } ;
struct TYPE_12__ {TYPE_3__ cmp; TYPE_3__ value; } ;
typedef int MemoryContext ;
typedef TYPE_2__ InternalCmpAggStore ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_RETURN_POINTER (TYPE_2__*) ;
 scalar_t__ cmpfunccache_cmp (int *,int ,char*,TYPE_3__,TYPE_3__) ;
 TYPE_1__* transcache_get (int ) ;
 int typeinfocache_polydatumcopy (int *,TYPE_3__,TYPE_3__*) ;

__attribute__((used)) static inline Datum
bookend_combinefunc(MemoryContext aggcontext, InternalCmpAggStore *state1,
     InternalCmpAggStore *state2, char *opname, FunctionCallInfo fcinfo)
{
 MemoryContext old_context;
 TransCache *cache;

 if (state2 == ((void*)0))
  PG_RETURN_POINTER(state1);

 cache = transcache_get(fcinfo);





 if (state1 == ((void*)0))
 {
  old_context = MemoryContextSwitchTo(aggcontext);

  state1 =
   (InternalCmpAggStore *) MemoryContextAlloc(aggcontext, sizeof(InternalCmpAggStore));
  typeinfocache_polydatumcopy(&cache->value_type_cache, state2->value, &state1->value);
  typeinfocache_polydatumcopy(&cache->cmp_type_cache, state2->cmp, &state1->cmp);

  MemoryContextSwitchTo(old_context);
  PG_RETURN_POINTER(state1);
 }

 if (state1->cmp.is_null && state2->cmp.is_null)
 {
  PG_RETURN_POINTER(state1);
 }
 else if (state1->cmp.is_null != state2->cmp.is_null)
 {
  if (state1->cmp.is_null)
   PG_RETURN_POINTER(state2);
  else
   PG_RETURN_POINTER(state1);
 }
 else if (cmpfunccache_cmp(&cache->cmp_func_cache, fcinfo, opname, state2->cmp, state1->cmp))
 {
  old_context = MemoryContextSwitchTo(aggcontext);
  typeinfocache_polydatumcopy(&cache->value_type_cache, state2->value, &state1->value);
  typeinfocache_polydatumcopy(&cache->cmp_type_cache, state2->cmp, &state1->cmp);
  MemoryContextSwitchTo(old_context);
 }

 PG_RETURN_POINTER(state1);
}
