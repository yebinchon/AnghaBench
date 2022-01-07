
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int EZFS_INVALCONFIG ;
 int EZFS_NODEVICE ;
 int EZFS_POOL_INVALARG ;
 int VDEV_TYPE_ROOT ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ strcmp (char*,int ) ;
 int vdev_get_physpaths (int *,char*,size_t,size_t*,int ) ;

__attribute__((used)) static int
zpool_get_config_physpath(nvlist_t *config, char *physpath, size_t phypath_size)
{
 size_t rsz;
 nvlist_t *vdev_root;
 nvlist_t **child;
 uint_t count;
 char *type;

 rsz = 0;

 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &vdev_root) != 0)
  return (EZFS_INVALCONFIG);

 if (nvlist_lookup_string(vdev_root, ZPOOL_CONFIG_TYPE, &type) != 0 ||
     nvlist_lookup_nvlist_array(vdev_root, ZPOOL_CONFIG_CHILDREN,
     &child, &count) != 0)
  return (EZFS_INVALCONFIG);




 if (strcmp(type, VDEV_TYPE_ROOT) != 0 || count != 1)
  return (EZFS_POOL_INVALARG);

 (void) vdev_get_physpaths(child[0], physpath, phypath_size, &rsz,
     B_FALSE);


 if (rsz == 0)
  return (EZFS_NODEVICE);

 return (0);
}
