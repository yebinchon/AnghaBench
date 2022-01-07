
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int ) ;
 int RW_WRITER ;
 int SCL_STATE ;
 int spa_config_held (int ,int ,int ) ;

__attribute__((used)) static void
vdev_disk_rele(vdev_t *vd)
{
 ASSERT(spa_config_held(vd->vdev_spa, SCL_STATE, RW_WRITER));


}
