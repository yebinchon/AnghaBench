
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vie {int dummy; } ;
typedef int mem_region_write_t ;
typedef int mem_region_read_t ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vmm_emulate_instruction (int ,int,int ,struct vie*,struct vm_guest_paging*,int ,int ,void*) ;

int
xh_vm_emulate_instruction(int vcpu, uint64_t gpa, struct vie *vie,
 struct vm_guest_paging *paging, mem_region_read_t memread,
 mem_region_write_t memwrite, void *memarg)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vmm_emulate_instruction(vm, vcpu, gpa, vie, paging, memread,
  memwrite, memarg);
 vcpu_freeze(vcpu, 0);

 return (error);
}
