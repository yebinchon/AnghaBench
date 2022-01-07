
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* vim_phys; int * vim_dbuf; scalar_t__ vim_object; int * vim_objset; int * vim_entries; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ vimp_num_entries; } ;


 int ASSERT (int ) ;
 int dmu_buf_rele (int *,TYPE_2__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int vdev_indirect_mapping_size (TYPE_2__*) ;
 int vdev_indirect_mapping_verify (TYPE_2__*) ;
 int vmem_free (int *,int ) ;

void
vdev_indirect_mapping_close(vdev_indirect_mapping_t *vim)
{
 ASSERT(vdev_indirect_mapping_verify(vim));

 if (vim->vim_phys->vimp_num_entries > 0) {
  uint64_t map_size = vdev_indirect_mapping_size(vim);
  vmem_free(vim->vim_entries, map_size);
  vim->vim_entries = ((void*)0);
 }

 dmu_buf_rele(vim->vim_dbuf, vim);

 vim->vim_objset = ((void*)0);
 vim->vim_object = 0;
 vim->vim_dbuf = ((void*)0);
 vim->vim_phys = ((void*)0);

 kmem_free(vim, sizeof (*vim));
}
