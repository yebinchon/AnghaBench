
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_2__ {scalar_t__ dd_vdev_guid; int dd_islabeled; int (* dd_func ) (int *,int *,int ) ;int * dd_new_devid; void* dd_found; int dd_prop; int * dd_compare; } ;
typedef TYPE_1__ dev_data_t ;


 void* B_TRUE ;
 int LOG_INFO ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 int nvlist_add_string (int *,char*,int *) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (int *,char*) ;
 int stub1 (int *,int *,int ) ;
 int zed_log_msg (int ,char*,scalar_t__,...) ;

__attribute__((used)) static void
zfs_iter_vdev(zpool_handle_t *zhp, nvlist_t *nvl, void *data)
{
 dev_data_t *dp = data;
 char *path = ((void*)0);
 uint_t c, children;
 nvlist_t **child;




 if (nvlist_lookup_nvlist_array(nvl, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   zfs_iter_vdev(zhp, child[c], data);
 }




 if (nvlist_lookup_nvlist_array(nvl, ZPOOL_CONFIG_SPARES,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   zfs_iter_vdev(zhp, child[c], data);
 }
 if (nvlist_lookup_nvlist_array(nvl, ZPOOL_CONFIG_L2CACHE,
     &child, &children) == 0) {
  for (c = 0; c < children; c++)
   zfs_iter_vdev(zhp, child[c], data);
 }


 if (dp->dd_found)
  return;




 if (dp->dd_vdev_guid != 0) {
  uint64_t guid;

  if (nvlist_lookup_uint64(nvl, ZPOOL_CONFIG_GUID,
      &guid) != 0 || guid != dp->dd_vdev_guid) {
   return;
  }
  zed_log_msg(LOG_INFO, "  zfs_iter_vdev: matched on %llu", guid);
  dp->dd_found = B_TRUE;

 } else if (dp->dd_compare != ((void*)0)) {






  if (nvlist_lookup_string(nvl, dp->dd_prop, &path) != 0 ||
      strcmp(dp->dd_compare, path) != 0)
   return;

  zed_log_msg(LOG_INFO, "  zfs_iter_vdev: matched %s on %s",
      dp->dd_prop, path);
  dp->dd_found = B_TRUE;


  if (dp->dd_new_devid != ((void*)0)) {
   (void) nvlist_add_string(nvl, "new_devid",
       dp->dd_new_devid);
  }
 }

 (dp->dd_func)(zhp, nvl, dp->dd_islabeled);
}
