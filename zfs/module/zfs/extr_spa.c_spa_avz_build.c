
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t vdev_children; struct TYPE_4__** vdev_child; int vdev_leaf_zap; int vdev_top_zap; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_5__ {int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int dmu_tx_t ;


 int VERIFY0 (int ) ;
 int zap_add_int (int ,size_t,int ,int *) ;

__attribute__((used)) static void
spa_avz_build(vdev_t *vd, uint64_t avz, dmu_tx_t *tx)
{
 spa_t *spa = vd->vdev_spa;

 if (vd->vdev_top_zap != 0) {
  VERIFY0(zap_add_int(spa->spa_meta_objset, avz,
      vd->vdev_top_zap, tx));
 }
 if (vd->vdev_leaf_zap != 0) {
  VERIFY0(zap_add_int(spa->spa_meta_objset, avz,
      vd->vdev_leaf_zap, tx));
 }
 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  spa_avz_build(vd->vdev_child[i], avz, tx);
 }
}
