
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vlapic {int dummy; } ;


 int EINVAL ;
 int VM_MAXCPU ;
 int vcpu_notify_event (struct vm*,int,int) ;
 scalar_t__ vlapic_set_intr_ready (struct vlapic*,int,int) ;
 struct vlapic* vm_lapic (struct vm*,int) ;

int
lapic_set_intr(struct vm *vm, int cpu, int vector, bool level)
{
 struct vlapic *vlapic;

 if (cpu < 0 || cpu >= VM_MAXCPU)
  return (EINVAL);





 if (vector < 16 || vector > 255)
  return (EINVAL);

 vlapic = vm_lapic(vm, cpu);
 if (vlapic_set_intr_ready(vlapic, vector, level))
  vcpu_notify_event(vm, cpu, 1);
 return (0);
}
