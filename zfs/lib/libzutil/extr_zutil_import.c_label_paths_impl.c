
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int libpc_handle_t ;


 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_DEVID ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_PATH ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;

__attribute__((used)) static int
label_paths_impl(libpc_handle_t *hdl, nvlist_t *nvroot, uint64_t pool_guid,
    uint64_t vdev_guid, char **path, char **devid)
{
 nvlist_t **child;
 uint_t c, children;
 uint64_t guid;
 char *val;
 int error;

 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0) {
  for (c = 0; c < children; c++) {
   error = label_paths_impl(hdl, child[c],
       pool_guid, vdev_guid, path, devid);
   if (error)
    return (error);
  }
  return (0);
 }

 if (nvroot == ((void*)0))
  return (0);

 error = nvlist_lookup_uint64(nvroot, ZPOOL_CONFIG_GUID, &guid);
 if ((error != 0) || (guid != vdev_guid))
  return (0);

 error = nvlist_lookup_string(nvroot, ZPOOL_CONFIG_PATH, &val);
 if (error == 0)
  *path = val;

 error = nvlist_lookup_string(nvroot, ZPOOL_CONFIG_DEVID, &val);
 if (error == 0)
  *devid = val;

 return (0);
}
