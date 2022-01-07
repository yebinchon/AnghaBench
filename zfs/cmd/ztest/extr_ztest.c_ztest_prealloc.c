
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * zd_os; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef scalar_t__ uint64_t ;
typedef int rl_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int RL_READER ;
 int RL_WRITER ;
 int TXG_WAIT ;
 int dmu_free_long_range (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int dmu_objset_pool (int *) ;
 int dmu_prealloc (int *,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_write (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int txg_wait_synced (int ,scalar_t__) ;
 int ztest_object_lock (TYPE_1__*,scalar_t__,int ) ;
 int ztest_object_unlock (TYPE_1__*,scalar_t__) ;
 int * ztest_range_lock (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int ztest_range_unlock (int *) ;
 scalar_t__ ztest_tx_assign (int *,int ,int ) ;

__attribute__((used)) static void
ztest_prealloc(ztest_ds_t *zd, uint64_t object, uint64_t offset, uint64_t size)
{
 objset_t *os = zd->zd_os;
 dmu_tx_t *tx;
 uint64_t txg;
 rl_t *rl;

 txg_wait_synced(dmu_objset_pool(os), 0);

 ztest_object_lock(zd, object, RL_READER);
 rl = ztest_range_lock(zd, object, offset, size, RL_WRITER);

 tx = dmu_tx_create(os);

 dmu_tx_hold_write(tx, object, offset, size);

 txg = ztest_tx_assign(tx, TXG_WAIT, FTAG);

 if (txg != 0) {
  dmu_prealloc(os, object, offset, size, tx);
  dmu_tx_commit(tx);
  txg_wait_synced(dmu_objset_pool(os), txg);
 } else {
  (void) dmu_free_long_range(os, object, offset, size);
 }

 ztest_range_unlock(rl);
 ztest_object_unlock(zd, object);
}
