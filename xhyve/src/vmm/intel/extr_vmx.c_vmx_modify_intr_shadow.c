
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vmx {int vm; } ;


 int EINVAL ;
 scalar_t__ HWINTR_BLOCKING ;
 int VCPU_CTR2 (int ,int,char*,scalar_t__,char*) ;
 int VMCS_GUEST_INTERRUPTIBILITY ;
 int VMCS_IDENT (int ) ;
 int vmcs_getreg (int,int,scalar_t__*) ;
 int vmcs_setreg (int,int,scalar_t__) ;

__attribute__((used)) static int
vmx_modify_intr_shadow(struct vmx *vmx, int vcpu, uint64_t val)
{
 uint64_t gi;
 int error, ident;




 if (val) {
  error = EINVAL;
  goto done;
 }

 ident = VMCS_IDENT(VMCS_GUEST_INTERRUPTIBILITY);
 error = vmcs_getreg(vcpu, ident, &gi);
 if (error == 0) {
  gi &= ~HWINTR_BLOCKING;
  error = vmcs_setreg(vcpu, ident, gi);
 }
done:
 VCPU_CTR2(vmx->vm, vcpu, "Setting intr_shadow to %#llx %s", val,
     error ? "failed" : "succeeded");
 return (error);
}
