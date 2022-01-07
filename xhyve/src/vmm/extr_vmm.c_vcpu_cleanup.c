
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int cookie; struct vcpu* vcpu; } ;
struct vcpu {int stats; int vlapic; } ;


 int VLAPIC_CLEANUP (int ,int ) ;
 int vmm_stat_free (int ) ;

__attribute__((used)) static void
vcpu_cleanup(struct vm *vm, int i, bool destroy)
{
 struct vcpu *vcpu = &vm->vcpu[i];

 VLAPIC_CLEANUP(vm->cookie, vcpu->vlapic);
 if (destroy) {
  vmm_stat_free(vcpu->stats);
 }
}
