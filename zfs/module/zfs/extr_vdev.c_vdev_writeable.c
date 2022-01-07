
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_cant_write; } ;
typedef TYPE_1__ vdev_t ;
typedef int boolean_t ;


 scalar_t__ vdev_is_concrete (TYPE_1__*) ;
 int vdev_is_dead (TYPE_1__*) ;

boolean_t
vdev_writeable(vdev_t *vd)
{
 return (!vdev_is_dead(vd) && !vd->vdev_cant_write &&
     vdev_is_concrete(vd));
}
