
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef scalar_t__ zpool_prop_t ;
struct TYPE_4__ {int * zpool_props; int * zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ ZPOOL_PROP_GUID ;
 int ZPROP_SOURCE ;
 int ZPROP_SRC_DEFAULT ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int verify (int) ;
 scalar_t__ zpool_get_all_props (TYPE_1__*) ;
 int zpool_prop_default_numeric (scalar_t__) ;
 int zpool_prop_to_name (scalar_t__) ;

uint64_t
zpool_get_prop_int(zpool_handle_t *zhp, zpool_prop_t prop, zprop_source_t *src)
{
 nvlist_t *nv, *nvl;
 uint64_t value;
 zprop_source_t source;

 if (zhp->zpool_props == ((void*)0) && zpool_get_all_props(zhp)) {





  if ((prop == ZPOOL_PROP_GUID) &&
      (nvlist_lookup_nvlist(zhp->zpool_config,
      ZPOOL_CONFIG_VDEV_TREE, &nv) == 0) &&
      (nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID, &value)
      == 0)) {
   return (value);
  }
  return (zpool_prop_default_numeric(prop));
 }

 nvl = zhp->zpool_props;
 if (nvlist_lookup_nvlist(nvl, zpool_prop_to_name(prop), &nv) == 0) {
  verify(nvlist_lookup_uint64(nv, ZPROP_SOURCE, &value) == 0);
  source = value;
  verify(nvlist_lookup_uint64(nv, ZPROP_VALUE, &value) == 0);
 } else {
  source = ZPROP_SRC_DEFAULT;
  value = zpool_prop_default_numeric(prop);
 }

 if (src)
  *src = source;

 return (value);
}
