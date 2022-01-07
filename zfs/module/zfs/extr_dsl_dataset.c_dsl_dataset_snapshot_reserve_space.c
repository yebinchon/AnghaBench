
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ ds_reserved; int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {int ds_unique_bytes; } ;


 int ASSERT (int) ;
 scalar_t__ DS_UNIQUE_IS_ACCURATE (TYPE_1__*) ;
 int ENOSPC ;
 scalar_t__ MIN (int ,scalar_t__) ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int dmu_tx_is_syncing (int *) ;
 TYPE_3__* dsl_dataset_phys (TYPE_1__*) ;
 scalar_t__ dsl_dir_space_available (int ,int *,int ,int ) ;
 int dsl_dir_willuse_space (int ,scalar_t__,int *) ;

__attribute__((used)) static int
dsl_dataset_snapshot_reserve_space(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 uint64_t asize;

 if (!dmu_tx_is_syncing(tx))
  return (0);






 ASSERT(ds->ds_reserved == 0 || DS_UNIQUE_IS_ACCURATE(ds));
 asize = MIN(dsl_dataset_phys(ds)->ds_unique_bytes, ds->ds_reserved);
 if (asize > dsl_dir_space_available(ds->ds_dir, ((void*)0), 0, TRUE))
  return (SET_ERROR(ENOSPC));





 if (asize > 0)
  dsl_dir_willuse_space(ds->ds_dir, asize, tx);

 return (0);
}
