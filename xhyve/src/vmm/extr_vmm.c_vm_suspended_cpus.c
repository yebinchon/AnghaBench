
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int suspended_cpus; } ;
typedef int cpuset_t ;



cpuset_t
vm_suspended_cpus(struct vm *vm)
{

 return (vm->suspended_cpus);
}
