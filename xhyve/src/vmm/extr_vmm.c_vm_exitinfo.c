
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_exit {int dummy; } ;
struct vm {struct vcpu* vcpu; } ;
struct vcpu {struct vm_exit exitinfo; } ;


 int VM_MAXCPU ;
 int xhyve_abort (char*,int) ;

struct vm_exit *
vm_exitinfo(struct vm *vm, int cpuid)
{
 struct vcpu *vcpu;

 if (cpuid < 0 || cpuid >= VM_MAXCPU)
  xhyve_abort("vm_exitinfo: invalid cpuid %d\n", cpuid);

 vcpu = &vm->vcpu[cpuid];

 return (&vcpu->exitinfo);
}
