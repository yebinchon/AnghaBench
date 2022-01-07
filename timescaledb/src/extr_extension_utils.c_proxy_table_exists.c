
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CACHE_SCHEMA_NAME ;
 int EXTENSION_PROXY_TABLE ;
 int OidIsValid (int ) ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;

__attribute__((used)) static bool inline proxy_table_exists()
{
 Oid nsid = get_namespace_oid(CACHE_SCHEMA_NAME, 1);

 if (!OidIsValid(nsid))
  return 0;

 return OidIsValid(get_relname_relid(EXTENSION_PROXY_TABLE, nsid));
}
