
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hcxt; } ;
struct TYPE_5__ {TYPE_1__ hctl; } ;
typedef int MemoryContext ;
typedef TYPE_2__ Cache ;



MemoryContext
ts_cache_memory_ctx(Cache *cache)
{
 return cache->hctl.hcxt;
}
