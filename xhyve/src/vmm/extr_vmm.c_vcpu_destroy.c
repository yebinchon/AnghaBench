
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 int VCPU_CLEANUP (struct vm*,int) ;
 int VM_MAXCPU ;
 int xhyve_abort (char*,int) ;

void vcpu_destroy(struct vm *vm, int vcpu) {
 if (vcpu < 0 || vcpu >= VM_MAXCPU)
  xhyve_abort("vcpu_destroy: invalid cpuid %d\n", vcpu);

 VCPU_CLEANUP(vm, vcpu);
}
