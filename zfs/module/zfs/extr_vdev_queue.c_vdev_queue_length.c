
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vq_active_tree; } ;
struct TYPE_5__ {TYPE_1__ vdev_queue; } ;
typedef TYPE_2__ vdev_t ;


 int avl_numnodes (int *) ;

int
vdev_queue_length(vdev_t *vd)
{
 return (avl_numnodes(&vd->vdev_queue.vq_active_tree));
}
