
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_8__ {int * uap_zhp; } ;
typedef TYPE_1__ unavailpool_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_9__ {char* dd_prop; scalar_t__ dd_pool_guid; int dd_found; scalar_t__ dd_vdev_guid; } ;
typedef TYPE_2__ dev_data_t ;


 int LOG_INFO ;
 scalar_t__ VDEV_STATE_DEGRADED ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ g_enumeration_done ;
 int g_pool_list ;
 int g_tpool ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int list_remove (int *,TYPE_1__*) ;
 int nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (int ,int ) ;
 int tpool_dispatch (int ,int ,TYPE_1__*) ;
 int zed_log_msg (int ,char*,int ,char*) ;
 int zfs_enable_ds ;
 int zfs_iter_vdev (int *,int *,void*) ;
 scalar_t__ zfs_toplevel_state (int *) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_get_name (int *) ;

__attribute__((used)) static int
zfs_iter_pool(zpool_handle_t *zhp, void *data)
{
 nvlist_t *config, *nvl;
 dev_data_t *dp = data;
 uint64_t pool_guid;
 unavailpool_t *pool;

 zed_log_msg(LOG_INFO, "zfs_iter_pool: evaluating vdevs on %s (by %s)",
     zpool_get_name(zhp), dp->dd_vdev_guid ? "GUID" : dp->dd_prop);




 if ((config = zpool_get_config(zhp, ((void*)0))) != ((void*)0)) {
  if (dp->dd_pool_guid == 0 ||
      (nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID,
      &pool_guid) == 0 && pool_guid == dp->dd_pool_guid)) {
   (void) nvlist_lookup_nvlist(config,
       ZPOOL_CONFIG_VDEV_TREE, &nvl);
   zfs_iter_vdev(zhp, nvl, data);
  }
 }





 if (g_enumeration_done) {
  for (pool = list_head(&g_pool_list); pool != ((void*)0);
      pool = list_next(&g_pool_list, pool)) {

   if (strcmp(zpool_get_name(zhp),
       zpool_get_name(pool->uap_zhp)))
    continue;
   if (zfs_toplevel_state(zhp) >= VDEV_STATE_DEGRADED) {
    list_remove(&g_pool_list, pool);
    (void) tpool_dispatch(g_tpool, zfs_enable_ds,
        pool);
    break;
   }
  }
 }

 zpool_close(zhp);
 return (dp->dd_found);
}
