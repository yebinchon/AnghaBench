
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int cookie; struct vcpu* vcpu; } ;
struct vcpu {int stats; int guest_xcr0; scalar_t__ exception_pending; scalar_t__ extint_pending; scalar_t__ nmi_pending; scalar_t__ exitintinfo; int vlapic; int state; int vcpu_sleep_cnd; int vcpu_sleep_mtx; int state_sleep_cnd; int state_sleep_mtx; } ;


 int KASSERT (int,char*) ;
 int VCPU_IDLE ;
 int VLAPIC_INIT (int ,int) ;
 int VM_MAXCPU ;
 int X2APIC_DISABLED ;
 int XFEATURE_ENABLED_X87 ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int vcpu_lock_init (struct vcpu*) ;
 int vm_set_x2apic_state (struct vm*,int,int ) ;
 int vmm_stat_alloc () ;
 int vmm_stat_init (int ) ;

__attribute__((used)) static void
vcpu_init(struct vm *vm, int vcpu_id, bool create)
{
 struct vcpu *vcpu;

 KASSERT(vcpu_id >= 0 && vcpu_id < VM_MAXCPU,
     ("vcpu_init: invalid vcpu %d", vcpu_id));

 vcpu = &vm->vcpu[vcpu_id];

 if (create) {
  vcpu_lock_init(vcpu);
  pthread_mutex_init(&vcpu->state_sleep_mtx, ((void*)0));
  pthread_cond_init(&vcpu->state_sleep_cnd, ((void*)0));
  pthread_mutex_init(&vcpu->vcpu_sleep_mtx, ((void*)0));
  pthread_cond_init(&vcpu->vcpu_sleep_cnd, ((void*)0));
  vcpu->state = VCPU_IDLE;
  vcpu->stats = vmm_stat_alloc();
 }

 vcpu->vlapic = VLAPIC_INIT(vm->cookie, vcpu_id);
 vm_set_x2apic_state(vm, vcpu_id, X2APIC_DISABLED);
 vcpu->exitintinfo = 0;
 vcpu->nmi_pending = 0;
 vcpu->extint_pending = 0;
 vcpu->exception_pending = 0;
 vcpu->guest_xcr0 = XFEATURE_ENABLED_X87;
 vmm_stat_init(vcpu->stats);
}
