
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmx {int vm; } ;


 int VCPU_CTR0 (int ,int,char*) ;
 int VMCS_GUEST_INTERRUPTIBILITY ;
 int VMCS_INTERRUPTIBILITY_NMI_BLOCKING ;
 scalar_t__ vmcs_read (int,int ) ;
 int vmcs_write (int,int ,int ) ;

__attribute__((used)) static void
vmx_clear_nmi_blocking(struct vmx *vmx, int vcpuid)
{
 uint32_t gi;

 VCPU_CTR0(vmx->vm, vcpuid, "Clear Virtual-NMI blocking");
 gi = (uint32_t) vmcs_read(vcpuid, VMCS_GUEST_INTERRUPTIBILITY);
 gi &= ~VMCS_INTERRUPTIBILITY_NMI_BLOCKING;
 vmcs_write(vcpuid, VMCS_GUEST_INTERRUPTIBILITY, gi);
}
