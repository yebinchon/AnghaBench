
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int refcount; } ;
struct TYPE_7__ {int subtxnid; TYPE_2__* cache; } ;
typedef int MemoryContext ;
typedef TYPE_1__ CachePin ;
typedef TYPE_2__ Cache ;


 int GetCurrentSubTransactionId () ;
 int MemoryContextSwitchTo (int ) ;
 int lappend (int ,TYPE_1__*) ;
 TYPE_1__* palloc (int) ;
 int pinned_caches ;
 int pinned_caches_mctx ;

extern Cache *
ts_cache_pin(Cache *cache)
{
 MemoryContext old = MemoryContextSwitchTo(pinned_caches_mctx);
 CachePin *cp = palloc(sizeof(CachePin));

 cp->cache = cache;
 cp->subtxnid = GetCurrentSubTransactionId();
 pinned_caches = lappend(pinned_caches, cp);
 MemoryContextSwitchTo(old);
 cache->refcount++;
 return cache;
}
