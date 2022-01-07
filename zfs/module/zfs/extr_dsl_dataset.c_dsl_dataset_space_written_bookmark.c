
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zbm_flags; } ;
typedef TYPE_1__ zfs_bookmark_phys_t ;
typedef int uint64_t ;
typedef int dsl_dataset_t ;


 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int ZBM_FLAG_HAS_FBN ;
 int dsl_dataset_space_written_impl (TYPE_1__*,int *,int *,int *,int *) ;

int
dsl_dataset_space_written_bookmark(zfs_bookmark_phys_t *bmp,
    dsl_dataset_t *new, uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
 if (!(bmp->zbm_flags & ZBM_FLAG_HAS_FBN))
  return (SET_ERROR(ENOTSUP));
 return (dsl_dataset_space_written_impl(bmp, new,
     usedp, compp, uncompp));
}
