
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
struct TYPE_3__ {int * cb_zhp; int cb_guid; } ;
typedef TYPE_1__ find_cbdata_t ;


 int ZPOOL_CONFIG_VDEV_TREE ;
 int find_pool ;
 int * find_vdev (int *,int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_iter (int *,int ,TYPE_1__*) ;

__attribute__((used)) static zpool_handle_t *
find_by_guid(libzfs_handle_t *zhdl, uint64_t pool_guid, uint64_t vdev_guid,
    nvlist_t **vdevp)
{
 find_cbdata_t cb;
 zpool_handle_t *zhp;
 nvlist_t *config, *nvroot;




 cb.cb_guid = pool_guid;
 if (zpool_iter(zhdl, find_pool, &cb) != 1)
  return (((void*)0));

 zhp = cb.cb_zhp;
 config = zpool_get_config(zhp, ((void*)0));
 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) != 0) {
  zpool_close(zhp);
  return (((void*)0));
 }

 if (vdev_guid != 0) {
  if ((*vdevp = find_vdev(zhdl, nvroot, vdev_guid)) == ((void*)0)) {
   zpool_close(zhp);
   return (((void*)0));
  }
 }

 return (zhp);
}
