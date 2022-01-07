
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpsa_props; int dpsa_source; int dpsa_dsname; } ;
typedef TYPE_1__ dsl_props_set_arg_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_props_set_sync_impl (int *,int ,int ,int *) ;

__attribute__((used)) static void
dsl_props_set_sync(void *arg, dmu_tx_t *tx)
{
 dsl_props_set_arg_t *dpsa = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;

 VERIFY0(dsl_dataset_hold(dp, dpsa->dpsa_dsname, FTAG, &ds));
 dsl_props_set_sync_impl(ds, dpsa->dpsa_source, dpsa->dpsa_props, tx);
 dsl_dataset_rele(ds, FTAG);
}
