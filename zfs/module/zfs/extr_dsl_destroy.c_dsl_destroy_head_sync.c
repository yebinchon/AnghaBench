
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {int ddha_name; } ;
typedef TYPE_2__ dsl_destroy_head_arg_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int B_TRUE ;
 int FTAG ;
 int VERIFY0 (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_destroy_head_sync_impl (int *,int *) ;
 int zvol_remove_minors (int ,int ,int ) ;

void
dsl_destroy_head_sync(void *arg, dmu_tx_t *tx)
{
 dsl_destroy_head_arg_t *ddha = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;

 VERIFY0(dsl_dataset_hold(dp, ddha->ddha_name, FTAG, &ds));
 dsl_destroy_head_sync_impl(ds, tx);
 zvol_remove_minors(dp->dp_spa, ddha->ddha_name, B_TRUE);
 dsl_dataset_rele(ds, FTAG);
}
