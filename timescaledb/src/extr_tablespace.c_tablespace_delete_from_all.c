
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_filtered; int hcache; int userid; int database_info; } ;
typedef TYPE_1__ TablespaceScanInfo ;
typedef int ScanKeyData ;
typedef int Oid ;


 int Anum_tablespace_tablespace_name ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CommandCounterIncrement () ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_NAMEEQ ;
 int INVALID_INDEXID ;
 int NOTICE ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,scalar_t__) ;
 int namein ;
 int tablespace_scan_internal (int ,int *,int,int ,int ,TYPE_1__*,int ,int ) ;
 int tablespace_tuple_delete ;
 int tablespace_tuple_owner_filter ;
 int ts_cache_release (int ) ;
 int ts_catalog_database_info_get () ;
 int ts_hypertable_cache_pin () ;

__attribute__((used)) static int
tablespace_delete_from_all(const char *tspcname, Oid userid)
{
 ScanKeyData scankey[1];
 TablespaceScanInfo info = {
  .database_info = ts_catalog_database_info_get(),
  .hcache = ts_hypertable_cache_pin(),
  .userid = userid,
 };
 int num_deleted;

 ScanKeyInit(&scankey[0],
    Anum_tablespace_tablespace_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(tspcname)));

 num_deleted = tablespace_scan_internal(INVALID_INDEXID,
             scankey,
             1,
             tablespace_tuple_delete,
             tablespace_tuple_owner_filter,
             &info,
             0,
             RowExclusiveLock);
 ts_cache_release(info.hcache);

 if (num_deleted > 0)
  CommandCounterIncrement();

 if (info.num_filtered > 0)
  ereport(NOTICE,
    (errmsg("tablespace \"%s\" remains attached to %d hypertable(s) due to lack of "
      "permissions",
      tspcname,
      info.num_filtered)));

 return num_deleted;
}
