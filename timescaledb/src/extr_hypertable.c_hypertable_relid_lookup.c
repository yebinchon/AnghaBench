
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int main_table_relid; } ;
typedef int Oid ;
typedef TYPE_1__ Hypertable ;
typedef int Cache ;


 int InvalidOid ;
 int ts_cache_release (int *) ;
 TYPE_1__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;

__attribute__((used)) static inline Oid
hypertable_relid_lookup(Oid relid)
{
 Cache *hcache = ts_hypertable_cache_pin();
 Hypertable *ht = ts_hypertable_cache_get_entry(hcache, relid);
 Oid result = (ht == ((void*)0)) ? InvalidOid : ht->main_table_relid;

 ts_cache_release(hcache);

 return result;
}
