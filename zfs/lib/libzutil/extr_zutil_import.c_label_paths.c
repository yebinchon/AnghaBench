
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int libpc_handle_t ;


 int ENOENT ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int label_paths_impl (int *,int *,int ,int ,char**,char**) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;

int
label_paths(libpc_handle_t *hdl, nvlist_t *label, char **path, char **devid)
{
 nvlist_t *nvroot;
 uint64_t pool_guid;
 uint64_t vdev_guid;

 *path = ((void*)0);
 *devid = ((void*)0);

 if (nvlist_lookup_nvlist(label, ZPOOL_CONFIG_VDEV_TREE, &nvroot) ||
     nvlist_lookup_uint64(label, ZPOOL_CONFIG_POOL_GUID, &pool_guid) ||
     nvlist_lookup_uint64(label, ZPOOL_CONFIG_GUID, &vdev_guid))
  return (ENOENT);

 return (label_paths_impl(hdl, nvroot, pool_guid, vdev_guid, path,
     devid));
}
