
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int vdev_mg; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_11__ {int spa_name; TYPE_1__* spa_vdev_removal; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_9__ {int svr_vdev_id; } ;


 int FTAG ;
 int RW_WRITER ;
 int SCL_ALLOC ;
 int SCL_VDEV ;
 int ZFS_SPACE_CHECK_EXTRA_RESERVED ;
 int dsl_sync_task (int ,int ,int ,int *,int ,int ) ;
 int metaslab_group_activate (int ) ;
 int spa_config_enter (TYPE_3__*,int,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int,int ) ;
 int spa_vdev_remove_cancel_check ;
 int spa_vdev_remove_cancel_sync ;
 TYPE_2__* vdev_lookup_top (TYPE_3__*,int ) ;

__attribute__((used)) static int
spa_vdev_remove_cancel_impl(spa_t *spa)
{
 uint64_t vdid = spa->spa_vdev_removal->svr_vdev_id;

 int error = dsl_sync_task(spa->spa_name, spa_vdev_remove_cancel_check,
     spa_vdev_remove_cancel_sync, ((void*)0), 0,
     ZFS_SPACE_CHECK_EXTRA_RESERVED);

 if (error == 0) {
  spa_config_enter(spa, SCL_ALLOC | SCL_VDEV, FTAG, RW_WRITER);
  vdev_t *vd = vdev_lookup_top(spa, vdid);
  metaslab_group_activate(vd->vdev_mg);
  spa_config_exit(spa, SCL_ALLOC | SCL_VDEV, FTAG);
 }

 return (error);
}
