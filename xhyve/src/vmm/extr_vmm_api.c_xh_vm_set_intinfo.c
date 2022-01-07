
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_exit_intinfo (int ,int,int ) ;

int
xh_vm_set_intinfo(int vcpu, uint64_t exit_intinfo)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_exit_intinfo(vm, vcpu, exit_intinfo);
 vcpu_freeze(vcpu, 0);

 return (error);
}
