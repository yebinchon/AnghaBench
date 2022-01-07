
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_4__ {int * uap_zhp; } ;
typedef TYPE_1__ unavailpool_t ;
typedef int list_t ;


 int LOG_INFO ;
 scalar_t__ VDEV_STATE_DEGRADED ;
 int list_insert_tail (int *,TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int zed_log_msg (int ,char*,int ,int) ;
 scalar_t__ zfs_toplevel_state (int *) ;
 int zpool_close (int *) ;
 int zpool_get_name (int *) ;

__attribute__((used)) static int
zfs_unavail_pool(zpool_handle_t *zhp, void *data)
{
 zed_log_msg(LOG_INFO, "zfs_unavail_pool: examining '%s' (state %d)",
     zpool_get_name(zhp), (int)zfs_toplevel_state(zhp));

 if (zfs_toplevel_state(zhp) < VDEV_STATE_DEGRADED) {
  unavailpool_t *uap;
  uap = malloc(sizeof (unavailpool_t));
  uap->uap_zhp = zhp;
  list_insert_tail((list_t *)data, uap);
 } else {
  zpool_close(zhp);
 }
 return (0);
}
