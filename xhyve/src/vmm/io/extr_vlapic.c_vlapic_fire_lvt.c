
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int vcpuid; int vm; } ;


 int APIC_ESR_SEND_ILLEGAL_VECTOR ;
 int APIC_LVT_DM ;



 int APIC_LVT_M ;
 int APIC_LVT_VECTOR ;
 int vcpu_notify_event (int ,int ,int) ;
 int vlapic_set_error (struct vlapic*,int ) ;
 int vlapic_set_intr_ready (struct vlapic*,int,int) ;
 int vm_inject_extint (int ,int ) ;
 int vm_inject_nmi (int ,int ) ;

__attribute__((used)) static int
vlapic_fire_lvt(struct vlapic *vlapic, uint32_t lvt)
{
 uint32_t vec, mode;

 if (lvt & APIC_LVT_M)
  return (0);

 vec = lvt & APIC_LVT_VECTOR;
 mode = lvt & APIC_LVT_DM;

 switch (mode) {
 case 129:
  if (vec < 16) {
   vlapic_set_error(vlapic, APIC_ESR_SEND_ILLEGAL_VECTOR);
   return (0);
  }
  if (vlapic_set_intr_ready(vlapic, ((int) vec), 0))
   vcpu_notify_event(vlapic->vm, vlapic->vcpuid, 1);
  break;
 case 128:
  vm_inject_nmi(vlapic->vm, vlapic->vcpuid);
  break;
 case 130:
  vm_inject_extint(vlapic->vm, vlapic->vcpuid);
  break;
 default:

  return (0);
 }
 return (1);
}
