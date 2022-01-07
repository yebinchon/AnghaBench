
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xsave_limits {int xcr0_allowed; int xsave_enabled; } ;
struct vmx {int vm; } ;


 int CR4_XSAVE ;
 int HANDLED ;
 int HV_X86_RAX ;
 int HV_X86_RCX ;
 int HV_X86_RDX ;
 int HV_X86_XCR0 ;
 int VMCS_GUEST_CR4 ;
 int XFEATURE_AVX ;
 int XFEATURE_AVX512 ;
 int XFEATURE_ENABLED_AVX ;
 int XFEATURE_ENABLED_BNDCSR ;
 int XFEATURE_ENABLED_BNDREGS ;
 int XFEATURE_ENABLED_X87 ;
 int reg_read (int,int ) ;
 int reg_write (int,int ,int) ;
 int vm_inject_gp (int ,int) ;
 int vm_inject_ud (int ,int) ;
 int vmcs_read (int,int ) ;
 struct xsave_limits* vmm_get_xsave_limits () ;

__attribute__((used)) static int
vmx_emulate_xsetbv(struct vmx *vmx, int vcpu)
{
 uint64_t xcrval;
 const struct xsave_limits *limits;

 limits = vmm_get_xsave_limits();
 if (reg_read(vcpu, HV_X86_RCX) != 0) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }


 if (!limits->xsave_enabled ||
  !(vmcs_read(vcpu, VMCS_GUEST_CR4) & CR4_XSAVE))
 {
  vm_inject_ud(vmx->vm, vcpu);
  return (HANDLED);
 }

 xcrval = reg_read(vcpu, HV_X86_RDX) << 32
  | (reg_read(vcpu, HV_X86_RAX) & 0xffffffff);

 if ((xcrval & ~limits->xcr0_allowed) != 0) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }

 if (!(xcrval & XFEATURE_ENABLED_X87)) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }


 if (xcrval & XFEATURE_ENABLED_AVX &&
     (xcrval & XFEATURE_AVX) != XFEATURE_AVX) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }





 if (xcrval & XFEATURE_AVX512 &&
     (xcrval & (XFEATURE_AVX512 | XFEATURE_AVX)) !=
     (XFEATURE_AVX512 | XFEATURE_AVX)) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }





 if (((xcrval & XFEATURE_ENABLED_BNDREGS) != 0) !=
     ((xcrval & XFEATURE_ENABLED_BNDCSR) != 0)) {
  vm_inject_gp(vmx->vm, vcpu);
  return (HANDLED);
 }

 reg_write(vcpu, HV_X86_XCR0, xcrval);
 return (HANDLED);
}
