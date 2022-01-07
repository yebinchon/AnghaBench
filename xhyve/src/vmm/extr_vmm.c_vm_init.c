
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int suspended_cpus; scalar_t__ suspend; int active_cpus; int vrtc; int vpmtmr; int vatpit; int vatpic; int vhpet; int vioapic; int cookie; } ;


 int CPU_ZERO (int *) ;
 int VM_INIT (struct vm*) ;
 int VM_MAXCPU ;
 int callout_system_init () ;
 int vatpic_init (struct vm*) ;
 int vatpit_init (struct vm*) ;
 int vcpu_init (struct vm*,int,int) ;
 int vhpet_init (struct vm*) ;
 int vioapic_init (struct vm*) ;
 int vpmtmr_init (struct vm*) ;
 int vrtc_init (struct vm*) ;

__attribute__((used)) static void
vm_init(struct vm *vm, bool create)
{
 int vcpu;

 if (create) {
  callout_system_init();
 }

 vm->cookie = VM_INIT(vm);
 vm->vioapic = vioapic_init(vm);
 vm->vhpet = vhpet_init(vm);
 vm->vatpic = vatpic_init(vm);
 vm->vatpit = vatpit_init(vm);
 vm->vpmtmr = vpmtmr_init(vm);

 if (create) {
  vm->vrtc = vrtc_init(vm);
 }

 CPU_ZERO(&vm->active_cpus);

 vm->suspend = 0;
 CPU_ZERO(&vm->suspended_cpus);

 for (vcpu = 0; vcpu < VM_MAXCPU; vcpu++) {
  vcpu_init(vm, vcpu, create);
 }
}
