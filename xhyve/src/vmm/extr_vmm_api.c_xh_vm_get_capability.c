
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vm_cap_type { ____Placeholder_vm_cap_type } vm_cap_type ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_get_capability (int ,int,int,int*) ;

int
xh_vm_get_capability(int vcpu, enum vm_cap_type cap, int *retval)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_get_capability(vm, vcpu, (int) cap, retval);
 vcpu_freeze(vcpu, 0);

 return (error);
}
