
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {char* ddsa_name; int ddsa_defer; } ;
typedef TYPE_2__ dsl_destroy_snapshot_arg_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;


 int ASSERT0 (int) ;
 int B_TRUE ;
 int ENOENT ;
 int FTAG ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_destroy_snapshot_sync_impl (int *,int ,int *) ;
 int zvol_remove_minors (int ,char const*,int ) ;

void
dsl_destroy_snapshot_sync(void *arg, dmu_tx_t *tx)
{
 dsl_destroy_snapshot_arg_t *ddsa = arg;
 const char *dsname = ddsa->ddsa_name;
 boolean_t defer = ddsa->ddsa_defer;

 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;

 int error = dsl_dataset_hold(dp, dsname, FTAG, &ds);
 if (error == ENOENT)
  return;
 ASSERT0(error);
 dsl_destroy_snapshot_sync_impl(ds, defer, tx);
 zvol_remove_minors(dp->dp_spa, dsname, B_TRUE);
 dsl_dataset_rele(ds, FTAG);
}
