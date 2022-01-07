
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef int Cache ;


 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERROR ;
 int GetUserId () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_rel_name (int ) ;
 int ts_cache_release (int *) ;
 TYPE_2__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int ts_hypertable_permissions_check (int ,int ) ;
 int ts_tablespace_delete (int ,int *) ;

__attribute__((used)) static int
tablespace_detach_all(Oid hypertable_oid)
{
 Cache *hcache;
 Hypertable *ht;
 int ret;

 ts_hypertable_permissions_check(hypertable_oid, GetUserId());

 hcache = ts_hypertable_cache_pin();
 ht = ts_hypertable_cache_get_entry(hcache, hypertable_oid);

 if (((void*)0) == ht)
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("table \"%s\" is not a hypertable", get_rel_name(hypertable_oid))));

 ret = ts_tablespace_delete(ht->fd.id, ((void*)0));

 ts_cache_release(hcache);

 return ret;
}
