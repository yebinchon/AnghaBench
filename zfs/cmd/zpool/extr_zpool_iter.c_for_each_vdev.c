
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int pool_vdev_iter_f ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_VDEV_TREE ;
 int for_each_vdev_cb (int *,int *,int ,void*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;

int
for_each_vdev(zpool_handle_t *zhp, pool_vdev_iter_f func, void *data)
{
 nvlist_t *config, *nvroot = ((void*)0);

 if ((config = zpool_get_config(zhp, ((void*)0))) != ((void*)0)) {
  verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &nvroot) == 0);
 }
 return (for_each_vdev_cb(zhp, nvroot, func, data));
}
