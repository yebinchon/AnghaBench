
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef size_t spa_feature_t ;
typedef int objset_t ;
struct TYPE_5__ {int ** ds_feature; int ds_object; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {int * dp_meta_objset; int * dp_spa; } ;
struct TYPE_6__ {int fi_flags; int fi_guid; } ;


 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 int ZFEATURE_FLAG_PER_DATASET ;
 TYPE_4__* dmu_tx_pool (int *) ;
 int spa_feature_decr (int *,size_t,int *) ;
 TYPE_2__* spa_feature_table ;
 int zap_remove (int *,int ,int ,int *) ;

void
dsl_dataset_deactivate_feature_impl(dsl_dataset_t *ds, spa_feature_t f,
    dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 objset_t *mos = dmu_tx_pool(tx)->dp_meta_objset;
 uint64_t dsobj = ds->ds_object;

 VERIFY(spa_feature_table[f].fi_flags & ZFEATURE_FLAG_PER_DATASET);

 VERIFY0(zap_remove(mos, dsobj, spa_feature_table[f].fi_guid, tx));
 spa_feature_decr(spa, f, tx);
 ds->ds_feature[f] = ((void*)0);
}
