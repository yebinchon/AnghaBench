
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UnregisterSubXactCallback (int ,int *) ;
 int UnregisterXactCallback (int ,int *) ;
 int cache_invalidate_subxact_end ;
 int cache_invalidate_xact_end ;

void
_cache_invalidate_fini(void)
{
 UnregisterXactCallback(cache_invalidate_xact_end, ((void*)0));
 UnregisterSubXactCallback(cache_invalidate_subxact_end, ((void*)0));

}
