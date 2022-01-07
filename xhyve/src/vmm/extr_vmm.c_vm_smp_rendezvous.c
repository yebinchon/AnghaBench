
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_rendezvous_func_t ;
struct vm {int rendezvous_mtx; void* rendezvous_arg; int rendezvous_done_cpus; int rendezvous_req_cpus; int * rendezvous_func; } ;
typedef int cpuset_t ;


 scalar_t__ CPU_ISSET (unsigned int,int *) ;
 int CPU_ZERO (int *) ;
 int KASSERT (int,char*) ;
 int RENDEZVOUS_CTR0 (struct vm*,int,char*) ;
 int VM_MAXCPU ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vcpu_notify_event (struct vm*,int,int) ;
 int vm_handle_rendezvous (struct vm*,int) ;
 int vm_set_rendezvous_func (struct vm*,int ) ;

void
vm_smp_rendezvous(struct vm *vm, int vcpuid, cpuset_t dest,
    vm_rendezvous_func_t func, void *arg)
{
 int i;

 KASSERT(vcpuid == -1 || (vcpuid >= 0 && vcpuid < VM_MAXCPU),
     ("vm_smp_rendezvous: invalid vcpuid %d", vcpuid));

restart:
 pthread_mutex_lock(&vm->rendezvous_mtx);
 if (vm->rendezvous_func != ((void*)0)) {





  RENDEZVOUS_CTR0(vm, vcpuid, "Rendezvous already in progress");
  pthread_mutex_unlock(&vm->rendezvous_mtx);
  vm_handle_rendezvous(vm, vcpuid);
  goto restart;
 }
 KASSERT(vm->rendezvous_func == ((void*)0), ("vm_smp_rendezvous: previous "
     "rendezvous is still in progress"));

 RENDEZVOUS_CTR0(vm, vcpuid, "Initiating rendezvous");
 vm->rendezvous_req_cpus = dest;
 CPU_ZERO(&vm->rendezvous_done_cpus);
 vm->rendezvous_arg = arg;
 vm_set_rendezvous_func(vm, func);
 pthread_mutex_unlock(&vm->rendezvous_mtx);





 for (i = 0; i < VM_MAXCPU; i++) {
  if (CPU_ISSET(((unsigned) i), &dest))
   vcpu_notify_event(vm, i, 0);
 }

 vm_handle_rendezvous(vm, vcpuid);
}
