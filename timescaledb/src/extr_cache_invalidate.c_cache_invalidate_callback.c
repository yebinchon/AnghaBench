
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int Datum ;
typedef int Catalog ;


 int CACHE_TYPE_BGW_JOB ;
 int CACHE_TYPE_HYPERTABLE ;
 int cache_invalidate_all () ;
 int ts_bgw_job_cache_invalidate_callback () ;
 int * ts_catalog_get () ;
 scalar_t__ ts_catalog_get_cache_proxy_id (int *,int ) ;
 scalar_t__ ts_extension_invalidate (scalar_t__) ;
 int ts_extension_is_loaded () ;
 int ts_hypertable_cache_invalidate_callback () ;

__attribute__((used)) static void
cache_invalidate_callback(Datum arg, Oid relid)
{
 Catalog *catalog;

 if (ts_extension_invalidate(relid))
 {
  cache_invalidate_all();
  return;
 }

 if (!ts_extension_is_loaded())
  return;

 catalog = ts_catalog_get();

 if (relid == ts_catalog_get_cache_proxy_id(catalog, CACHE_TYPE_HYPERTABLE))
  ts_hypertable_cache_invalidate_callback();

 if (relid == ts_catalog_get_cache_proxy_id(catalog, CACHE_TYPE_BGW_JOB))
  ts_bgw_job_cache_invalidate_callback();
}
