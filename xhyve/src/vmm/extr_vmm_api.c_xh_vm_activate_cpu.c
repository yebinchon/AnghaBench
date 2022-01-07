
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_activate_cpu (int ,int) ;

int
xh_vm_activate_cpu(int vcpu)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_activate_cpu(vm, vcpu);
 vcpu_freeze(vcpu, 0);

 return (error);
}
