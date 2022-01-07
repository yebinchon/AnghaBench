
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef scalar_t__ Oid ;
typedef int * Name ;
typedef TYPE_2__ Hypertable ;
typedef int CatalogSecurityContext ;
typedef int Cache ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetUserId () ;
 int GetUserNameFromId (scalar_t__,int) ;
 scalar_t__ MyDatabaseTableSpace ;
 int NOTICE ;
 int NameStr (int ) ;
 int OidIsValid (scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,...) ;
 int get_rel_name (scalar_t__) ;
 scalar_t__ get_tablespace_oid (int ,int) ;
 scalar_t__ pg_tablespace_aclcheck (scalar_t__,scalar_t__,int ) ;
 int tablespace_insert (int ,int ) ;
 int ts_cache_release (int *) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 TYPE_2__* ts_hypertable_cache_get_entry (int *,scalar_t__) ;
 int * ts_hypertable_cache_pin () ;
 scalar_t__ ts_hypertable_has_tablespace (TYPE_2__*,scalar_t__) ;
 scalar_t__ ts_hypertable_permissions_check (scalar_t__,int ) ;

void
ts_tablespace_attach_internal(Name tspcname, Oid hypertable_oid, bool if_not_attached)
{
 Cache *hcache;
 Hypertable *ht;
 Oid tspc_oid;
 Oid ownerid;
 AclResult aclresult;
 CatalogSecurityContext sec_ctx;

 if (((void*)0) == tspcname)
  elog(ERROR, "invalid tablespace name");

 if (!OidIsValid(hypertable_oid))
  elog(ERROR, "invalid hypertable");

 tspc_oid = get_tablespace_oid(NameStr(*tspcname), 1);

 if (!OidIsValid(tspc_oid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("tablespace \"%s\" does not exist", NameStr(*tspcname)),
     errhint("The tablespace needs to be created"
       " before attaching it to a hypertable.")));

 ownerid = ts_hypertable_permissions_check(hypertable_oid, GetUserId());
 if (tspc_oid != MyDatabaseTableSpace)
 {





  aclresult = pg_tablespace_aclcheck(tspc_oid, ownerid, ACL_CREATE);

  if (aclresult != ACLCHECK_OK)
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied for tablespace \"%s\" by table owner \"%s\"",
       NameStr(*tspcname),
       GetUserNameFromId(ownerid, 1))));
 }
 hcache = ts_hypertable_cache_pin();
 ht = ts_hypertable_cache_get_entry(hcache, hypertable_oid);

 if (((void*)0) == ht)
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("table \"%s\" is not a hypertable", get_rel_name(hypertable_oid))));

 if (ts_hypertable_has_tablespace(ht, tspc_oid))
 {
  if (if_not_attached)
   ereport(NOTICE,
     (errcode(ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED),
      errmsg("tablespace \"%s\" is already attached to hypertable \"%s\", skipping",
       NameStr(*tspcname),
       get_rel_name(hypertable_oid))));
  else
   ereport(ERROR,
     (errcode(ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED),
      errmsg("tablespace \"%s\" is already attached to hypertable \"%s\"",
       NameStr(*tspcname),
       get_rel_name(hypertable_oid))));
 }
 else
 {
  ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
  tablespace_insert(ht->fd.id, NameStr(*tspcname));
  ts_catalog_restore_user(&sec_ctx);
 }

 ts_cache_release(hcache);
}
