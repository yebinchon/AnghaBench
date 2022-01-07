
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * hypertable; } ;
struct TYPE_4__ {char const* schema; char const* table; int q; int relid; } ;
typedef int Oid ;
typedef TYPE_1__ HypertableCacheQuery ;
typedef TYPE_2__ HypertableCacheEntry ;
typedef int Hypertable ;
typedef int Cache ;


 TYPE_2__* ts_cache_fetch (int *,int *) ;

Hypertable *
ts_hypertable_cache_get_entry_with_table(Cache *cache, Oid relid, const char *schema,
           const char *table)
{
 HypertableCacheQuery query = {
  .relid = relid,
  .schema = schema,
  .table = table,
 };
 HypertableCacheEntry *entry = ts_cache_fetch(cache, &query.q);

 return entry->hypertable;
}
