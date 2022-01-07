
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vdev_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_11__ {int ub_txg; int ub_timestamp; int ub_mmp_config; } ;
typedef TYPE_1__ uberblock_t ;
struct TYPE_12__ {int spa_load_info; int * spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;
typedef int kmutex_t ;
typedef int kcondvar_t ;
typedef scalar_t__ hrtime_t ;


 int CV_DEFAULT ;
 int EINTR ;
 int EREMOTEIO ;
 int MMP_SEQ (TYPE_1__*) ;
 scalar_t__ MMP_SEQ_VALID (TYPE_1__*) ;
 int MMP_STATE_ACTIVE ;
 int MUTEX_DEFAULT ;
 int NSEC2SEC (scalar_t__) ;
 int SET_ERROR (int) ;
 int VDEV_AUX_ACTIVE ;
 int ZPOOL_CONFIG_HOSTID ;
 int ZPOOL_CONFIG_HOSTNAME ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_MMP_HOSTID ;
 int ZPOOL_CONFIG_MMP_HOSTNAME ;
 int ZPOOL_CONFIG_MMP_STATE ;
 int ZPOOL_CONFIG_MMP_TXG ;
 int cv_destroy (int *) ;
 int cv_init (int *,int *,int ,int *) ;
 int cv_timedwait_sig (int *,int *,scalar_t__) ;
 scalar_t__ ddi_get_lbolt () ;
 int fnvlist_add_string (int ,int ,char*) ;
 int fnvlist_add_uint64 (int ,int ,int) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 char* fnvlist_lookup_string (int *,int ) ;
 scalar_t__ fnvlist_lookup_uint64 (int *,int ) ;
 scalar_t__ gethrtime () ;
 scalar_t__ hz ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int nvlist_free (int *) ;
 int spa_activity_check_duration (TYPE_2__*,TYPE_1__*) ;
 int spa_get_random (int) ;
 int spa_guid (TYPE_2__*) ;
 int spa_import_progress_set_mmp_check (int ,int ) ;
 int spa_vdev_err (int *,int ,int) ;
 int vdev_uberblock_load (int *,TYPE_1__*,int **) ;
 int zfs_dbgmsg (char*,int,int,int,int,int,int) ;

__attribute__((used)) static int
spa_activity_check(spa_t *spa, uberblock_t *ub, nvlist_t *config)
{
 uint64_t txg = ub->ub_txg;
 uint64_t timestamp = ub->ub_timestamp;
 uint64_t mmp_config = ub->ub_mmp_config;
 uint16_t mmp_seq = MMP_SEQ_VALID(ub) ? MMP_SEQ(ub) : 0;
 uint64_t import_delay;
 hrtime_t import_expire;
 nvlist_t *mmp_label = ((void*)0);
 vdev_t *rvd = spa->spa_root_vdev;
 kcondvar_t cv;
 kmutex_t mtx;
 int error = 0;

 cv_init(&cv, ((void*)0), CV_DEFAULT, ((void*)0));
 mutex_init(&mtx, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 mutex_enter(&mtx);
 if (nvlist_exists(config, ZPOOL_CONFIG_LOAD_INFO)) {
  nvlist_t *nvinfo = fnvlist_lookup_nvlist(config,
      ZPOOL_CONFIG_LOAD_INFO);

  if (nvlist_exists(nvinfo, ZPOOL_CONFIG_MMP_TXG) &&
      fnvlist_lookup_uint64(nvinfo, ZPOOL_CONFIG_MMP_TXG) == 0) {
   vdev_uberblock_load(rvd, ub, &mmp_label);
   error = SET_ERROR(EREMOTEIO);
   goto out;
  }
 }

 import_delay = spa_activity_check_duration(spa, ub);


 import_delay += import_delay * spa_get_random(250) / 1000;

 import_expire = gethrtime() + import_delay;

 while (gethrtime() < import_expire) {
  (void) spa_import_progress_set_mmp_check(spa_guid(spa),
      NSEC2SEC(import_expire - gethrtime()));

  vdev_uberblock_load(rvd, ub, &mmp_label);

  if (txg != ub->ub_txg || timestamp != ub->ub_timestamp ||
      mmp_seq != (MMP_SEQ_VALID(ub) ? MMP_SEQ(ub) : 0)) {
   zfs_dbgmsg("multihost activity detected "
       "txg %llu ub_txg  %llu "
       "timestamp %llu ub_timestamp  %llu "
       "mmp_config %#llx ub_mmp_config %#llx",
       txg, ub->ub_txg, timestamp, ub->ub_timestamp,
       mmp_config, ub->ub_mmp_config);

   error = SET_ERROR(EREMOTEIO);
   break;
  }

  if (mmp_label) {
   nvlist_free(mmp_label);
   mmp_label = ((void*)0);
  }

  error = cv_timedwait_sig(&cv, &mtx, ddi_get_lbolt() + hz);
  if (error != -1) {
   error = SET_ERROR(EINTR);
   break;
  }
  error = 0;
 }

out:
 mutex_exit(&mtx);
 mutex_destroy(&mtx);
 cv_destroy(&cv);
 if (error == EREMOTEIO) {
  char *hostname = "<unknown>";
  uint64_t hostid = 0;

  if (mmp_label) {
   if (nvlist_exists(mmp_label, ZPOOL_CONFIG_HOSTNAME)) {
    hostname = fnvlist_lookup_string(mmp_label,
        ZPOOL_CONFIG_HOSTNAME);
    fnvlist_add_string(spa->spa_load_info,
        ZPOOL_CONFIG_MMP_HOSTNAME, hostname);
   }

   if (nvlist_exists(mmp_label, ZPOOL_CONFIG_HOSTID)) {
    hostid = fnvlist_lookup_uint64(mmp_label,
        ZPOOL_CONFIG_HOSTID);
    fnvlist_add_uint64(spa->spa_load_info,
        ZPOOL_CONFIG_MMP_HOSTID, hostid);
   }
  }

  fnvlist_add_uint64(spa->spa_load_info,
      ZPOOL_CONFIG_MMP_STATE, MMP_STATE_ACTIVE);
  fnvlist_add_uint64(spa->spa_load_info,
      ZPOOL_CONFIG_MMP_TXG, 0);

  error = spa_vdev_err(rvd, VDEV_AUX_ACTIVE, EREMOTEIO);
 }

 if (mmp_label)
  nvlist_free(mmp_label);

 return (error);
}
