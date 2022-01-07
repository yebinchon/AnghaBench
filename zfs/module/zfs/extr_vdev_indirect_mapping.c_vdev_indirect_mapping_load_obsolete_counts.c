
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vim_phys; int vim_objset; scalar_t__ vim_havecounts; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int vimp_num_entries; int vimp_counts_object; } ;


 int ASSERT (int ) ;
 int DMU_READ_PREFETCH ;
 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int bzero (int *,int) ;
 int dmu_read (int ,int ,int ,int,int *,int ) ;
 int vdev_indirect_mapping_verify (TYPE_2__*) ;
 int * vmem_alloc (int,int ) ;

uint32_t *
vdev_indirect_mapping_load_obsolete_counts(vdev_indirect_mapping_t *vim)
{
 ASSERT(vdev_indirect_mapping_verify(vim));

 uint64_t counts_size =
     vim->vim_phys->vimp_num_entries * sizeof (uint32_t);
 uint32_t *counts = vmem_alloc(counts_size, KM_SLEEP);
 if (vim->vim_havecounts) {
  VERIFY0(dmu_read(vim->vim_objset,
      vim->vim_phys->vimp_counts_object,
      0, counts_size,
      counts, DMU_READ_PREFETCH));
 } else {
  bzero(counts, counts_size);
 }
 return (counts);
}
