
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vlapic {int dummy; } ;
typedef int cpuset_t ;


 int CPU_CLR (unsigned int,int *) ;
 int CPU_FFS (int *) ;
 int CPU_SETOF (unsigned int,int *) ;
 int EINVAL ;
 int VM_MAXCPU ;
 int vlapic_trigger_lvt (struct vlapic*,int) ;
 int vm_active_cpus (struct vm*) ;
 struct vlapic* vm_lapic (struct vm*,int) ;

int
lapic_set_local_intr(struct vm *vm, int cpu, int vector)
{
 struct vlapic *vlapic;
 cpuset_t dmask;
 int error;

 if (cpu < -1 || cpu >= VM_MAXCPU)
  return (EINVAL);

 if (cpu == -1)
  dmask = vm_active_cpus(vm);
 else
  CPU_SETOF(((unsigned) cpu), &dmask);
 error = 0;
 while ((cpu = CPU_FFS(&dmask)) != 0) {
  cpu--;
  CPU_CLR(((unsigned) cpu), &dmask);
  vlapic = vm_lapic(vm, cpu);
  error = vlapic_trigger_lvt(vlapic, vector);
  if (error)
   break;
 }

 return (error);
}
