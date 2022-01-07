
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint64_t ;
struct redact_block_list_node {int dummy; } ;
struct merge_data {size_t md_latest_synctask_txg; int md_last_time; int md_redact_block_pending; int * md_blocks; TYPE_1__* md_furthest; scalar_t__* md_synctask_txg; } ;
struct TYPE_6__ {int os_spa; } ;
typedef TYPE_2__ objset_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {int dp_mos_dir; } ;
struct TYPE_5__ {size_t rbp_object; size_t rbp_blkid; } ;


 scalar_t__ B_TRUE ;
 size_t TXG_MASK ;
 int TXG_WAIT ;
 int VERIFY0 (int ) ;
 int ZFS_SPACE_CHECK_NONE ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_dd (int ) ;
 size_t dmu_tx_get_txg (int *) ;
 int dmu_tx_hold_space (int *,int) ;
 int dmu_tx_pool (int *) ;
 int dsl_sync_task_nowait (int ,int ,struct merge_data*,int,int ,int *) ;
 int gethrtime () ;
 int list_move_tail (int *,int *) ;
 int redaction_list_update_sync ;
 TYPE_3__* spa_get_dsl (int ) ;

__attribute__((used)) static void
commit_rl_updates(objset_t *os, struct merge_data *md, uint64_t object,
    uint64_t blkid)
{
 dmu_tx_t *tx = dmu_tx_create_dd(spa_get_dsl(os->os_spa)->dp_mos_dir);
 dmu_tx_hold_space(tx, sizeof (struct redact_block_list_node));
 VERIFY0(dmu_tx_assign(tx, TXG_WAIT));
 uint64_t txg = dmu_tx_get_txg(tx);
 if (!md->md_synctask_txg[txg & TXG_MASK]) {
  dsl_sync_task_nowait(dmu_tx_pool(tx),
      redaction_list_update_sync, md, 5, ZFS_SPACE_CHECK_NONE,
      tx);
  md->md_synctask_txg[txg & TXG_MASK] = B_TRUE;
  md->md_latest_synctask_txg = txg;
 }
 md->md_furthest[txg & TXG_MASK].rbp_object = object;
 md->md_furthest[txg & TXG_MASK].rbp_blkid = blkid;
 list_move_tail(&md->md_blocks[txg & TXG_MASK],
     &md->md_redact_block_pending);
 dmu_tx_commit(tx);
 md->md_last_time = gethrtime();
}
