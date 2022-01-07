
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int numelements; int misses; int hits; } ;
struct TYPE_13__ {void* (* create_entry ) (TYPE_3__*,TYPE_2__*) ;void* (* update_entry ) (TYPE_3__*,TYPE_2__*) ;TYPE_1__ stats; int (* get_key ) (TYPE_2__*) ;int * htab; int name; } ;
struct TYPE_12__ {void* result; } ;
typedef int HASHACTION ;
typedef TYPE_2__ CacheQuery ;
typedef TYPE_3__ Cache ;


 int ERROR ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int elog (int ,char*,int ) ;
 void* hash_search (int *,int ,int ,int*) ;
 int stub1 (TYPE_2__*) ;
 void* stub2 (TYPE_3__*,TYPE_2__*) ;
 void* stub3 (TYPE_3__*,TYPE_2__*) ;

void *
ts_cache_fetch(Cache *cache, CacheQuery *query)
{
 bool found;
 HASHACTION action = cache->create_entry == ((void*)0) ? HASH_FIND : HASH_ENTER;

 if (cache->htab == ((void*)0))
  elog(ERROR, "hash %s is not initialized", cache->name);

 query->result = hash_search(cache->htab, cache->get_key(query), action, &found);

 if (found)
 {
  cache->stats.hits++;

  if (cache->update_entry != ((void*)0))
   query->result = cache->update_entry(cache, query);
 }
 else
 {
  cache->stats.misses++;

  if (cache->create_entry != ((void*)0))
  {
   cache->stats.numelements++;
   query->result = cache->create_entry(cache, query);
  }
 }

 return query->result;
}
