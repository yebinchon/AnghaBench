
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int objset_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
typedef int dmu_objset_type_t ;
typedef int blkptr_t ;


 int * dmu_objset_create_impl_dnstats (int *,int *,int *,int ,int ,int ,int ,int *) ;

objset_t *
dmu_objset_create_impl(spa_t *spa, dsl_dataset_t *ds, blkptr_t *bp,
    dmu_objset_type_t type, dmu_tx_t *tx)
{
 return (dmu_objset_create_impl_dnstats(spa, ds, bp, type, 0, 0, 0, tx));
}
