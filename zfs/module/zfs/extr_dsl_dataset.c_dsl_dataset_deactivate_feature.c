
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_feature_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int dsl_dataset_deactivate_feature_impl (int *,int ,int *) ;
 int unload_zfeature (int *,int ) ;

void
dsl_dataset_deactivate_feature(dsl_dataset_t *ds, spa_feature_t f, dmu_tx_t *tx)
{
 unload_zfeature(ds, f);
 dsl_dataset_deactivate_feature_impl(ds, f, tx);
}
