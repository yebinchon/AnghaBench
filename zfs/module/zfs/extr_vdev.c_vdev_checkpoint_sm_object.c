
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vdev_top_zap; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;


 int ASSERT0 (int ) ;
 int ENOENT ;
 int RW_WRITER ;
 int SCL_ALL ;
 int VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ;
 int spa_config_held (int ,int ,int ) ;
 int spa_meta_objset (int ) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,scalar_t__*) ;

int
vdev_checkpoint_sm_object(vdev_t *vd, uint64_t *sm_obj)
{
 ASSERT0(spa_config_held(vd->vdev_spa, SCL_ALL, RW_WRITER));

 if (vd->vdev_top_zap == 0) {
  *sm_obj = 0;
  return (0);
 }

 int error = zap_lookup(spa_meta_objset(vd->vdev_spa), vd->vdev_top_zap,
     VDEV_TOP_ZAP_POOL_CHECKPOINT_SM, sizeof (uint64_t), 1, sm_obj);
 if (error == ENOENT) {
  *sm_obj = 0;
  error = 0;
 }

 return (error);
}
