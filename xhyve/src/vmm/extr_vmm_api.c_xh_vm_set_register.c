
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_set_register (int ,int,int,int ) ;

int
xh_vm_set_register(int vcpu, int reg, uint64_t val)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_set_register(vm, vcpu, reg, val);
 vcpu_freeze(vcpu, 0);

 return (error);
}
