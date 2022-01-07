
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_get_register (int ,int,int,int *) ;

int
xh_vm_get_register(int vcpu, int reg, uint64_t *retval)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_get_register(vm, vcpu, reg, retval);
 vcpu_freeze(vcpu, 0);

 return (error);
}
