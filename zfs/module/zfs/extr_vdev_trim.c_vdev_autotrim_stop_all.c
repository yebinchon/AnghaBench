
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t vdev_children; int * vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_5__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;


 int vdev_autotrim_stop_wait (int ) ;

void
vdev_autotrim_stop_all(spa_t *spa)
{
 vdev_t *root_vd = spa->spa_root_vdev;

 for (uint64_t i = 0; i < root_vd->vdev_children; i++)
  vdev_autotrim_stop_wait(root_vd->vdev_child[i]);
}
