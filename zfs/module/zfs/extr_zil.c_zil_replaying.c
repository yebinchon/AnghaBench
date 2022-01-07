
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zl_sync; int zl_replaying_seq; int * zl_replayed_seq; int zl_os; scalar_t__ zl_replay; } ;
typedef TYPE_1__ zilog_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 size_t TXG_MASK ;
 scalar_t__ ZFS_SYNC_DISABLED ;
 int dmu_objset_ds (int ) ;
 size_t dmu_tx_get_txg (int *) ;
 int dsl_dataset_dirty (int ,int *) ;

boolean_t
zil_replaying(zilog_t *zilog, dmu_tx_t *tx)
{
 if (zilog->zl_sync == ZFS_SYNC_DISABLED)
  return (B_TRUE);

 if (zilog->zl_replay) {
  dsl_dataset_dirty(dmu_objset_ds(zilog->zl_os), tx);
  zilog->zl_replayed_seq[dmu_tx_get_txg(tx) & TXG_MASK] =
      zilog->zl_replaying_seq;
  return (B_TRUE);
 }

 return (B_FALSE);
}
