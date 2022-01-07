
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_21__ {scalar_t__ ub_checkpoint_txg; scalar_t__ ub_txg; scalar_t__ ub_mmp_magic; scalar_t__ ub_version; scalar_t__ ub_mmp_delay; } ;
typedef TYPE_1__ uberblock_t ;
typedef int u_longlong_t ;
struct TYPE_22__ {scalar_t__ spa_load_max_txg; int * spa_config_splitting; int spa_config; int spa_load_info; int * spa_label_features; TYPE_1__ spa_uberblock; int * spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef scalar_t__ spa_import_type_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 int ENOTSUP ;
 int ENXIO ;
 int EREMOTEIO ;
 int FTAG ;
 int KM_SLEEP ;
 scalar_t__ MMP_MAGIC ;
 int MMP_SEQ (TYPE_1__*) ;
 scalar_t__ MMP_SEQ_VALID (TYPE_1__*) ;
 scalar_t__ MMP_STATE_INACTIVE ;
 scalar_t__ MMP_STATE_NO_HOSTID ;
 int NV_UNIQUE_NAME ;
 int RW_WRITER ;
 int SCL_ALL ;
 scalar_t__ SPA_IMPORT_ASSEMBLE ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int SPA_VERSION_IS_SUPPORTED (scalar_t__) ;
 scalar_t__ UINT64_MAX ;
 int VDEV_AUX_ACTIVE ;
 int VDEV_AUX_CORRUPT_DATA ;
 int VDEV_AUX_UNSUP_FEAT ;
 int VDEV_AUX_VERSION_NEWER ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_FEATURES_FOR_READ ;
 int ZPOOL_CONFIG_MMP_SEQ ;
 int ZPOOL_CONFIG_MMP_STATE ;
 int ZPOOL_CONFIG_MMP_TXG ;
 int ZPOOL_CONFIG_UNSUP_FEAT ;
 int fnvlist_add_uint16 (int ,int ,int ) ;
 int fnvlist_add_uint64 (int ,int ,scalar_t__) ;
 scalar_t__ nvlist_add_nvlist (int ,int ,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 int nvlist_empty (int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int spa_activity_check (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ spa_activity_check_required (TYPE_2__*,TYPE_1__*,int *,int ) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 scalar_t__ spa_get_hostid (TYPE_2__*) ;
 int spa_guid (TYPE_2__*) ;
 int spa_import_progress_set_max_txg (int ,int ) ;
 scalar_t__ spa_importing_readonly_checkpoint (TYPE_2__*) ;
 int spa_ld_select_uberblock_done (TYPE_2__*,TYPE_1__*) ;
 int spa_load_failed (TYPE_2__*,char*,...) ;
 int spa_load_note (TYPE_2__*,char*,int ) ;
 int spa_try_repair (TYPE_2__*,int ) ;
 int spa_vdev_err (int *,int ,int ) ;
 int vdev_uberblock_load (int *,TYPE_1__*,int **) ;
 int zfeature_is_supported (int ) ;

__attribute__((used)) static int
spa_ld_select_uberblock(spa_t *spa, spa_import_type_t type)
{
 vdev_t *rvd = spa->spa_root_vdev;
 nvlist_t *label;
 uberblock_t *ub = &spa->spa_uberblock;
 boolean_t activity_check = B_FALSE;
 if (ub->ub_checkpoint_txg != 0 &&
     spa_importing_readonly_checkpoint(spa)) {
  spa_ld_select_uberblock_done(spa, ub);
  return (0);
 }




 vdev_uberblock_load(rvd, ub, &label);




 if (ub->ub_txg == 0) {
  nvlist_free(label);
  spa_load_failed(spa, "no valid uberblock found");
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, ENXIO));
 }

 if (spa->spa_load_max_txg != UINT64_MAX) {
  (void) spa_import_progress_set_max_txg(spa_guid(spa),
      (u_longlong_t)spa->spa_load_max_txg);
 }
 spa_load_note(spa, "using uberblock with txg=%llu",
     (u_longlong_t)ub->ub_txg);







 activity_check = spa_activity_check_required(spa, ub, label,
     spa->spa_config);
 if (activity_check) {
  if (ub->ub_mmp_magic == MMP_MAGIC && ub->ub_mmp_delay &&
      spa_get_hostid(spa) == 0) {
   nvlist_free(label);
   fnvlist_add_uint64(spa->spa_load_info,
       ZPOOL_CONFIG_MMP_STATE, MMP_STATE_NO_HOSTID);
   return (spa_vdev_err(rvd, VDEV_AUX_ACTIVE, EREMOTEIO));
  }

  int error = spa_activity_check(spa, ub, spa->spa_config);
  if (error) {
   nvlist_free(label);
   return (error);
  }

  fnvlist_add_uint64(spa->spa_load_info,
      ZPOOL_CONFIG_MMP_STATE, MMP_STATE_INACTIVE);
  fnvlist_add_uint64(spa->spa_load_info,
      ZPOOL_CONFIG_MMP_TXG, ub->ub_txg);
  fnvlist_add_uint16(spa->spa_load_info,
      ZPOOL_CONFIG_MMP_SEQ,
      (MMP_SEQ_VALID(ub) ? MMP_SEQ(ub) : 0));
 }




 if (!SPA_VERSION_IS_SUPPORTED(ub->ub_version)) {
  nvlist_free(label);
  spa_load_failed(spa, "version %llu is not supported",
      (u_longlong_t)ub->ub_version);
  return (spa_vdev_err(rvd, VDEV_AUX_VERSION_NEWER, ENOTSUP));
 }

 if (ub->ub_version >= SPA_VERSION_FEATURES) {
  nvlist_t *features;





  if (label == ((void*)0)) {
   spa_load_failed(spa, "label config unavailable");
   return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA,
       ENXIO));
  }

  if (nvlist_lookup_nvlist(label, ZPOOL_CONFIG_FEATURES_FOR_READ,
      &features) != 0) {
   nvlist_free(label);
   spa_load_failed(spa, "invalid label: '%s' missing",
       ZPOOL_CONFIG_FEATURES_FOR_READ);
   return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA,
       ENXIO));
  }





  nvlist_free(spa->spa_label_features);
  VERIFY(nvlist_dup(features, &spa->spa_label_features, 0) == 0);
 }

 nvlist_free(label);






 if (ub->ub_version >= SPA_VERSION_FEATURES) {
  nvlist_t *unsup_feat;

  VERIFY(nvlist_alloc(&unsup_feat, NV_UNIQUE_NAME, KM_SLEEP) ==
      0);

  for (nvpair_t *nvp = nvlist_next_nvpair(spa->spa_label_features,
      ((void*)0)); nvp != ((void*)0);
      nvp = nvlist_next_nvpair(spa->spa_label_features, nvp)) {
   if (!zfeature_is_supported(nvpair_name(nvp))) {
    VERIFY(nvlist_add_string(unsup_feat,
        nvpair_name(nvp), "") == 0);
   }
  }

  if (!nvlist_empty(unsup_feat)) {
   VERIFY(nvlist_add_nvlist(spa->spa_load_info,
       ZPOOL_CONFIG_UNSUP_FEAT, unsup_feat) == 0);
   nvlist_free(unsup_feat);
   spa_load_failed(spa, "some features are unsupported");
   return (spa_vdev_err(rvd, VDEV_AUX_UNSUP_FEAT,
       ENOTSUP));
  }

  nvlist_free(unsup_feat);
 }

 if (type != SPA_IMPORT_ASSEMBLE && spa->spa_config_splitting) {
  spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
  spa_try_repair(spa, spa->spa_config);
  spa_config_exit(spa, SCL_ALL, FTAG);
  nvlist_free(spa->spa_config_splitting);
  spa->spa_config_splitting = ((void*)0);
 }




 spa_ld_select_uberblock_done(spa, ub);

 return (0);
}
