
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_5__ {int spa_all_vdev_zaps; int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int dmu_tx_t ;


 int VERIFY0 (int ) ;
 int zap_destroy (int ,int ,int *) ;
 int zap_remove_int (int ,int ,int ,int *) ;

void
vdev_destroy_unlink_zap(vdev_t *vd, uint64_t zapobj, dmu_tx_t *tx)
{
 spa_t *spa = vd->vdev_spa;

 VERIFY0(zap_destroy(spa->spa_meta_objset, zapobj, tx));
 VERIFY0(zap_remove_int(spa->spa_meta_objset, spa->spa_all_vdev_zaps,
     zapobj, tx));
}
