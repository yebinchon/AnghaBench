
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_exit {int dummy; } ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_run (int ,int,struct vm_exit*) ;

int
xh_vm_run(int vcpu, struct vm_exit *ret_vmexit)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_run(vm, vcpu, ret_vmexit);
 vcpu_freeze(vcpu, 0);

 return (error);
}
