
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vdev_top_zap; TYPE_3__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int spa_meta_objset; } ;


 int ASSERT0 (int ) ;
 int ENOENT ;
 int RW_WRITER ;
 int SCL_ALL ;
 int VDEV_TOP_ZAP_INDIRECT_OBSOLETE_SM ;
 int spa_config_held (TYPE_3__*,int ,int ) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,scalar_t__*) ;

int
vdev_obsolete_sm_object(vdev_t *vd, uint64_t *sm_obj)
{
 ASSERT0(spa_config_held(vd->vdev_spa, SCL_ALL, RW_WRITER));

 if (vd->vdev_top_zap == 0) {
  *sm_obj = 0;
  return (0);
 }

 int error = zap_lookup(vd->vdev_spa->spa_meta_objset, vd->vdev_top_zap,
     VDEV_TOP_ZAP_INDIRECT_OBSOLETE_SM, sizeof (uint64_t), 1, sm_obj);
 if (error == ENOENT) {
  *sm_obj = 0;
  error = 0;
 }

 return (error);
}
