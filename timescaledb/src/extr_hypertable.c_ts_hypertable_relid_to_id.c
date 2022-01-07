
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef int Cache ;


 int ts_cache_release (int *) ;
 TYPE_2__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;

int32
ts_hypertable_relid_to_id(Oid relid)
{
 Cache *hcache = ts_hypertable_cache_pin();
 Hypertable *ht = ts_hypertable_cache_get_entry(hcache, relid);
 int result = (ht == ((void*)0)) ? -1 : ht->fd.id;

 ts_cache_release(hcache);

 return result;
}
