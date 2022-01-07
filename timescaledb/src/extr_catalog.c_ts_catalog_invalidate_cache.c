
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int CmdType ;
typedef int CatalogTable ;
typedef int Catalog ;



 int CACHE_TYPE_BGW_JOB ;
 int CACHE_TYPE_HYPERTABLE ;



 int CMD_DELETE ;
 int CMD_UPDATE ;
 int CacheInvalidateRelcacheByRelid (int ) ;



 int catalog_get_table (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_catalog_get_cache_proxy_id (int *,int ) ;

void
ts_catalog_invalidate_cache(Oid catalog_relid, CmdType operation)
{
 Catalog *catalog = ts_catalog_get();
 CatalogTable table = catalog_get_table(catalog, catalog_relid);
 Oid relid;

 switch (table)
 {
  case 133:
  case 132:
  case 129:
   if (operation == CMD_UPDATE || operation == CMD_DELETE)
   {
    relid = ts_catalog_get_cache_proxy_id(catalog, CACHE_TYPE_HYPERTABLE);
    CacheInvalidateRelcacheByRelid(relid);
   }
   break;
  case 128:
  case 130:
   relid = ts_catalog_get_cache_proxy_id(catalog, CACHE_TYPE_HYPERTABLE);
   CacheInvalidateRelcacheByRelid(relid);
   break;
  case 134:
   relid = ts_catalog_get_cache_proxy_id(catalog, CACHE_TYPE_BGW_JOB);
   CacheInvalidateRelcacheByRelid(relid);
   break;
  case 131:
  default:
   break;
 }
}
