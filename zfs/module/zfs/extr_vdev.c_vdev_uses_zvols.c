
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_children; struct TYPE_3__** vdev_child; int vdev_path; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ zvol_is_zvol (int ) ;

__attribute__((used)) static boolean_t
vdev_uses_zvols(vdev_t *vd)
{





 for (int c = 0; c < vd->vdev_children; c++)
  if (vdev_uses_zvols(vd->vdev_child[c]))
   return (B_TRUE);

 return (B_FALSE);
}
