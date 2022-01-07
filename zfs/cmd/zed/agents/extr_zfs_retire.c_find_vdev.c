
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 int fmd_hdl_debug (int ,char*,scalar_t__) ;
 int fmd_module_hdl (char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;

__attribute__((used)) static nvlist_t *
find_vdev(libzfs_handle_t *zhdl, nvlist_t *nv, uint64_t search_guid)
{
 uint64_t guid;
 nvlist_t **child;
 uint_t c, children;
 nvlist_t *ret;

 if (nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID, &guid) == 0 &&
     guid == search_guid) {
  fmd_hdl_debug(fmd_module_hdl("zfs-retire"),
      "matched vdev %llu", guid);
  return (nv);
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0)
  return (((void*)0));

 for (c = 0; c < children; c++) {
  if ((ret = find_vdev(zhdl, child[c], search_guid)) != ((void*)0))
   return (ret);
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_L2CACHE,
     &child, &children) != 0)
  return (((void*)0));

 for (c = 0; c < children; c++) {
  if ((ret = find_vdev(zhdl, child[c], search_guid)) != ((void*)0))
   return (ret);
 }

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_SPARES,
     &child, &children) != 0)
  return (((void*)0));

 for (c = 0; c < children; c++) {
  if ((ret = find_vdev(zhdl, child[c], search_guid)) != ((void*)0))
   return (ret);
 }

 return (((void*)0));
}
