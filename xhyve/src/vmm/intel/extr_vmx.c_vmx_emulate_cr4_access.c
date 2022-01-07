
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int HANDLED ;
 int UNHANDLED ;
 int VMCS_CR4_SHADOW ;
 int VMCS_GUEST_CR4 ;
 int cr4_ones_mask ;
 int cr4_zeros_mask ;
 int vmcs_write (int,int ,int) ;
 int vmx_get_guest_reg (int,int) ;

__attribute__((used)) static int
vmx_emulate_cr4_access(int vcpu, uint64_t exitqual)
{
 uint64_t crval, regval;


 if ((exitqual & 0xf0) != 0x00)
  return (UNHANDLED);

 regval = vmx_get_guest_reg(vcpu, (exitqual >> 8) & 0xf);

 vmcs_write(vcpu, VMCS_CR4_SHADOW, regval);

 crval = regval | cr4_ones_mask;
 crval &= ~cr4_zeros_mask;
 vmcs_write(vcpu, VMCS_GUEST_CR4, crval);

 return (HANDLED);
}
