
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_restart_instruction (int ,int) ;

int
xh_vm_restart_instruction(int vcpu)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_restart_instruction(vm, vcpu);
 vcpu_freeze(vcpu, 0);

 return (error);
}
