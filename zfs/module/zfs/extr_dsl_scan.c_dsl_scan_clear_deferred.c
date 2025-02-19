
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int vdev_children; int vdev_offline; void* vdev_resilver_deferred; TYPE_1__* vdev_ops; scalar_t__ vdev_aux; struct TYPE_12__** vdev_child; TYPE_3__* vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_13__ {void* spa_resilver_deferred; TYPE_2__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;
struct TYPE_11__ {int vdev_op_leaf; } ;


 void* B_FALSE ;
 int SPA_FEATURE_RESILVER_DEFER ;
 int spa_feature_decr (TYPE_3__*,int ,int *) ;
 scalar_t__ spa_feature_is_active (TYPE_3__*,int ) ;
 int vdev_config_dirty (TYPE_2__*) ;
 int vdev_is_concrete (TYPE_2__*) ;
 int vdev_is_dead (TYPE_2__*) ;
 scalar_t__ vdev_resilver_needed (TYPE_2__*,int *,int *) ;

__attribute__((used)) static boolean_t
dsl_scan_clear_deferred(vdev_t *vd, dmu_tx_t *tx)
{
 boolean_t resilver_needed = B_FALSE;
 spa_t *spa = vd->vdev_spa;

 for (int c = 0; c < vd->vdev_children; c++) {
  resilver_needed |=
      dsl_scan_clear_deferred(vd->vdev_child[c], tx);
 }

 if (vd == spa->spa_root_vdev &&
     spa_feature_is_active(spa, SPA_FEATURE_RESILVER_DEFER)) {
  spa_feature_decr(spa, SPA_FEATURE_RESILVER_DEFER, tx);
  vdev_config_dirty(vd);
  spa->spa_resilver_deferred = B_FALSE;
  return (resilver_needed);
 }

 if (!vdev_is_concrete(vd) || vd->vdev_aux ||
     !vd->vdev_ops->vdev_op_leaf)
  return (resilver_needed);

 if (vd->vdev_resilver_deferred)
  vd->vdev_resilver_deferred = B_FALSE;

 return (!vdev_is_dead(vd) && !vd->vdev_offline &&
     vdev_resilver_needed(vd, ((void*)0), ((void*)0)));
}
