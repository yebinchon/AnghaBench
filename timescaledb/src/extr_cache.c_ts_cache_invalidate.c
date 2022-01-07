
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcount; } ;
typedef TYPE_1__ Cache ;


 int cache_destroy (TYPE_1__*) ;

void
ts_cache_invalidate(Cache *cache)
{
 if (cache == ((void*)0))
  return;
 cache->refcount--;
 cache_destroy(cache);
}
