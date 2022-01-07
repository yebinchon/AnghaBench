
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_inject_exception (int ,int,int,int,int ,int) ;

int
xh_vm_inject_exception(int vcpu, int vector, int errcode_valid,
 uint32_t errcode, int restart_instruction)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_inject_exception(vm, vcpu, vector, errcode_valid, errcode,
  restart_instruction);
 vcpu_freeze(vcpu, 0);

 return (error);
}
