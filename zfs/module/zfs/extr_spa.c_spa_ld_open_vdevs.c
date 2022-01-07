
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_longlong_t ;
struct TYPE_7__ {scalar_t__ spa_config_source; scalar_t__ spa_missing_tvds; int spa_mode; int spa_root_vdev; scalar_t__ spa_missing_tvds_allowed; scalar_t__ spa_trust_config; } ;
typedef TYPE_1__ spa_t ;


 int ENXIO ;
 int FTAG ;
 int FWRITE ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_CONFIG_SRC_CACHEFILE ;
 scalar_t__ SPA_CONFIG_SRC_SCAN ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 int spa_load_failed (TYPE_1__*,char*,int) ;
 int spa_load_note (TYPE_1__*,char*,...) ;
 int vdev_dbgmsg_print_tree (int ,int) ;
 int vdev_open (int ) ;
 scalar_t__ zfs_max_missing_tvds ;
 scalar_t__ zfs_max_missing_tvds_cachefile ;
 scalar_t__ zfs_max_missing_tvds_scan ;

__attribute__((used)) static int
spa_ld_open_vdevs(spa_t *spa)
{
 int error = 0;





 if (spa->spa_trust_config) {
  spa->spa_missing_tvds_allowed = zfs_max_missing_tvds;
 } else if (spa->spa_config_source == SPA_CONFIG_SRC_CACHEFILE) {
  spa->spa_missing_tvds_allowed = zfs_max_missing_tvds_cachefile;
 } else if (spa->spa_config_source == SPA_CONFIG_SRC_SCAN) {
  spa->spa_missing_tvds_allowed = zfs_max_missing_tvds_scan;
 } else {
  spa->spa_missing_tvds_allowed = 0;
 }

 spa->spa_missing_tvds_allowed =
     MAX(zfs_max_missing_tvds, spa->spa_missing_tvds_allowed);

 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
 error = vdev_open(spa->spa_root_vdev);
 spa_config_exit(spa, SCL_ALL, FTAG);

 if (spa->spa_missing_tvds != 0) {
  spa_load_note(spa, "vdev tree has %lld missing top-level "
      "vdevs.", (u_longlong_t)spa->spa_missing_tvds);
  if (spa->spa_trust_config && (spa->spa_mode & FWRITE)) {
   spa_load_note(spa, "pools with missing top-level "
       "vdevs can only be opened in read-only mode.");
   error = SET_ERROR(ENXIO);
  } else {
   spa_load_note(spa, "current settings allow for maximum "
       "%lld missing top-level vdevs at this stage.",
       (u_longlong_t)spa->spa_missing_tvds_allowed);
  }
 }
 if (error != 0) {
  spa_load_failed(spa, "unable to open vdev tree [error=%d]",
      error);
 }
 if (spa->spa_missing_tvds != 0 || error != 0)
  vdev_dbgmsg_print_tree(spa->spa_root_vdev, 2);

 return (error);
}
