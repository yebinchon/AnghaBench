
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_7__ {int ds_object; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {TYPE_1__* dd_pool; } ;
struct TYPE_5__ {int * dp_meta_objset; } ;


 int DMU_OT_DSL_DATASET ;
 int dmu_object_zapify (int *,int ,int ,int *) ;

void
dsl_dataset_zapify(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
 dmu_object_zapify(mos, ds->ds_object, DMU_OT_DSL_DATASET, tx);
}
