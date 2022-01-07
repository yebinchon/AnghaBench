
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int assert (int) ;
 int xh_vm_inject_exception (int,int,int,int ,int) ;

void
xh_vm_inject_fault(int vcpu, int vector, int errcode_valid,
    uint32_t errcode)
{
 int error, restart_instruction;

 restart_instruction = 1;

 error = xh_vm_inject_exception(vcpu, vector, errcode_valid, errcode,
     restart_instruction);
 assert(error == 0);
}
