
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MemoryContextDelete (int *) ;
 int NIL ;
 int UnregisterSubXactCallback (int ,int *) ;
 int UnregisterXactCallback (int ,int *) ;
 int cache_subxact_abort ;
 int cache_xact_end ;
 int pinned_caches ;
 int * pinned_caches_mctx ;

void
_cache_fini(void)
{
 MemoryContextDelete(pinned_caches_mctx);
 pinned_caches_mctx = ((void*)0);
 pinned_caches = NIL;
 UnregisterXactCallback(cache_xact_end, ((void*)0));
 UnregisterSubXactCallback(cache_subxact_abort, ((void*)0));
}
