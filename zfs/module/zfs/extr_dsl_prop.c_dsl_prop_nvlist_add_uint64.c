
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZPROP_SOURCE ;
 int ZPROP_VALUE ;
 scalar_t__ dodefault (int ,int,int,scalar_t__*) ;
 scalar_t__ nvlist_add_nvlist (int *,char const*,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char const*,int **) ;
 char* zfs_prop_to_name (int ) ;

void
dsl_prop_nvlist_add_uint64(nvlist_t *nv, zfs_prop_t prop, uint64_t value)
{
 nvlist_t *propval;
 const char *propname = zfs_prop_to_name(prop);
 uint64_t default_value;

 if (nvlist_lookup_nvlist(nv, propname, &propval) == 0) {
  VERIFY(nvlist_add_uint64(propval, ZPROP_VALUE, value) == 0);
  return;
 }

 VERIFY(nvlist_alloc(&propval, NV_UNIQUE_NAME, KM_SLEEP) == 0);
 VERIFY(nvlist_add_uint64(propval, ZPROP_VALUE, value) == 0);

 if (dodefault(prop, 8, 1, &default_value) == 0 &&
     value == default_value) {
  VERIFY(nvlist_add_string(propval, ZPROP_SOURCE, "") == 0);
 }
 VERIFY(nvlist_add_nvlist(nv, propname, propval) == 0);
 nvlist_free(propval);
}
