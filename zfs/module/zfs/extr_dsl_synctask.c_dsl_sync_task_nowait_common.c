
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zfs_space_check_t ;
typedef int txg_list_t ;
typedef int dsl_syncfunc_t ;
struct TYPE_6__ {int dst_space; int dst_txg; int dst_nowaiter; scalar_t__ dst_error; void* dst_arg; int * dst_syncfunc; int dst_checkfunc; int dst_space_check; TYPE_2__* dst_pool; } ;
typedef TYPE_1__ dsl_sync_task_t ;
struct TYPE_7__ {int dp_sync_tasks; int dp_early_sync_tasks; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int B_TRUE ;
 int DST_AVG_BLKSHIFT ;
 int KM_SLEEP ;
 int VERIFY (int ) ;
 int dmu_tx_get_txg (int *) ;
 int dsl_null_checkfunc ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int txg_list_add_tail (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
dsl_sync_task_nowait_common(dsl_pool_t *dp, dsl_syncfunc_t *syncfunc, void *arg,
    int blocks_modified, zfs_space_check_t space_check, dmu_tx_t *tx,
    boolean_t early)
{
 dsl_sync_task_t *dst = kmem_zalloc(sizeof (*dst), KM_SLEEP);

 dst->dst_pool = dp;
 dst->dst_txg = dmu_tx_get_txg(tx);
 dst->dst_space = blocks_modified << DST_AVG_BLKSHIFT;
 dst->dst_space_check = space_check;
 dst->dst_checkfunc = dsl_null_checkfunc;
 dst->dst_syncfunc = syncfunc;
 dst->dst_arg = arg;
 dst->dst_error = 0;
 dst->dst_nowaiter = B_TRUE;

 txg_list_t *task_list = (early) ?
     &dp->dp_early_sync_tasks : &dp->dp_sync_tasks;
 VERIFY(txg_list_add_tail(task_list, dst, dst->dst_txg));
}
