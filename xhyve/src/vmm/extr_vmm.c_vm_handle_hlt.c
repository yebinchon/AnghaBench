
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int halted_cpus; int active_cpus; scalar_t__ suspend; int * rendezvous_func; struct vcpu* vcpu; } ;
struct vcpu {int vcpu_sleep_mtx; int vcpu_sleep_cnd; int vlapic; } ;
struct timespec {int tv_sec; int tv_nsec; } ;


 int CPU_CLR_ATOMIC (unsigned int,int *) ;
 scalar_t__ CPU_CMP (int *,int *) ;
 int CPU_ISSET (unsigned int,int *) ;
 int CPU_SET_ATOMIC (unsigned int,int *) ;
 int KASSERT (int,char*) ;
 int VCPU_CTR0 (struct vm*,int,char*) ;
 int VCPU_FROZEN ;
 int VCPU_SLEEPING ;
 int VM_SUSPEND_HALT ;
 scalar_t__ halt_detection_enabled ;
 int pthread_cond_timedwait_relative_np (int *,int *,struct timespec const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_require_state_locked (struct vcpu*,int ) ;
 int vcpu_unlock (struct vcpu*) ;
 scalar_t__ vlapic_pending_intr (int ,int *) ;
 scalar_t__ vm_extint_pending (struct vm*,int) ;
 scalar_t__ vm_nmi_pending (struct vm*,int) ;
 int vm_suspend (struct vm*,int ) ;

__attribute__((used)) static int
vm_handle_hlt(struct vm *vm, int vcpuid, bool intr_disabled)
{
 struct vcpu *vcpu;
 const char *wmesg;
 int vcpu_halted, vm_halted;
 const struct timespec ts = {.tv_sec = 1, .tv_nsec = 0};

 KASSERT(!CPU_ISSET(((unsigned) vcpuid), &vm->halted_cpus),
  ("vcpu already halted"));

 vcpu = &vm->vcpu[vcpuid];
 vcpu_halted = 0;
 vm_halted = 0;

 vcpu_lock(vcpu);
 while (1) {
  if (vm->rendezvous_func != ((void*)0) || vm->suspend)
   break;
  if (vm_nmi_pending(vm, vcpuid))
   break;
  if (!intr_disabled) {
   if (vm_extint_pending(vm, vcpuid) ||
       vlapic_pending_intr(vcpu->vlapic, ((void*)0))) {
    break;
   }
  }







  if (intr_disabled) {
   wmesg = "vmhalt";
   VCPU_CTR0(vm, vcpuid, "Halted");
   if (!vcpu_halted && halt_detection_enabled) {
    vcpu_halted = 1;
    CPU_SET_ATOMIC(((unsigned) vcpuid), &vm->halted_cpus);
   }
   if (CPU_CMP(&vm->halted_cpus, &vm->active_cpus) == 0) {
    vm_halted = 1;
    break;
   }
  } else {
   wmesg = "vmidle";
  }


  vcpu_require_state_locked(vcpu, VCPU_SLEEPING);




  pthread_mutex_lock(&vcpu->vcpu_sleep_mtx);
  vcpu_unlock(vcpu);
  pthread_cond_timedwait_relative_np(&vcpu->vcpu_sleep_cnd,
   &vcpu->vcpu_sleep_mtx, &ts);
  vcpu_lock(vcpu);
  pthread_mutex_unlock(&vcpu->vcpu_sleep_mtx);

  vcpu_require_state_locked(vcpu, VCPU_FROZEN);

 }

 if (vcpu_halted)
  CPU_CLR_ATOMIC(((unsigned) vcpuid), &vm->halted_cpus);

 vcpu_unlock(vcpu);

 if (vm_halted)
  vm_suspend(vm, VM_SUSPEND_HALT);

 return (0);
}
