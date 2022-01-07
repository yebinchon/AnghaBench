
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_indirect_mapping_t ;
typedef int vdev_indirect_mapping_entry_phys_t ;
typedef int uint64_t ;


 int B_FALSE ;
 int * vdev_indirect_mapping_entry_for_offset_impl (int *,int ,int ) ;

vdev_indirect_mapping_entry_phys_t *
vdev_indirect_mapping_entry_for_offset(vdev_indirect_mapping_t *vim,
    uint64_t offset)
{
 return (vdev_indirect_mapping_entry_for_offset_impl(vim, offset,
     B_FALSE));
}
