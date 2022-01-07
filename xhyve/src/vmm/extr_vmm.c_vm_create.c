
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int rendezvous_sleep_cnd; int rendezvous_mtx; scalar_t__ num_mem_segs; } ;


 int ENXIO ;
 int assert (struct vm*) ;
 int bzero (struct vm*,int) ;
 struct vm* malloc (int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int vm_init (struct vm*,int) ;
 int vmm_initialized ;

int
vm_create(struct vm **retvm)
{
 struct vm *vm;

 if (!vmm_initialized)
  return (ENXIO);

 vm = malloc(sizeof(struct vm));
 assert(vm);
 bzero(vm, sizeof(struct vm));
 vm->num_mem_segs = 0;
 pthread_mutex_init(&vm->rendezvous_mtx, ((void*)0));
 pthread_cond_init(&vm->rendezvous_sleep_cnd, ((void*)0));

 vm_init(vm, 1);

 *retvm = vm;
 return (0);
}
