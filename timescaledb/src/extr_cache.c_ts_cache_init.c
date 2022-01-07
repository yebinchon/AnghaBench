
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refcount; int release_on_commit; int flags; int hctl; int numelements; int name; int * htab; } ;
typedef TYPE_1__ Cache ;


 int Assert (int ) ;
 int ERROR ;
 int MemoryContextContains (int ,TYPE_1__*) ;
 int elog (int ,char*,int ) ;
 int * hash_create (int ,int ,int *,int ) ;
 int ts_cache_memory_ctx (TYPE_1__*) ;

void
ts_cache_init(Cache *cache)
{
 if (cache->htab != ((void*)0))
 {
  elog(ERROR, "cache %s is already initialized", cache->name);
  return;
 }





 Assert(MemoryContextContains(ts_cache_memory_ctx(cache), cache));

 cache->htab = hash_create(cache->name, cache->numelements, &cache->hctl, cache->flags);
 cache->refcount = 1;
 cache->release_on_commit = 1;
}
