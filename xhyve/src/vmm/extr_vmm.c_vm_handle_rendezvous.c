
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int rendezvous_mtx; int rendezvous_sleep_cnd; int rendezvous_done_cpus; int rendezvous_req_cpus; int rendezvous_arg; int (* rendezvous_func ) (struct vm*,int,int ) ;int active_cpus; } ;


 int CPU_AND (int *,int *) ;
 scalar_t__ CPU_CMP (int *,int *) ;
 scalar_t__ CPU_ISSET (unsigned int,int *) ;
 int CPU_SET (unsigned int,int *) ;
 int KASSERT (int,char*) ;
 int RENDEZVOUS_CTR0 (struct vm*,int,char*) ;
 int VCPU_CTR0 (struct vm*,int,char*) ;
 int VM_MAXCPU ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct vm*,int,int ) ;
 int vm_set_rendezvous_func (struct vm*,int *) ;

__attribute__((used)) static void
vm_handle_rendezvous(struct vm *vm, int vcpuid)
{

 KASSERT(vcpuid == -1 || (vcpuid >= 0 && vcpuid < VM_MAXCPU),
     ("vm_handle_rendezvous: invalid vcpuid %d", vcpuid));

 pthread_mutex_lock(&vm->rendezvous_mtx);
 while (vm->rendezvous_func != ((void*)0)) {

  CPU_AND(&vm->rendezvous_req_cpus, &vm->active_cpus);

  if (vcpuid != -1 &&
      CPU_ISSET(((unsigned) vcpuid), &vm->rendezvous_req_cpus) &&
      !CPU_ISSET(((unsigned) vcpuid), &vm->rendezvous_done_cpus)) {
   VCPU_CTR0(vm, vcpuid, "Calling rendezvous func");
   (*vm->rendezvous_func)(vm, vcpuid, vm->rendezvous_arg);
   CPU_SET(((unsigned) vcpuid), &vm->rendezvous_done_cpus);
  }
  if (CPU_CMP(&vm->rendezvous_req_cpus,
      &vm->rendezvous_done_cpus) == 0) {
   VCPU_CTR0(vm, vcpuid, "Rendezvous completed");
   vm_set_rendezvous_func(vm, ((void*)0));
   pthread_cond_broadcast(&vm->rendezvous_sleep_cnd);

   break;
  }
  RENDEZVOUS_CTR0(vm, vcpuid, "Wait for rendezvous completion");
  pthread_cond_wait(&vm->rendezvous_sleep_cnd, &vm->rendezvous_mtx);

 }
 pthread_mutex_unlock(&vm->rendezvous_mtx);
}
