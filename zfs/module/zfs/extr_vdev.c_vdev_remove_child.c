
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t vdev_id; size_t vdev_children; scalar_t__ vdev_guid_sum; struct TYPE_9__* vdev_parent; TYPE_3__* vdev_spa; TYPE_1__* vdev_ops; struct TYPE_9__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint_t ;
struct TYPE_10__ {int spa_leaf_list_gen; int spa_leaf_list; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; } ;


 int ASSERT (int) ;
 int kmem_free (TYPE_2__**,int) ;
 int list_remove (int *,TYPE_2__*) ;

void
vdev_remove_child(vdev_t *pvd, vdev_t *cvd)
{
 int c;
 uint_t id = cvd->vdev_id;

 ASSERT(cvd->vdev_parent == pvd);

 if (pvd == ((void*)0))
  return;

 ASSERT(id < pvd->vdev_children);
 ASSERT(pvd->vdev_child[id] == cvd);

 pvd->vdev_child[id] = ((void*)0);
 cvd->vdev_parent = ((void*)0);

 for (c = 0; c < pvd->vdev_children; c++)
  if (pvd->vdev_child[c])
   break;

 if (c == pvd->vdev_children) {
  kmem_free(pvd->vdev_child, c * sizeof (vdev_t *));
  pvd->vdev_child = ((void*)0);
  pvd->vdev_children = 0;
 }

 if (cvd->vdev_ops->vdev_op_leaf) {
  spa_t *spa = cvd->vdev_spa;
  list_remove(&spa->spa_leaf_list, cvd);
  spa->spa_leaf_list_gen++;
 }




 for (; pvd != ((void*)0); pvd = pvd->vdev_parent)
  pvd->vdev_guid_sum -= cvd->vdev_guid_sum;
}
