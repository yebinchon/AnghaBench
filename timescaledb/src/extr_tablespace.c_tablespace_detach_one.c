
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef int Cache ;


 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERRCODE_TS_TABLESPACE_NOT_ATTACHED ;
 int ERROR ;
 int GetUserId () ;
 int NOTICE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int get_rel_name (int ) ;
 int ts_cache_release (int *) ;
 TYPE_2__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 scalar_t__ ts_hypertable_has_tablespace (TYPE_2__*,int ) ;
 int ts_hypertable_permissions_check (int ,int ) ;
 int ts_tablespace_delete (int ,char const*) ;

__attribute__((used)) static int
tablespace_detach_one(Oid hypertable_oid, const char *tspcname, Oid tspcoid, bool if_attached)
{
 Cache *hcache;
 Hypertable *ht;
 int ret = 0;

 ts_hypertable_permissions_check(hypertable_oid, GetUserId());

 hcache = ts_hypertable_cache_pin();
 ht = ts_hypertable_cache_get_entry(hcache, hypertable_oid);

 if (((void*)0) == ht)
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("table \"%s\" is not a hypertable", get_rel_name(hypertable_oid))));

 if (ts_hypertable_has_tablespace(ht, tspcoid))
  ret = ts_tablespace_delete(ht->fd.id, tspcname);
 else if (if_attached)
  ereport(NOTICE,
    (errcode(ERRCODE_TS_TABLESPACE_NOT_ATTACHED),
     errmsg("tablespace \"%s\" is not attached to hypertable \"%s\", skipping",
      tspcname,
      get_rel_name(hypertable_oid))));
 else
  ereport(ERROR,
    (errcode(ERRCODE_TS_TABLESPACE_NOT_ATTACHED),
     errmsg("tablespace \"%s\" is not attached to hypertable \"%s\"",
      tspcname,
      get_rel_name(hypertable_oid))));

 ts_cache_release(hcache);

 return ret;
}
