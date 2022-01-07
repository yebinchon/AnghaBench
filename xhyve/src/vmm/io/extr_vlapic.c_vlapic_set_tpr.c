
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct vlapic {int vcpuid; int vm; struct LAPIC* apic_page; } ;
struct LAPIC {scalar_t__ tpr; } ;


 int VCPU_CTR2 (int ,int ,char*,scalar_t__,scalar_t__) ;
 int vlapic_update_ppr (struct vlapic*) ;

__attribute__((used)) static void
vlapic_set_tpr(struct vlapic *vlapic, uint8_t val)
{
 struct LAPIC *lapic = vlapic->apic_page;

 if (lapic->tpr != val) {
  VCPU_CTR2(vlapic->vm, vlapic->vcpuid, "vlapic TPR changed "
      "from %#x to %#x", lapic->tpr, val);
  lapic->tpr = val;
  vlapic_update_ppr(vlapic);
 }
}
