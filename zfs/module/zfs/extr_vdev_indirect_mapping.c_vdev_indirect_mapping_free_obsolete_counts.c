
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vim_phys; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int uint32_t ;
struct TYPE_5__ {int vimp_num_entries; } ;


 int ASSERT (int ) ;
 int vdev_indirect_mapping_verify (TYPE_2__*) ;
 int vmem_free (int *,int) ;

extern void
vdev_indirect_mapping_free_obsolete_counts(vdev_indirect_mapping_t *vim,
    uint32_t *counts)
{
 ASSERT(vdev_indirect_mapping_verify(vim));

 vmem_free(counts, vim->vim_phys->vimp_num_entries * sizeof (uint32_t));
}
