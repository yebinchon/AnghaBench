
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int vm ;
 int vm_active_cpus (int ) ;

int
xh_vm_active_cpus(cpuset_t *cpus)
{
 *cpus = vm_active_cpus(vm);
 return (0);
}
