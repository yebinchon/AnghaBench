
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int vcpuid; int vm; } ;


 int APIC_LVT_DM_FIXED ;
 int APIC_OFFSET_TIMER_LVT ;
 int VLAPIC_CTR0 (struct vlapic*,char*) ;
 int VLAPIC_INTR_TIMER ;
 scalar_t__ vlapic_fire_lvt (struct vlapic*,int) ;
 int vlapic_get_lvt (struct vlapic*,int ) ;
 int vmm_stat_incr (int ,int ,int ,int) ;

__attribute__((used)) static void
vlapic_fire_timer(struct vlapic *vlapic)
{
 uint32_t lvt;


 lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_TIMER_LVT);
 if (vlapic_fire_lvt(vlapic, lvt | APIC_LVT_DM_FIXED)) {
  VLAPIC_CTR0(vlapic, "vlapic timer fired");
  vmm_stat_incr(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_TIMER, 1);
 }
}
