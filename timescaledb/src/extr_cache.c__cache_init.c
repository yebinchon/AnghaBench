
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RegisterSubXactCallback (int ,int *) ;
 int RegisterXactCallback (int ,int *) ;
 int cache_reset_pinned_caches () ;
 int cache_subxact_abort ;
 int cache_xact_end ;

void
_cache_init(void)
{
 cache_reset_pinned_caches();
 RegisterXactCallback(cache_xact_end, ((void*)0));
 RegisterSubXactCallback(cache_subxact_abort, ((void*)0));
}
