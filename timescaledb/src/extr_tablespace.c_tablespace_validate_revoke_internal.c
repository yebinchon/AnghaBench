
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tuple_found_func ;
struct TYPE_3__ {void* data; int hcache; int database_info; } ;
typedef TYPE_1__ TablespaceScanInfo ;


 int tablespace_scan_by_name (char const*,int ,TYPE_1__*) ;
 int ts_cache_release (int ) ;
 int ts_catalog_database_info_get () ;
 int ts_hypertable_cache_pin () ;

__attribute__((used)) static void
tablespace_validate_revoke_internal(const char *tspcname, tuple_found_func tuple_found, void *stmt)
{
 TablespaceScanInfo info = {
  .database_info = ts_catalog_database_info_get(),
  .hcache = ts_hypertable_cache_pin(),
  .data = stmt,
 };

 tablespace_scan_by_name(tspcname, tuple_found, &info);

 ts_cache_release(info.hcache);
}
