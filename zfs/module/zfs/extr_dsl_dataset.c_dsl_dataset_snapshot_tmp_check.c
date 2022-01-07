
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_6__ {int ddsta_htag; int ddsta_snapname; int ddsta_fsname; } ;
typedef TYPE_2__ dsl_dataset_snapshot_tmp_arg_t ;
typedef int dmu_tx_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_USERREFS ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_snapshot_check_impl (int *,int ,int *,int ,int ,int *) ;
 int dsl_dataset_user_hold_check_one (int *,int ,int ,int *) ;
 scalar_t__ spa_version (int ) ;

__attribute__((used)) static int
dsl_dataset_snapshot_tmp_check(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_snapshot_tmp_arg_t *ddsta = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 int error;

 error = dsl_dataset_hold(dp, ddsta->ddsta_fsname, FTAG, &ds);
 if (error != 0)
  return (error);


 error = dsl_dataset_snapshot_check_impl(ds, ddsta->ddsta_snapname,
     tx, B_FALSE, 0, ((void*)0));
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  return (error);
 }

 if (spa_version(dp->dp_spa) < SPA_VERSION_USERREFS) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(ENOTSUP));
 }
 error = dsl_dataset_user_hold_check_one(((void*)0), ddsta->ddsta_htag,
     B_TRUE, tx);
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  return (error);
 }

 dsl_dataset_rele(ds, FTAG);
 return (0);
}
