
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_9__ {int spa_import_flags; scalar_t__ spa_load_state; int spa_l2cache; int spa_spares; int * spa_root_vdev; scalar_t__ spa_autoreplace; int spa_load_info; } ;
typedef TYPE_1__ spa_t ;


 int B_FALSE ;
 int EREMOTEIO ;
 int FTAG ;
 int MMP_STATE_NO_HOSTID ;
 int RW_WRITER ;
 int SCL_ALL ;
 scalar_t__ SPA_LOAD_IMPORT ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 int VDEV_AUX_ACTIVE ;
 int VDEV_AUX_CORRUPT_DATA ;
 int ZFS_IMPORT_SKIP_MMP ;
 int ZPOOL_CONFIG_MMP_STATE ;
 int fnvlist_add_uint64 (int ,int ,int ) ;
 int spa_aux_check_removed (int *) ;
 int spa_check_removed (int *) ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 scalar_t__ spa_get_hostid (TYPE_1__*) ;
 int spa_ld_log_spacemaps (TYPE_1__*) ;
 int spa_load_failed (TYPE_1__*,char*,int) ;
 scalar_t__ spa_multihost (TYPE_1__*) ;
 int spa_vdev_err (int *,int ,int) ;
 int vdev_dtl_reassess (int *,int ,int ,int ) ;
 int vdev_load (int *) ;

__attribute__((used)) static int
spa_ld_load_vdev_metadata(spa_t *spa)
{
 int error = 0;
 vdev_t *rvd = spa->spa_root_vdev;






 if (spa_multihost(spa) && spa_get_hostid(spa) == 0 &&
     (spa->spa_import_flags & ZFS_IMPORT_SKIP_MMP) == 0) {
  fnvlist_add_uint64(spa->spa_load_info,
      ZPOOL_CONFIG_MMP_STATE, MMP_STATE_NO_HOSTID);
  return (spa_vdev_err(rvd, VDEV_AUX_ACTIVE, EREMOTEIO));
 }
 if (spa->spa_autoreplace && spa->spa_load_state != SPA_LOAD_TRYIMPORT) {
  spa_check_removed(spa->spa_root_vdev);





  if (spa->spa_load_state != SPA_LOAD_IMPORT) {
   spa_aux_check_removed(&spa->spa_spares);
   spa_aux_check_removed(&spa->spa_l2cache);
  }
 }




 error = vdev_load(rvd);
 if (error != 0) {
  spa_load_failed(spa, "vdev_load failed [error=%d]", error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, error));
 }

 error = spa_ld_log_spacemaps(spa);
 if (error != 0) {
  spa_load_failed(spa, "spa_ld_log_sm_data failed [error=%d]",
      error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, error));
 }




 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
 vdev_dtl_reassess(rvd, 0, 0, B_FALSE);
 spa_config_exit(spa, SCL_ALL, FTAG);

 return (0);
}
