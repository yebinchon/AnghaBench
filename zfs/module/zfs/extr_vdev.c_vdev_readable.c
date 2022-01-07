
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_cant_read; } ;
typedef TYPE_1__ vdev_t ;
typedef int boolean_t ;


 int vdev_is_dead (TYPE_1__*) ;

boolean_t
vdev_readable(vdev_t *vd)
{
 return (!vdev_is_dead(vd) && !vd->vdev_cant_read);
}
