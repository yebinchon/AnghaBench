
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef scalar_t__ uint_t ;
typedef int nvlist_t ;


 int VDEV_NAME_PATH ;
 int VDEV_TYPE_INDIRECT ;
 int ZPOOL_CONFIG_CHILDREN ;
 int fnvlist_add_boolean (int *,char*) ;
 int free (char*) ;
 int g_zfs ;
 int nvlist_lookup_nvlist_array (int *,int ,int ***,scalar_t__*) ;
 scalar_t__ strcmp (char*,int ) ;
 char* zpool_vdev_name (int ,int *,int *,int ) ;

__attribute__((used)) static void
zpool_collect_leaves(zpool_handle_t *zhp, nvlist_t *nvroot, nvlist_t *res)
{
 uint_t children = 0;
 nvlist_t **child;
 uint_t i;

 (void) nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     &child, &children);

 if (children == 0) {
  char *path = zpool_vdev_name(g_zfs, zhp, nvroot,
      VDEV_NAME_PATH);

  if (strcmp(path, VDEV_TYPE_INDIRECT) != 0)
   fnvlist_add_boolean(res, path);

  free(path);
  return;
 }

 for (i = 0; i < children; i++) {
  zpool_collect_leaves(zhp, child[i], res);
 }
}
