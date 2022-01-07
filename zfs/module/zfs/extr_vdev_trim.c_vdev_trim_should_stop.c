
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vdev_top; scalar_t__ vdev_detached; scalar_t__ vdev_trim_exit_wanted; } ;
typedef TYPE_2__ vdev_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ vdev_removing; } ;


 int vdev_writeable (TYPE_2__*) ;

__attribute__((used)) static boolean_t
vdev_trim_should_stop(vdev_t *vd)
{
 return (vd->vdev_trim_exit_wanted || !vdev_writeable(vd) ||
     vd->vdev_detached || vd->vdev_top->vdev_removing);
}
