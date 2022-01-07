
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 scalar_t__ DATA_TYPE_STRING ;
 int E2BIG ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int SET_ERROR (int ) ;
 scalar_t__ ZAP_MAXNAMELEN ;
 scalar_t__ ZAP_MAXVALUELEN ;
 char const* fnvpair_value_string (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ strlen (char const*) ;
 int zfs_prop_user (char const*) ;

__attribute__((used)) static int
zfs_check_userprops(nvlist_t *nvl)
{
 nvpair_t *pair = ((void*)0);

 while ((pair = nvlist_next_nvpair(nvl, pair)) != ((void*)0)) {
  const char *propname = nvpair_name(pair);

  if (!zfs_prop_user(propname) ||
      nvpair_type(pair) != DATA_TYPE_STRING)
   return (SET_ERROR(EINVAL));

  if (strlen(propname) >= ZAP_MAXNAMELEN)
   return (SET_ERROR(ENAMETOOLONG));

  if (strlen(fnvpair_value_string(pair)) >= ZAP_MAXVALUELEN)
   return (SET_ERROR(E2BIG));
 }
 return (0);
}
