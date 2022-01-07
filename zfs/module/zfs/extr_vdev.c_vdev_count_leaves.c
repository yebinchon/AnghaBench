
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;


 int FTAG ;
 int RW_READER ;
 int SCL_VDEV ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 int vdev_count_leaves_impl (int ) ;

int
vdev_count_leaves(spa_t *spa)
{
 int rc;

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);
 rc = vdev_count_leaves_impl(spa->spa_root_vdev);
 spa_config_exit(spa, SCL_VDEV, FTAG);

 return (rc);
}
