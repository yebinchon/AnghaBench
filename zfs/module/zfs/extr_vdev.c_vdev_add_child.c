
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t vdev_id; size_t vdev_children; TYPE_5__* vdev_spa; TYPE_1__* vdev_ops; scalar_t__ vdev_guid_sum; struct TYPE_12__* vdev_parent; struct TYPE_12__* vdev_top; struct TYPE_12__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_13__ {int spa_leaf_list_gen; int spa_leaf_list; } ;
struct TYPE_11__ {scalar_t__ vdev_op_leaf; } ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int MAX (int,size_t) ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int bcopy (TYPE_2__**,TYPE_2__**,size_t) ;
 TYPE_2__** kmem_alloc (size_t,int ) ;
 int kmem_free (TYPE_2__**,size_t) ;
 int list_insert_head (int *,TYPE_2__*) ;
 scalar_t__ spa_config_held (TYPE_5__*,scalar_t__,int ) ;

void
vdev_add_child(vdev_t *pvd, vdev_t *cvd)
{
 size_t oldsize, newsize;
 uint64_t id = cvd->vdev_id;
 vdev_t **newchild;

 ASSERT(spa_config_held(cvd->vdev_spa, SCL_ALL, RW_WRITER) == SCL_ALL);
 ASSERT(cvd->vdev_parent == ((void*)0));

 cvd->vdev_parent = pvd;

 if (pvd == ((void*)0))
  return;

 ASSERT(id >= pvd->vdev_children || pvd->vdev_child[id] == ((void*)0));

 oldsize = pvd->vdev_children * sizeof (vdev_t *);
 pvd->vdev_children = MAX(pvd->vdev_children, id + 1);
 newsize = pvd->vdev_children * sizeof (vdev_t *);

 newchild = kmem_alloc(newsize, KM_SLEEP);
 if (pvd->vdev_child != ((void*)0)) {
  bcopy(pvd->vdev_child, newchild, oldsize);
  kmem_free(pvd->vdev_child, oldsize);
 }

 pvd->vdev_child = newchild;
 pvd->vdev_child[id] = cvd;

 cvd->vdev_top = (pvd->vdev_top ? pvd->vdev_top: cvd);
 ASSERT(cvd->vdev_top->vdev_parent->vdev_parent == ((void*)0));




 for (; pvd != ((void*)0); pvd = pvd->vdev_parent)
  pvd->vdev_guid_sum += cvd->vdev_guid_sum;

 if (cvd->vdev_ops->vdev_op_leaf) {
  list_insert_head(&cvd->vdev_spa->spa_leaf_list, cvd);
  cvd->vdev_spa->spa_leaf_list_gen++;
 }
}
