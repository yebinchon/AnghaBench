
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_rendezvous_func_t ;
struct vm {int rendezvous_func; } ;


 int wmb () ;

__attribute__((used)) static void
vm_set_rendezvous_func(struct vm *vm, vm_rendezvous_func_t func)
{






 vm->rendezvous_func = func;
 wmb();
}
