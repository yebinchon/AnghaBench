
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * vm ;
 int vm_destroy (int *) ;
 scalar_t__ vmm_cleanup () ;

void
xh_vm_destroy(void)
{
 assert(vm != ((void*)0));

 vm_destroy(vm);

 if (vmm_cleanup() == 0) {
  vm = ((void*)0);
 }
}
