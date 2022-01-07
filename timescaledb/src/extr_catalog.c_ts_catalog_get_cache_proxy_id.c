
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* caches; } ;
struct TYPE_5__ {int inval_proxy_id; } ;
typedef int Oid ;
typedef TYPE_2__ Catalog ;
typedef size_t CacheType ;


 int CACHE_SCHEMA_NAME ;
 int InvalidOid ;
 int IsTransactionState () ;
 int OidIsValid (int ) ;
 int * cache_proxy_table_names ;
 int catalog_is_valid (TYPE_2__*) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;

Oid
ts_catalog_get_cache_proxy_id(Catalog *catalog, CacheType type)
{
 if (!catalog_is_valid(catalog))
 {
  Oid schema;






  if (!IsTransactionState())
   return InvalidOid;

  schema = get_namespace_oid(CACHE_SCHEMA_NAME, 1);

  if (!OidIsValid(schema))
   return InvalidOid;

  return get_relname_relid(cache_proxy_table_names[type], schema);
 }

 return catalog->caches[type].inval_proxy_id;
}
