
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int vdev_state_dirty_node; scalar_t__ vdev_leaf_zap; scalar_t__ vdev_removing; TYPE_3__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_13__ {int svr_lock; int svr_cv; int * svr_thread; int svr_zaplist; } ;
typedef TYPE_2__ spa_vdev_removal_t ;
struct TYPE_14__ {int spa_dsl_pool; TYPE_2__* spa_vdev_removal; } ;
typedef TYPE_3__ spa_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int ZFS_SPACE_CHECK_NONE ;
 int cv_broadcast (int *) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_assigned (int ,int ) ;
 int dsl_sync_task_nowait (int ,int ,TYPE_2__*,int ,int ,int *) ;
 int fnvlist_alloc () ;
 int list_link_active (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__* vdev_add_parent (TYPE_1__*,int *) ;
 int vdev_compact_children (TYPE_1__*) ;
 int vdev_indirect_ops ;
 int vdev_remove_child (TYPE_1__*,TYPE_1__*) ;
 int vdev_remove_complete_sync ;
 int vdev_remove_enlist_zaps (TYPE_1__*,int ) ;

__attribute__((used)) static void
vdev_remove_replace_with_indirect(vdev_t *vd, uint64_t txg)
{
 vdev_t *ivd;
 dmu_tx_t *tx;
 spa_t *spa = vd->vdev_spa;
 spa_vdev_removal_t *svr = spa->spa_vdev_removal;






 svr->svr_zaplist = fnvlist_alloc();
 vdev_remove_enlist_zaps(vd, svr->svr_zaplist);

 ivd = vdev_add_parent(vd, &vdev_indirect_ops);
 ivd->vdev_removing = 0;

 vd->vdev_leaf_zap = 0;

 vdev_remove_child(ivd, vd);
 vdev_compact_children(ivd);

 ASSERT(!list_link_active(&vd->vdev_state_dirty_node));

 mutex_enter(&svr->svr_lock);
 svr->svr_thread = ((void*)0);
 cv_broadcast(&svr->svr_cv);
 mutex_exit(&svr->svr_lock);


 tx = dmu_tx_create_assigned(spa->spa_dsl_pool, txg);
 dsl_sync_task_nowait(spa->spa_dsl_pool, vdev_remove_complete_sync, svr,
     0, ZFS_SPACE_CHECK_NONE, tx);
 dmu_tx_commit(tx);
}
