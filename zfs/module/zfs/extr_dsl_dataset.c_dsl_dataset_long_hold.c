
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ds_longholds; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_4__ {int dd_pool; } ;


 int ASSERT (int ) ;
 int dsl_pool_config_held (int ) ;
 int zfs_refcount_add (int *,void*) ;

void
dsl_dataset_long_hold(dsl_dataset_t *ds, void *tag)
{
 ASSERT(dsl_pool_config_held(ds->ds_dir->dd_pool));
 (void) zfs_refcount_add(&ds->ds_longholds, tag);
}
