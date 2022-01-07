
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int CacheMemoryContext ;
 int MemoryContextDelete (int *) ;
 int NIL ;
 int pinned_caches ;
 int * pinned_caches_mctx ;

__attribute__((used)) static void
cache_reset_pinned_caches(void)
{
 if (((void*)0) != pinned_caches_mctx)
  MemoryContextDelete(pinned_caches_mctx);

 pinned_caches_mctx =
  AllocSetContextCreate(CacheMemoryContext, "Cache pins", ALLOCSET_DEFAULT_SIZES);

 pinned_caches = NIL;
}
