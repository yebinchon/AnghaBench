
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* vdev_path; int * vdev_devid_vp; int * vdev_name_vp; int * vdev_tsd; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int ) ;
 int RW_WRITER ;
 int SCL_STATE ;
 int spa_config_held (int ,int ,int ) ;

__attribute__((used)) static void
vdev_disk_hold(vdev_t *vd)
{
 ASSERT(spa_config_held(vd->vdev_spa, SCL_STATE, RW_WRITER));


 if (vd->vdev_path == ((void*)0) || vd->vdev_path[0] != '/')
  return;





 if (vd->vdev_tsd != ((void*)0))
  return;


 vd->vdev_name_vp = ((void*)0);
 vd->vdev_devid_vp = ((void*)0);
}
