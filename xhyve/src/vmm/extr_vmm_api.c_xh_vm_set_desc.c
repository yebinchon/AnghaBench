
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* uint32_t ;
struct seg_desc {void* access; void* limit; int base; } ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_set_seg_desc (int ,int,int,struct seg_desc*) ;

int
xh_vm_set_desc(int vcpu, int reg, uint64_t base, uint32_t limit,
 uint32_t access)
{
 struct seg_desc sd;
 int error;

 sd.base = base;
 sd.limit = limit;
 sd.access = access;
 vcpu_freeze(vcpu, 1);
 error = vm_set_seg_desc(vm, vcpu, reg, &sd);
 vcpu_freeze(vcpu, 0);

 return (error);
}
