
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {struct TYPE_13__* vdev_top; int vdev_children; int vdev_id; int vdev_crtxg; int vdev_state; int vdev_ashift; int vdev_psize; int vdev_max_asize; int vdev_min_asize; int vdev_asize; struct TYPE_13__* vdev_parent; int * vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_ops_t ;
typedef int spa_t ;


 int ASSERT (int) ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;
 int vdev_add_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* vdev_alloc_common (int *,int ,int ,int *) ;
 int vdev_remove_child (TYPE_1__*,TYPE_1__*) ;
 int vdev_top_transfer (TYPE_1__*,TYPE_1__*) ;
 int vdev_top_update (TYPE_1__*,TYPE_1__*) ;

vdev_t *
vdev_add_parent(vdev_t *cvd, vdev_ops_t *ops)
{
 spa_t *spa = cvd->vdev_spa;
 vdev_t *pvd = cvd->vdev_parent;
 vdev_t *mvd;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

 mvd = vdev_alloc_common(spa, cvd->vdev_id, 0, ops);

 mvd->vdev_asize = cvd->vdev_asize;
 mvd->vdev_min_asize = cvd->vdev_min_asize;
 mvd->vdev_max_asize = cvd->vdev_max_asize;
 mvd->vdev_psize = cvd->vdev_psize;
 mvd->vdev_ashift = cvd->vdev_ashift;
 mvd->vdev_state = cvd->vdev_state;
 mvd->vdev_crtxg = cvd->vdev_crtxg;

 vdev_remove_child(pvd, cvd);
 vdev_add_child(pvd, mvd);
 cvd->vdev_id = mvd->vdev_children;
 vdev_add_child(mvd, cvd);
 vdev_top_update(cvd->vdev_top, cvd->vdev_top);

 if (mvd == mvd->vdev_top)
  vdev_top_transfer(cvd, mvd);

 return (mvd);
}
