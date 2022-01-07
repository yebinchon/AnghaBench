
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int cookie; } ;


 int VCPU_INIT (int ,int) ;
 int VM_MAXCPU ;
 int xhyve_abort (char*,int) ;

int vcpu_create(struct vm *vm, int vcpu) {
 if (vcpu < 0 || vcpu >= VM_MAXCPU)
  xhyve_abort("vcpu_create: invalid cpuid %d\n", vcpu);

 return VCPU_INIT(vm->cookie, vcpu);
}
