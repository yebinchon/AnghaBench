
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
typedef enum vm_cpu_mode { ____Placeholder_vm_cpu_mode } vm_cpu_mode ;


 int CPU_MODE_64BIT ;

int
vie_canonical_check(enum vm_cpu_mode cpu_mode, uint64_t gla)
{
 uint64_t mask;

 if (cpu_mode != CPU_MODE_64BIT)
  return (0);





 mask = ~((1UL << 48) - 1);
 if (gla & (1UL << 47))
  return ((gla & mask) != mask);
 else
  return ((gla & mask) != 0);
}
