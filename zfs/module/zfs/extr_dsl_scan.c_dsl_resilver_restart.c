
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
struct TYPE_5__ {TYPE_1__* dp_scan; int dp_mos_dir; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {scalar_t__ scn_restart_txg; } ;


 int TXG_WAIT ;
 int VERIFY (int) ;
 scalar_t__ dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_dd (int ) ;
 scalar_t__ dmu_tx_get_txg (int *) ;
 int zfs_dbgmsg (char*,int ) ;

void
dsl_resilver_restart(dsl_pool_t *dp, uint64_t txg)
{
 if (txg == 0) {
  dmu_tx_t *tx;
  tx = dmu_tx_create_dd(dp->dp_mos_dir);
  VERIFY(0 == dmu_tx_assign(tx, TXG_WAIT));

  txg = dmu_tx_get_txg(tx);
  dp->dp_scan->scn_restart_txg = txg;
  dmu_tx_commit(tx);
 } else {
  dp->dp_scan->scn_restart_txg = txg;
 }
 zfs_dbgmsg("restarting resilver txg=%llu", (longlong_t)txg);
}
