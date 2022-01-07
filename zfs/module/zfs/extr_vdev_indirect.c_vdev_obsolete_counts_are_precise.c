
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vdev_top_zap; TYPE_3__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int val ;
typedef scalar_t__ uint64_t ;
typedef int boolean_t ;
struct TYPE_5__ {int spa_meta_objset; } ;


 int ASSERT0 (int ) ;
 int B_FALSE ;
 int ENOENT ;
 int RW_WRITER ;
 int SCL_ALL ;
 int VDEV_TOP_ZAP_OBSOLETE_COUNTS_ARE_PRECISE ;
 int spa_config_held (TYPE_3__*,int ,int ) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,scalar_t__*) ;

int
vdev_obsolete_counts_are_precise(vdev_t *vd, boolean_t *are_precise)
{
 ASSERT0(spa_config_held(vd->vdev_spa, SCL_ALL, RW_WRITER));

 if (vd->vdev_top_zap == 0) {
  *are_precise = B_FALSE;
  return (0);
 }

 uint64_t val = 0;
 int error = zap_lookup(vd->vdev_spa->spa_meta_objset, vd->vdev_top_zap,
     VDEV_TOP_ZAP_OBSOLETE_COUNTS_ARE_PRECISE, sizeof (val), 1, &val);
 if (error == 0) {
  *are_precise = (val != 0);
 } else if (error == ENOENT) {
  *are_precise = B_FALSE;
  error = 0;
 }

 return (error);
}
