
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int num_mem_segs; int * mem_segs; int cookie; int vioapic; int vatpic; int vhpet; int vatpit; int vpmtmr; int vrtc; } ;


 int VM_CLEANUP (int ) ;
 int VM_MAXCPU ;
 int vatpic_cleanup (int ) ;
 int vatpit_cleanup (int ) ;
 int vcpu_cleanup (struct vm*,int,int) ;
 int vhpet_cleanup (int ) ;
 int vioapic_cleanup (int ) ;
 int vm_free_mem_seg (int *) ;
 int vpmtmr_cleanup (int ) ;
 int vrtc_cleanup (int ) ;
 int vrtc_reset (int ) ;

__attribute__((used)) static void
vm_cleanup(struct vm *vm, bool destroy)
{
 int i, vcpu;

 for (vcpu = 0; vcpu < VM_MAXCPU; vcpu++) {
  vcpu_cleanup(vm, vcpu, destroy);
 }

 if (destroy) {
  vrtc_cleanup(vm->vrtc);
 } else {
  vrtc_reset(vm->vrtc);
 }
 vpmtmr_cleanup(vm->vpmtmr);
 vatpit_cleanup(vm->vatpit);
 vhpet_cleanup(vm->vhpet);
 vatpic_cleanup(vm->vatpic);
 vioapic_cleanup(vm->vioapic);

 VM_CLEANUP(vm->cookie);

 if (destroy) {
  for (i = 0; i < vm->num_mem_segs; i++) {
   vm_free_mem_seg(&vm->mem_segs[i]);
  }

  vm->num_mem_segs = 0;
 }
}
