
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct vmx {int vm; } ;


 int HV_X86_RAX ;
 int HV_X86_RDX ;
 scalar_t__ lapic_msr (int ) ;
 int lapic_rdmsr (int ,int,int ,int*,int*) ;
 int reg_write (int,int ,scalar_t__) ;
 int vmx_rdmsr (struct vmx*,int,int ,int*) ;

__attribute__((used)) static int
emulate_rdmsr(struct vmx *vmx, int vcpuid, u_int num, bool *retu)
{
 uint64_t result;
 uint32_t eax, edx;
 int error;

 if (lapic_msr(num))
  error = lapic_rdmsr(vmx->vm, vcpuid, num, &result, retu);
 else
  error = vmx_rdmsr(vmx, vcpuid, num, &result);

 if (error == 0) {
  eax = (uint32_t) result;
  reg_write(vcpuid, HV_X86_RAX, eax);
  edx = (uint32_t) (result >> 32);
  reg_write(vcpuid, HV_X86_RDX, edx);
 }

 return (error);
}
