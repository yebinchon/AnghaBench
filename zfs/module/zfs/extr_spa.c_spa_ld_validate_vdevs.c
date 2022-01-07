
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ vdev_state; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_10__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;


 int ENXIO ;
 int FTAG ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SET_ERROR (int ) ;
 scalar_t__ VDEV_STATE_CANT_OPEN ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_load_failed (TYPE_2__*,char*,...) ;
 int vdev_dbgmsg_print_tree (TYPE_1__*,int) ;
 int vdev_validate (TYPE_1__*) ;

__attribute__((used)) static int
spa_ld_validate_vdevs(spa_t *spa)
{
 int error = 0;
 vdev_t *rvd = spa->spa_root_vdev;

 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
 error = vdev_validate(rvd);
 spa_config_exit(spa, SCL_ALL, FTAG);

 if (error != 0) {
  spa_load_failed(spa, "vdev_validate failed [error=%d]", error);
  return (error);
 }

 if (rvd->vdev_state <= VDEV_STATE_CANT_OPEN) {
  spa_load_failed(spa, "cannot open vdev tree after invalidating "
      "some vdevs");
  vdev_dbgmsg_print_tree(rvd, 2);
  return (SET_ERROR(ENXIO));
 }

 return (0);
}
