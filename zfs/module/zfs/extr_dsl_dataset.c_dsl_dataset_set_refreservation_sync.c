
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_2__ {int ddsqra_value; int ddsqra_source; int ddsqra_name; } ;
typedef TYPE_1__ dsl_dataset_set_qr_arg_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_set_refreservation_sync_impl (int *,int ,int ,int *) ;

__attribute__((used)) static void
dsl_dataset_set_refreservation_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_set_qr_arg_t *ddsqra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds = ((void*)0);

 VERIFY0(dsl_dataset_hold(dp, ddsqra->ddsqra_name, FTAG, &ds));
 dsl_dataset_set_refreservation_sync_impl(ds,
     ddsqra->ddsqra_source, ddsqra->ddsqra_value, tx);
 dsl_dataset_rele(ds, FTAG);
}
