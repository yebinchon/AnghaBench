
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vdev_leaf_zap; scalar_t__ vdev_trim_state; scalar_t__ vdev_trim_secure; TYPE_4__* vdev_spa; scalar_t__ vdev_trim_partial; scalar_t__ vdev_trim_rate; scalar_t__ vdev_trim_last_offset; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_6__ {int spa_meta_objset; } ;


 int ASSERT (int) ;
 int ENOENT ;
 int RW_READER ;
 int RW_WRITER ;
 int SCL_CONFIG ;
 int VDEV_LEAF_ZAP_TRIM_LAST_OFFSET ;
 int VDEV_LEAF_ZAP_TRIM_PARTIAL ;
 int VDEV_LEAF_ZAP_TRIM_RATE ;
 int VDEV_LEAF_ZAP_TRIM_SECURE ;
 scalar_t__ VDEV_TRIM_ACTIVE ;
 scalar_t__ VDEV_TRIM_SUSPENDED ;
 scalar_t__ spa_config_held (TYPE_4__*,int ,int ) ;
 int vdev_trim_calculate_progress (TYPE_1__*) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,scalar_t__*) ;

__attribute__((used)) static int
vdev_trim_load(vdev_t *vd)
{
 int err = 0;
 ASSERT(spa_config_held(vd->vdev_spa, SCL_CONFIG, RW_READER) ||
     spa_config_held(vd->vdev_spa, SCL_CONFIG, RW_WRITER));
 ASSERT(vd->vdev_leaf_zap != 0);

 if (vd->vdev_trim_state == VDEV_TRIM_ACTIVE ||
     vd->vdev_trim_state == VDEV_TRIM_SUSPENDED) {
  err = zap_lookup(vd->vdev_spa->spa_meta_objset,
      vd->vdev_leaf_zap, VDEV_LEAF_ZAP_TRIM_LAST_OFFSET,
      sizeof (vd->vdev_trim_last_offset), 1,
      &vd->vdev_trim_last_offset);
  if (err == ENOENT) {
   vd->vdev_trim_last_offset = 0;
   err = 0;
  }

  if (err == 0) {
   err = zap_lookup(vd->vdev_spa->spa_meta_objset,
       vd->vdev_leaf_zap, VDEV_LEAF_ZAP_TRIM_RATE,
       sizeof (vd->vdev_trim_rate), 1,
       &vd->vdev_trim_rate);
   if (err == ENOENT) {
    vd->vdev_trim_rate = 0;
    err = 0;
   }
  }

  if (err == 0) {
   err = zap_lookup(vd->vdev_spa->spa_meta_objset,
       vd->vdev_leaf_zap, VDEV_LEAF_ZAP_TRIM_PARTIAL,
       sizeof (vd->vdev_trim_partial), 1,
       &vd->vdev_trim_partial);
   if (err == ENOENT) {
    vd->vdev_trim_partial = 0;
    err = 0;
   }
  }

  if (err == 0) {
   err = zap_lookup(vd->vdev_spa->spa_meta_objset,
       vd->vdev_leaf_zap, VDEV_LEAF_ZAP_TRIM_SECURE,
       sizeof (vd->vdev_trim_secure), 1,
       &vd->vdev_trim_secure);
   if (err == ENOENT) {
    vd->vdev_trim_secure = 0;
    err = 0;
   }
  }
 }

 vdev_trim_calculate_progress(vd);

 return (err);
}
