
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int vdev_children; int vdev_spa; int * vdev_physpath; TYPE_1__* vdev_ops; struct TYPE_8__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_9__ {int spa_autoexpand; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_7__ {int vdev_op_leaf; } ;


 int ESC_ZFS_VDEV_AUTOEXPAND ;
 int spa_event_notify (int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static void
spa_async_autoexpand(spa_t *spa, vdev_t *vd)
{
 if (!spa->spa_autoexpand)
  return;

 for (int c = 0; c < vd->vdev_children; c++) {
  vdev_t *cvd = vd->vdev_child[c];
  spa_async_autoexpand(spa, cvd);
 }

 if (!vd->vdev_ops->vdev_op_leaf || vd->vdev_physpath == ((void*)0))
  return;

 spa_event_notify(vd->vdev_spa, vd, ((void*)0), ESC_ZFS_VDEV_AUTOEXPAND);
}
