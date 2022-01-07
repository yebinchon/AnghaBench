
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zpool_status_t ;
typedef scalar_t__ zpool_errata_t ;
struct TYPE_5__ {int fi_guid; } ;
typedef TYPE_1__ zfeature_info_t ;
struct TYPE_6__ {scalar_t__ vs_state; scalar_t__ vs_aux; } ;
typedef TYPE_2__ vdev_stat_t ;
typedef int uint_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ pss_func; scalar_t__ pss_state; } ;
typedef TYPE_3__ pool_scan_stat_t ;
typedef int nvlist_t ;
typedef scalar_t__ mmp_state_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ DSS_SCANNING ;
 scalar_t__ MMP_STATE_ACTIVE ;
 scalar_t__ MMP_STATE_NO_HOSTID ;
 scalar_t__ POOL_SCAN_RESILVER ;
 scalar_t__ POOL_STATE_ACTIVE ;
 int SPA_FEATURES ;
 scalar_t__ SPA_VERSION ;
 scalar_t__ SPA_VERSION_FEATURES ;
 scalar_t__ SPA_VERSION_IS_SUPPORTED (scalar_t__) ;
 scalar_t__ VDEV_AUX_ACTIVE ;
 scalar_t__ VDEV_AUX_BAD_GUID_SUM ;
 scalar_t__ VDEV_AUX_BAD_LOG ;
 scalar_t__ VDEV_AUX_CORRUPT_DATA ;
 scalar_t__ VDEV_AUX_UNSUP_FEAT ;
 scalar_t__ VDEV_AUX_VERSION_NEWER ;
 scalar_t__ VDEV_STATE_CANT_OPEN ;
 scalar_t__ ZIO_FAILURE_MODE_CONTINUE ;
 scalar_t__ ZIO_SUSPEND_MMP ;
 int ZPOOL_CONFIG_CAN_RDONLY ;
 int ZPOOL_CONFIG_ENABLED_FEAT ;
 int ZPOOL_CONFIG_ERRATA ;
 int ZPOOL_CONFIG_ERRCOUNT ;
 int ZPOOL_CONFIG_FEATURE_STATS ;
 int ZPOOL_CONFIG_HOSTID ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_MMP_STATE ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_SCAN_STATS ;
 int ZPOOL_CONFIG_SUSPENDED ;
 int ZPOOL_CONFIG_SUSPENDED_REASON ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_CONFIG_VERSION ;
 int ZPOOL_STATUS_BAD_GUID_SUM ;
 int ZPOOL_STATUS_BAD_LOG ;
 int ZPOOL_STATUS_CORRUPT_DATA ;
 int ZPOOL_STATUS_CORRUPT_LABEL_NR ;
 int ZPOOL_STATUS_CORRUPT_LABEL_R ;
 int ZPOOL_STATUS_CORRUPT_POOL ;
 int ZPOOL_STATUS_ERRATA ;
 int ZPOOL_STATUS_FAILING_DEV ;
 int ZPOOL_STATUS_FAULTED_DEV_NR ;
 int ZPOOL_STATUS_FAULTED_DEV_R ;
 int ZPOOL_STATUS_FEAT_DISABLED ;
 int ZPOOL_STATUS_HOSTID_ACTIVE ;
 int ZPOOL_STATUS_HOSTID_MISMATCH ;
 int ZPOOL_STATUS_HOSTID_REQUIRED ;
 int ZPOOL_STATUS_IO_FAILURE_CONTINUE ;
 int ZPOOL_STATUS_IO_FAILURE_MMP ;
 int ZPOOL_STATUS_IO_FAILURE_WAIT ;
 int ZPOOL_STATUS_MISSING_DEV_NR ;
 int ZPOOL_STATUS_MISSING_DEV_R ;
 int ZPOOL_STATUS_OFFLINE_DEV ;
 int ZPOOL_STATUS_OK ;
 int ZPOOL_STATUS_REMOVED_DEV ;
 int ZPOOL_STATUS_RESILVERING ;
 int ZPOOL_STATUS_UNSUP_FEAT_READ ;
 int ZPOOL_STATUS_UNSUP_FEAT_WRITE ;
 int ZPOOL_STATUS_VERSION_NEWER ;
 int ZPOOL_STATUS_VERSION_OLDER ;
 scalar_t__ find_vdev_problem (int *,int ) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 scalar_t__ fnvlist_lookup_uint64 (int *,int ) ;
 unsigned long get_system_hostid () ;
 scalar_t__ nvlist_exists (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,scalar_t__**,int *) ;
 TYPE_1__* spa_feature_table ;
 int vdev_broken ;
 int vdev_errors ;
 int vdev_faulted ;
 int vdev_missing ;
 int vdev_offlined ;
 int vdev_removed ;
 int verify (int) ;

__attribute__((used)) static zpool_status_t
check_status(nvlist_t *config, boolean_t isimport, zpool_errata_t *erratap)
{
 nvlist_t *nvroot;
 vdev_stat_t *vs;
 pool_scan_stat_t *ps = ((void*)0);
 uint_t vsc, psc;
 uint64_t nerr;
 uint64_t version;
 uint64_t stateval;
 uint64_t suspended;
 uint64_t hostid = 0;
 uint64_t errata = 0;
 unsigned long system_hostid = get_system_hostid();

 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_VERSION,
     &version) == 0);
 verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);
 verify(nvlist_lookup_uint64_array(nvroot, ZPOOL_CONFIG_VDEV_STATS,
     (uint64_t **)&vs, &vsc) == 0);
 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_STATE,
     &stateval) == 0);




 (void) nvlist_lookup_uint64_array(nvroot, ZPOOL_CONFIG_SCAN_STATS,
     (uint64_t **)&ps, &psc);
 if (ps != ((void*)0) && ps->pss_func == POOL_SCAN_RESILVER &&
     ps->pss_state == DSS_SCANNING)
  return (ZPOOL_STATUS_RESILVERING);




 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     vs->vs_aux == VDEV_AUX_ACTIVE) {
  mmp_state_t mmp_state;
  nvlist_t *nvinfo;

  nvinfo = fnvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO);
  mmp_state = fnvlist_lookup_uint64(nvinfo,
      ZPOOL_CONFIG_MMP_STATE);

  if (mmp_state == MMP_STATE_ACTIVE)
   return (ZPOOL_STATUS_HOSTID_ACTIVE);
  else if (mmp_state == MMP_STATE_NO_HOSTID)
   return (ZPOOL_STATUS_HOSTID_REQUIRED);
  else
   return (ZPOOL_STATUS_HOSTID_MISMATCH);
 }




 (void) nvlist_lookup_uint64(config, ZPOOL_CONFIG_HOSTID, &hostid);
 if (hostid != 0 && (unsigned long)hostid != system_hostid &&
     stateval == POOL_STATE_ACTIVE)
  return (ZPOOL_STATUS_HOSTID_MISMATCH);




 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     vs->vs_aux == VDEV_AUX_VERSION_NEWER)
  return (ZPOOL_STATUS_VERSION_NEWER);




 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     vs->vs_aux == VDEV_AUX_UNSUP_FEAT) {
  nvlist_t *nvinfo;

  verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO,
      &nvinfo) == 0);
  if (nvlist_exists(nvinfo, ZPOOL_CONFIG_CAN_RDONLY))
   return (ZPOOL_STATUS_UNSUP_FEAT_WRITE);
  return (ZPOOL_STATUS_UNSUP_FEAT_READ);
 }




 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     vs->vs_aux == VDEV_AUX_BAD_GUID_SUM)
  return (ZPOOL_STATUS_BAD_GUID_SUM);




 if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_SUSPENDED,
     &suspended) == 0) {
  uint64_t reason;

  if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_SUSPENDED_REASON,
      &reason) == 0 && reason == ZIO_SUSPEND_MMP)
   return (ZPOOL_STATUS_IO_FAILURE_MMP);

  if (suspended == ZIO_FAILURE_MODE_CONTINUE)
   return (ZPOOL_STATUS_IO_FAILURE_CONTINUE);
  return (ZPOOL_STATUS_IO_FAILURE_WAIT);
 }




 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     vs->vs_aux == VDEV_AUX_BAD_LOG) {
  return (ZPOOL_STATUS_BAD_LOG);
 }




 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     find_vdev_problem(nvroot, vdev_faulted))
  return (ZPOOL_STATUS_FAULTED_DEV_NR);

 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     find_vdev_problem(nvroot, vdev_missing))
  return (ZPOOL_STATUS_MISSING_DEV_NR);

 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     find_vdev_problem(nvroot, vdev_broken))
  return (ZPOOL_STATUS_CORRUPT_LABEL_NR);




 if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
     vs->vs_aux == VDEV_AUX_CORRUPT_DATA)
  return (ZPOOL_STATUS_CORRUPT_POOL);




 if (!isimport) {
  if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_ERRCOUNT,
      &nerr) == 0 && nerr != 0)
   return (ZPOOL_STATUS_CORRUPT_DATA);
 }




 if (find_vdev_problem(nvroot, vdev_faulted))
  return (ZPOOL_STATUS_FAULTED_DEV_R);
 if (find_vdev_problem(nvroot, vdev_missing))
  return (ZPOOL_STATUS_MISSING_DEV_R);
 if (find_vdev_problem(nvroot, vdev_broken))
  return (ZPOOL_STATUS_CORRUPT_LABEL_R);




 if (!isimport && find_vdev_problem(nvroot, vdev_errors))
  return (ZPOOL_STATUS_FAILING_DEV);




 if (find_vdev_problem(nvroot, vdev_offlined))
  return (ZPOOL_STATUS_OFFLINE_DEV);




 if (find_vdev_problem(nvroot, vdev_removed))
  return (ZPOOL_STATUS_REMOVED_DEV);




 (void) nvlist_lookup_uint64(config, ZPOOL_CONFIG_ERRATA, &errata);
 if (errata) {
  *erratap = errata;
  return (ZPOOL_STATUS_ERRATA);
 }




 if (SPA_VERSION_IS_SUPPORTED(version) && version != SPA_VERSION)
  return (ZPOOL_STATUS_VERSION_OLDER);




 if (version >= SPA_VERSION_FEATURES) {
  int i;
  nvlist_t *feat;

  if (isimport) {
   feat = fnvlist_lookup_nvlist(config,
       ZPOOL_CONFIG_LOAD_INFO);
   if (nvlist_exists(feat, ZPOOL_CONFIG_ENABLED_FEAT))
    feat = fnvlist_lookup_nvlist(feat,
        ZPOOL_CONFIG_ENABLED_FEAT);
  } else {
   feat = fnvlist_lookup_nvlist(config,
       ZPOOL_CONFIG_FEATURE_STATS);
  }

  for (i = 0; i < SPA_FEATURES; i++) {
   zfeature_info_t *fi = &spa_feature_table[i];
   if (!nvlist_exists(feat, fi->fi_guid))
    return (ZPOOL_STATUS_FEAT_DISABLED);
  }
 }

 return (ZPOOL_STATUS_OK);
}
