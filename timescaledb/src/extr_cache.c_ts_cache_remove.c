
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numelements; } ;
struct TYPE_5__ {TYPE_1__ stats; int htab; } ;
typedef TYPE_2__ Cache ;


 int HASH_REMOVE ;
 int hash_search (int ,void*,int ,int*) ;

bool
ts_cache_remove(Cache *cache, void *key)
{
 bool found;

 hash_search(cache->htab, key, HASH_REMOVE, &found);

 if (found)
  cache->stats.numelements--;

 return found;
}
