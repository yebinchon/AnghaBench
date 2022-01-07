
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spa_vdev_locks; int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;


 int RW_WRITER ;
 int SCL_STATE_ALL ;
 int SCL_ZIO ;
 int spa_config_enter (TYPE_1__*,int,TYPE_1__*,int ) ;
 scalar_t__ spa_is_root (TYPE_1__*) ;
 int vdev_hold (int ) ;

void
spa_vdev_state_enter(spa_t *spa, int oplocks)
{
 int locks = SCL_STATE_ALL | oplocks;
 if (spa_is_root(spa)) {
  int low = locks & ~(SCL_ZIO - 1);
  int high = locks & ~low;

  spa_config_enter(spa, high, spa, RW_WRITER);
  vdev_hold(spa->spa_root_vdev);
  spa_config_enter(spa, low, spa, RW_WRITER);
 } else {
  spa_config_enter(spa, locks, spa, RW_WRITER);
 }
 spa->spa_vdev_locks = locks;
}
