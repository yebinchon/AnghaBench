
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zbm_uncompressed_bytes_refd; int zbm_compressed_bytes_refd; int zbm_referenced_bytes_refd; int zbm_creation_time; int zbm_creation_txg; int zbm_guid; int member_0; } ;
typedef TYPE_1__ zfs_bookmark_phys_t ;
typedef int uint64_t ;
typedef int dsl_dataset_t ;
struct TYPE_6__ {int ds_uncompressed_bytes; int ds_compressed_bytes; int ds_referenced_bytes; int ds_creation_time; int ds_creation_txg; int ds_guid; } ;
typedef TYPE_2__ dsl_dataset_phys_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int dsl_dataset_is_before (int *,int *,int ) ;
 TYPE_2__* dsl_dataset_phys (int *) ;
 int dsl_dataset_space_written_impl (TYPE_1__*,int *,int *,int *,int *) ;

int
dsl_dataset_space_written(dsl_dataset_t *oldsnap, dsl_dataset_t *new,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
 if (!dsl_dataset_is_before(new, oldsnap, 0))
  return (SET_ERROR(EINVAL));

 zfs_bookmark_phys_t zbm = { 0 };
 dsl_dataset_phys_t *dsp = dsl_dataset_phys(oldsnap);
 zbm.zbm_guid = dsp->ds_guid;
 zbm.zbm_creation_txg = dsp->ds_creation_txg;
 zbm.zbm_creation_time = dsp->ds_creation_time;
 zbm.zbm_referenced_bytes_refd = dsp->ds_referenced_bytes;
 zbm.zbm_compressed_bytes_refd = dsp->ds_compressed_bytes;
 zbm.zbm_uncompressed_bytes_refd = dsp->ds_uncompressed_bytes;
 return (dsl_dataset_space_written_impl(&zbm, new,
     usedp, compp, uncompp));
}
