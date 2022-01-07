
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CacheRegisterRelcacheCallback (int ,int ) ;
 int PointerGetDatum (int *) ;
 int RegisterSubXactCallback (int ,int *) ;
 int RegisterXactCallback (int ,int *) ;
 int cache_invalidate_callback ;
 int cache_invalidate_subxact_end ;
 int cache_invalidate_xact_end ;

void
_cache_invalidate_init(void)
{
 RegisterXactCallback(cache_invalidate_xact_end, ((void*)0));
 RegisterSubXactCallback(cache_invalidate_subxact_end, ((void*)0));
 CacheRegisterRelcacheCallback(cache_invalidate_callback, PointerGetDatum(((void*)0)));
}
