
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ds_object; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {TYPE_1__* dd_pool; } ;
struct TYPE_5__ {int dp_meta_objset; } ;


 int DS_FIELD_REMAP_DEADLIST ;
 int VERIFY0 (int ) ;
 int zap_remove (int ,int ,int ,int *) ;

__attribute__((used)) static void
dsl_dataset_unset_remap_deadlist_object(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 VERIFY0(zap_remove(ds->ds_dir->dd_pool->dp_meta_objset,
     ds->ds_object, DS_FIELD_REMAP_DEADLIST, tx));
}
