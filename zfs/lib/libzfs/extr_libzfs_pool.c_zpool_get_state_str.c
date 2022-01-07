
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zpool_status_t ;
typedef int zpool_handle_t ;
typedef int zpool_errata_t ;
struct TYPE_2__ {int vs_aux; int vs_state; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 scalar_t__ POOL_STATE_UNAVAIL ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ ZPOOL_STATUS_IO_FAILURE_MMP ;
 scalar_t__ ZPOOL_STATUS_IO_FAILURE_WAIT ;
 char* gettext (char*) ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,int **,int *) ;
 int verify (int) ;
 int zpool_get_config (int *,int *) ;
 scalar_t__ zpool_get_state (int *) ;
 scalar_t__ zpool_get_status (int *,int *,int *) ;
 char* zpool_state_to_name (int ,int ) ;

const char *
zpool_get_state_str(zpool_handle_t *zhp)
{
 zpool_errata_t errata;
 zpool_status_t status;
 nvlist_t *nvroot;
 vdev_stat_t *vs;
 uint_t vsc;
 const char *str;

 status = zpool_get_status(zhp, ((void*)0), &errata);

 if (zpool_get_state(zhp) == POOL_STATE_UNAVAIL) {
  str = gettext("FAULTED");
 } else if (status == ZPOOL_STATUS_IO_FAILURE_WAIT ||
     status == ZPOOL_STATUS_IO_FAILURE_MMP) {
  str = gettext("SUSPENDED");
 } else {
  verify(nvlist_lookup_nvlist(zpool_get_config(zhp, ((void*)0)),
      ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
  verify(nvlist_lookup_uint64_array(nvroot,
      ZPOOL_CONFIG_VDEV_STATS, (uint64_t **)&vs, &vsc)
      == 0);
  str = zpool_state_to_name(vs->vs_state, vs->vs_aux);
 }
 return (str);
}
