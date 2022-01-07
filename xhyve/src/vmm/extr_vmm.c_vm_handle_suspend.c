
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int suspended_cpus; int * rendezvous_func; int active_cpus; struct vcpu* vcpu; } ;
struct vcpu {int vcpu_sleep_mtx; int vcpu_sleep_cnd; } ;
struct timespec {int tv_sec; int tv_nsec; } ;


 scalar_t__ CPU_CMP (int *,int *) ;
 scalar_t__ CPU_ISSET (unsigned int,int *) ;
 int CPU_SET_ATOMIC (unsigned int,int *) ;
 int VCPU_CTR0 (struct vm*,int,char*) ;
 int VCPU_FROZEN ;
 int VCPU_SLEEPING ;
 int VM_MAXCPU ;
 int pthread_cond_timedwait_relative_np (int *,int *,struct timespec const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_notify_event (struct vm*,int,int) ;
 int vcpu_require_state_locked (struct vcpu*,int ) ;
 int vcpu_unlock (struct vcpu*) ;
 int vm_handle_rendezvous (struct vm*,int) ;

__attribute__((used)) static int
vm_handle_suspend(struct vm *vm, int vcpuid, bool *retu)
{
 int i, done;
 struct vcpu *vcpu;
 const struct timespec ts = {.tv_sec = 1, .tv_nsec = 0};

 done = 0;
 vcpu = &vm->vcpu[vcpuid];

 CPU_SET_ATOMIC(((unsigned) vcpuid), &vm->suspended_cpus);
 vcpu_lock(vcpu);
 while (1) {
  if (CPU_CMP(&vm->suspended_cpus, &vm->active_cpus) == 0) {
   VCPU_CTR0(vm, vcpuid, "All vcpus suspended");
   break;
  }

  if (vm->rendezvous_func == ((void*)0)) {
   VCPU_CTR0(vm, vcpuid, "Sleeping during suspend");
   vcpu_require_state_locked(vcpu, VCPU_SLEEPING);

   pthread_mutex_lock(&vcpu->vcpu_sleep_mtx);
   vcpu_unlock(vcpu);
   pthread_cond_timedwait_relative_np(&vcpu->vcpu_sleep_cnd,
    &vcpu->vcpu_sleep_mtx, &ts);
   vcpu_lock(vcpu);
   pthread_mutex_unlock(&vcpu->vcpu_sleep_mtx);


   vcpu_require_state_locked(vcpu, VCPU_FROZEN);
  } else {
   VCPU_CTR0(vm, vcpuid, "Rendezvous during suspend");
   vcpu_unlock(vcpu);
   vm_handle_rendezvous(vm, vcpuid);
   vcpu_lock(vcpu);
  }
 }
 vcpu_unlock(vcpu);




 for (i = 0; i < VM_MAXCPU; i++) {
  if (CPU_ISSET(((unsigned) i), &vm->suspended_cpus)) {
   vcpu_notify_event(vm, i, 0);
  }
 }

 *retu = 1;
 return (0);
}
