
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_top_zap; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int ms_flush_data_obj ;


 int ASSERT0 (int) ;
 int ENOENT ;
 int VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS ;
 int mos_obj_refd (int ) ;
 int spa_meta_objset (int ) ;
 int zap_lookup (int ,int ,int ,int,int,int *) ;

__attribute__((used)) static void
mos_leak_vdev_top_zap(vdev_t *vd)
{
 uint64_t ms_flush_data_obj;
 int error = zap_lookup(spa_meta_objset(vd->vdev_spa),
     vd->vdev_top_zap, VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS,
     sizeof (ms_flush_data_obj), 1, &ms_flush_data_obj);
 if (error == ENOENT)
  return;
 ASSERT0(error);

 mos_obj_refd(ms_flush_data_obj);
}
