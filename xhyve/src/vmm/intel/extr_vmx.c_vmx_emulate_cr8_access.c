
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmx {int vm; } ;
struct vlapic {int dummy; } ;


 int HANDLED ;
 int UNHANDLED ;
 int vlapic_get_cr8 (struct vlapic*) ;
 int vlapic_set_cr8 (struct vlapic*,int) ;
 struct vlapic* vm_lapic (int ,int) ;
 int vmx_get_guest_reg (int,int) ;
 int vmx_set_guest_reg (int,int,int) ;

__attribute__((used)) static int
vmx_emulate_cr8_access(struct vmx *vmx, int vcpu, uint64_t exitqual)
{
 struct vlapic *vlapic;
 uint64_t cr8;
 int regnum;


 if ((exitqual & 0xe0) != 0x00) {
  return (UNHANDLED);
 }

 vlapic = vm_lapic(vmx->vm, vcpu);
 regnum = (exitqual >> 8) & 0xf;
 if (exitqual & 0x10) {
  cr8 = vlapic_get_cr8(vlapic);
  vmx_set_guest_reg(vcpu, regnum, cr8);
 } else {
  cr8 = vmx_get_guest_reg(vcpu, regnum);
  vlapic_set_cr8(vlapic, cr8);
 }

 return (HANDLED);
}
