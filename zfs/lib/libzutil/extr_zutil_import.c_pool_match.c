
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strtoull (char*,int *,int ) ;

__attribute__((used)) static boolean_t
pool_match(nvlist_t *cfg, char *tgt)
{
 uint64_t v, guid = strtoull(tgt, ((void*)0), 0);
 char *s;

 if (guid != 0) {
  if (nvlist_lookup_uint64(cfg, ZPOOL_CONFIG_POOL_GUID, &v) == 0)
   return (v == guid);
 } else {
  if (nvlist_lookup_string(cfg, ZPOOL_CONFIG_POOL_NAME, &s) == 0)
   return (strcmp(s, tgt) == 0);
 }
 return (B_FALSE);
}
