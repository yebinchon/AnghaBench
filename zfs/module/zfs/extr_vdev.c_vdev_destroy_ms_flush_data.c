
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_top_zap; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int ENOENT ;
 int VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS ;
 int VERIFY0 (int ) ;
 int dmu_object_free (int *,int ,int *) ;
 int * spa_meta_objset (int ) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;
 int zap_remove (int *,int ,int ,int *) ;

__attribute__((used)) static void
vdev_destroy_ms_flush_data(vdev_t *vd, dmu_tx_t *tx)
{
 objset_t *mos = spa_meta_objset(vd->vdev_spa);

 if (vd->vdev_top_zap == 0)
  return;

 uint64_t object = 0;
 int err = zap_lookup(mos, vd->vdev_top_zap,
     VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, sizeof (uint64_t), 1, &object);
 if (err == ENOENT)
  return;

 VERIFY0(dmu_object_free(mos, object, tx));
 VERIFY0(zap_remove(mos, vd->vdev_top_zap,
     VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, tx));
}
