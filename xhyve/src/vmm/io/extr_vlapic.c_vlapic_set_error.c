
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int esr_pending; int esr_firing; int vcpuid; int vm; } ;


 int APIC_LVT_DM_FIXED ;
 int APIC_OFFSET_ERROR_LVT ;
 int VLAPIC_INTR_ERROR ;
 scalar_t__ vlapic_fire_lvt (struct vlapic*,int) ;
 int vlapic_get_lvt (struct vlapic*,int ) ;
 int vmm_stat_incr (int ,int ,int ,int) ;

void
vlapic_set_error(struct vlapic *vlapic, uint32_t mask)
{
 uint32_t lvt;

 vlapic->esr_pending |= mask;
 if (vlapic->esr_firing)
  return;
 vlapic->esr_firing = 1;


 lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_ERROR_LVT);
 if (vlapic_fire_lvt(vlapic, lvt | APIC_LVT_DM_FIXED)) {
  vmm_stat_incr(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_ERROR, 1);
 }
 vlapic->esr_firing = 0;
}
