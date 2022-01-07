
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int MemoryContextDelete (int *) ;
 int * continuous_aggs_cache_inval_htab ;
 int * continuous_aggs_trigger_mctx ;
 int hash_destroy (int *) ;

__attribute__((used)) static void
cache_inval_cleanup(void)
{
 Assert(continuous_aggs_cache_inval_htab != ((void*)0));
 hash_destroy(continuous_aggs_cache_inval_htab);
 MemoryContextDelete(continuous_aggs_trigger_mctx);

 continuous_aggs_cache_inval_htab = ((void*)0);
 continuous_aggs_trigger_mctx = ((void*)0);
}
