
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vm {int dummy; } ;


 int KASSERT (int,char*) ;
 int vm_inject_exception (struct vm*,int,int,int,int ,int) ;

void
vm_inject_fault(void *vmarg, int vcpuid, int vector, int errcode_valid,
    int errcode)
{
 struct vm *vm;
 int error, restart_instruction;

 vm = vmarg;
 restart_instruction = 1;

 error = vm_inject_exception(vm, vcpuid, vector, errcode_valid,
     ((uint32_t) errcode), restart_instruction);
 KASSERT(error == 0, ("vm_inject_exception error %d", error));
}
