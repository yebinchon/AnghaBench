
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct seg_desc {int access; int limit; int base; } ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_get_seg_desc (int ,int,int,struct seg_desc*) ;

int
xh_vm_get_desc(int vcpu, int reg, uint64_t *base, uint32_t *limit,
 uint32_t *access)
{
 struct seg_desc sd;
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_get_seg_desc(vm, vcpu, reg, &sd);
 if (error == 0) {
  *base = sd.base;
  *limit = sd.limit;
  *access = sd.access;
 }
 vcpu_freeze(vcpu, 0);

 return (error);
}
