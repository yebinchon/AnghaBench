
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int nvlist_t ;
struct TYPE_3__ {scalar_t__ gs_vdev_guid; int gs_pool_guid; } ;
typedef TYPE_1__ guid_search_t ;


 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int nvlist_lookup_uint64 (int *,int ,int *) ;
 int zfs_agent_iter_vdev (int *,int *,TYPE_1__*) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;

__attribute__((used)) static int
zfs_agent_iter_pool(zpool_handle_t *zhp, void *arg)
{
 guid_search_t *gsp = arg;
 nvlist_t *config, *nvl;




 if ((config = zpool_get_config(zhp, ((void*)0))) != ((void*)0)) {
  if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &nvl) == 0) {
   (void) zfs_agent_iter_vdev(zhp, nvl, gsp);
  }
 }



 if (gsp->gs_vdev_guid) {
  (void) nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID,
      &gsp->gs_pool_guid);
 }

 zpool_close(zhp);
 return (gsp->gs_vdev_guid != 0);
}
