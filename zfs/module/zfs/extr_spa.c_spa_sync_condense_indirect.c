
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vdev_children; struct TYPE_8__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_9__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int spa_condense_indirect_start_sync (TYPE_1__*,int *) ;
 int spa_writeable (TYPE_2__*) ;
 scalar_t__ vdev_indirect_should_condense (TYPE_1__*) ;
 int vdev_indirect_state_sync_verify (TYPE_1__*) ;

__attribute__((used)) static void
spa_sync_condense_indirect(spa_t *spa, dmu_tx_t *tx)
{
 ASSERT(spa_writeable(spa));

 vdev_t *rvd = spa->spa_root_vdev;
 for (int c = 0; c < rvd->vdev_children; c++) {
  vdev_t *vd = rvd->vdev_child[c];
  vdev_indirect_state_sync_verify(vd);

  if (vdev_indirect_should_condense(vd)) {
   spa_condense_indirect_start_sync(vd, tx);
   break;
  }
 }
}
