
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int vcpuid; int vm; } ;



 int APIC_LVT_DM_FIXED ;






 int APIC_OFFSET_CMCI_LVT ;
 int APIC_OFFSET_ERROR_LVT ;
 int APIC_OFFSET_LINT0_LVT ;
 int APIC_OFFSET_LINT1_LVT ;
 int APIC_OFFSET_PERF_LVT ;
 int APIC_OFFSET_THERM_LVT ;
 int APIC_OFFSET_TIMER_LVT ;
 int EINVAL ;
 int LVTS_TRIGGERRED ;
 int vlapic_enabled (struct vlapic*) ;
 scalar_t__ vlapic_fire_lvt (struct vlapic*,int ) ;
 int vlapic_get_lvt (struct vlapic*,int ) ;
 int vm_inject_extint (int ,int ) ;
 int vm_inject_nmi (int ,int ) ;
 int vmm_stat_array_incr (int ,int ,int ,int,int) ;

int
vlapic_trigger_lvt(struct vlapic *vlapic, int vector)
{
 uint32_t lvt;

 if (vlapic_enabled(vlapic) == 0) {





  switch (vector) {
   case 132:
    vm_inject_extint(vlapic->vm, vlapic->vcpuid);
    break;
   case 131:
    vm_inject_nmi(vlapic->vm, vlapic->vcpuid);
    break;
   default:
    break;
  }
  return (0);
 }

 switch (vector) {
 case 132:
  lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_LINT0_LVT);
  break;
 case 131:
  lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_LINT1_LVT);
  break;
 case 128:
  lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_TIMER_LVT);
  lvt |= APIC_LVT_DM_FIXED;
  break;
 case 133:
  lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_ERROR_LVT);
  lvt |= APIC_LVT_DM_FIXED;
  break;
 case 130:
  lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_PERF_LVT);
  break;
 case 129:
  lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_THERM_LVT);
  break;
 case 134:
  lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_CMCI_LVT);
  break;
 default:
  return (EINVAL);
 }
 if (vlapic_fire_lvt(vlapic, lvt)) {
  vmm_stat_array_incr(vlapic->vm, vlapic->vcpuid,
      LVTS_TRIGGERRED, vector, 1);
 }
 return (0);
}
