
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t vdev_children; scalar_t__ vdev_top_zap; int vdev_ashift; int vdev_asize; struct TYPE_5__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int space_map_t ;
struct TYPE_6__ {int spa_meta_objset; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;


 int VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ;
 int VERIFY0 (int ) ;
 int dump_spacemap (int ,int *) ;
 int spa_meta_objset (TYPE_2__*) ;
 int space_map_close (int *) ;
 int space_map_open (int **,int ,size_t,int ,int ,int ) ;
 scalar_t__ zap_contains (int ,scalar_t__,int ) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,size_t*) ;

__attribute__((used)) static void
dump_leftover_checkpoint_blocks(spa_t *spa)
{
 vdev_t *rvd = spa->spa_root_vdev;

 for (uint64_t i = 0; i < rvd->vdev_children; i++) {
  vdev_t *vd = rvd->vdev_child[i];

  space_map_t *checkpoint_sm = ((void*)0);
  uint64_t checkpoint_sm_obj;

  if (vd->vdev_top_zap == 0)
   continue;

  if (zap_contains(spa_meta_objset(spa), vd->vdev_top_zap,
      VDEV_TOP_ZAP_POOL_CHECKPOINT_SM) != 0)
   continue;

  VERIFY0(zap_lookup(spa_meta_objset(spa), vd->vdev_top_zap,
      VDEV_TOP_ZAP_POOL_CHECKPOINT_SM,
      sizeof (uint64_t), 1, &checkpoint_sm_obj));

  VERIFY0(space_map_open(&checkpoint_sm, spa_meta_objset(spa),
      checkpoint_sm_obj, 0, vd->vdev_asize, vd->vdev_ashift));
  dump_spacemap(spa->spa_meta_objset, checkpoint_sm);
  space_map_close(checkpoint_sm);
 }
}
