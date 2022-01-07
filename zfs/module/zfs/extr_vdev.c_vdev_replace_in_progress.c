
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_children; struct TYPE_4__** vdev_child; int * vdev_ops; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DTL_MISSING ;
 int RW_READER ;
 int SCL_ALL ;
 scalar_t__ spa_config_held (int ,int ,int ) ;
 int vdev_dtl_empty (TYPE_1__*,int ) ;
 int vdev_replacing_ops ;
 int vdev_spare_ops ;

boolean_t
vdev_replace_in_progress(vdev_t *vdev)
{
 ASSERT(spa_config_held(vdev->vdev_spa, SCL_ALL, RW_READER) != 0);

 if (vdev->vdev_ops == &vdev_replacing_ops)
  return (B_TRUE);






 if (vdev->vdev_ops == &vdev_spare_ops && (vdev->vdev_children > 2 ||
     !vdev_dtl_empty(vdev->vdev_child[1], DTL_MISSING)))
  return (B_TRUE);

 for (int i = 0; i < vdev->vdev_children; i++) {
  if (vdev_replace_in_progress(vdev->vdev_child[i]))
   return (B_TRUE);
 }

 return (B_FALSE);
}
