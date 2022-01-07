
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; struct TYPE_5__** vdev_child; int vdev_id; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int kmem_free (TYPE_1__**,int) ;
 TYPE_1__** kmem_zalloc (int,int ) ;
 scalar_t__ spa_config_held (int ,scalar_t__,int ) ;

void
vdev_compact_children(vdev_t *pvd)
{
 vdev_t **newchild, *cvd;
 int oldc = pvd->vdev_children;
 int newc;

 ASSERT(spa_config_held(pvd->vdev_spa, SCL_ALL, RW_WRITER) == SCL_ALL);

 if (oldc == 0)
  return;

 for (int c = newc = 0; c < oldc; c++)
  if (pvd->vdev_child[c])
   newc++;

 if (newc > 0) {
  newchild = kmem_zalloc(newc * sizeof (vdev_t *), KM_SLEEP);

  for (int c = newc = 0; c < oldc; c++) {
   if ((cvd = pvd->vdev_child[c]) != ((void*)0)) {
    newchild[newc] = cvd;
    cvd->vdev_id = newc++;
   }
  }
 } else {
  newchild = ((void*)0);
 }

 kmem_free(pvd->vdev_child, oldc * sizeof (vdev_t *));
 pvd->vdev_child = newchild;
 pvd->vdev_children = newc;
}
