
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct vlapic {int vcpuid; int vm; } ;


 int vlapic_set_tpr (struct vlapic*,scalar_t__) ;
 int vm_inject_gp (int ,int ) ;

void
vlapic_set_cr8(struct vlapic *vlapic, uint64_t val)
{
 uint8_t tpr;

 if (val & ~((uint64_t) 0xf)) {
  vm_inject_gp(vlapic->vm, vlapic->vcpuid);
  return;
 }

 tpr = (uint8_t) (val << 4);
 vlapic_set_tpr(vlapic, tpr);
}
