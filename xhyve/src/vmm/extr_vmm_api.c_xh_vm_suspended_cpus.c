
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int vm ;
 int vm_suspended_cpus (int ) ;

int
xh_vm_suspended_cpus(cpuset_t *cpus)
{
 *cpus = vm_suspended_cpus(vm);
 return (0);
}
