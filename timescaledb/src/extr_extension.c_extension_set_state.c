
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ExtensionState { ____Placeholder_ExtensionState } ExtensionState ;


 int CACHE_SCHEMA_NAME ;
 int EXTENSION_PROXY_TABLE ;




 int InvalidOid ;
 int TIMESCALEDB_VERSION_MOD ;
 int extension_proxy_oid ;
 int extstate ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;
 int ts_catalog_reset () ;
 int ts_extension_check_version (int ) ;

__attribute__((used)) static bool
extension_set_state(enum ExtensionState newstate)
{
 if (newstate == extstate)
 {
  return 0;
 }
 switch (newstate)
 {
  case 129:
  case 128:
   break;
  case 131:
   ts_extension_check_version(TIMESCALEDB_VERSION_MOD);
   extension_proxy_oid = get_relname_relid(EXTENSION_PROXY_TABLE,
             get_namespace_oid(CACHE_SCHEMA_NAME, 0));
   ts_catalog_reset();
   break;
  case 130:
   extension_proxy_oid = InvalidOid;
   ts_catalog_reset();
   break;
 }
 extstate = newstate;
 return 1;
}
