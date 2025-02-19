
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CR0_PE ;
 int CR0_PG ;
 int VMCS_CR0_MASK ;
 int VMCS_CR0_SHADOW ;
 int VMCS_CR4_MASK ;
 int VMCS_CR4_SHADOW ;
 int VMCS_IDENT (int) ;
 int cr0_ones_mask ;
 int cr0_zeros_mask ;
 int cr4_ones_mask ;
 int cr4_zeros_mask ;
 int vmcs_setreg (int,int ,int) ;
 int xhyve_abort (char*,int) ;

__attribute__((used)) static int
vmx_setup_cr_shadow(int vcpuid, int which, uint32_t initial)
{
 int error, mask_ident, shadow_ident;
 uint64_t mask_value;

 if (which != 0 && which != 4)
  xhyve_abort("vmx_setup_cr_shadow: unknown cr%d", which);

 if (which == 0) {
  mask_ident = VMCS_CR0_MASK;
  mask_value = (cr0_ones_mask | cr0_zeros_mask) | (CR0_PG | CR0_PE);
  shadow_ident = VMCS_CR0_SHADOW;
 } else {
  mask_ident = VMCS_CR4_MASK;
  mask_value = cr4_ones_mask | cr4_zeros_mask;
  shadow_ident = VMCS_CR4_SHADOW;
 }

 error = vmcs_setreg(vcpuid, VMCS_IDENT(mask_ident), mask_value);
 if (error)
  return (error);

 error = vmcs_setreg(vcpuid, VMCS_IDENT(shadow_ident), initial);
 if (error)
  return (error);

 return (0);
}
