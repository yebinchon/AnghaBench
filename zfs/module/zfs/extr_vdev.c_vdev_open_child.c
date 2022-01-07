
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vdev_open_thread; int vdev_open_error; } ;
typedef TYPE_1__ vdev_t ;


 int * curthread ;
 int vdev_open (TYPE_1__*) ;

__attribute__((used)) static void
vdev_open_child(void *arg)
{
 vdev_t *vd = arg;

 vd->vdev_open_thread = curthread;
 vd->vdev_open_error = vdev_open(vd);
 vd->vdev_open_thread = ((void*)0);
}
