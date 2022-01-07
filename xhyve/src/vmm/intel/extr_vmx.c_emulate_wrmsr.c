
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct vmx {int vm; } ;


 scalar_t__ lapic_msr (int ) ;
 int lapic_wrmsr (int ,int,int ,int ,int*) ;
 int vmx_wrmsr (struct vmx*,int,int ,int ) ;

__attribute__((used)) static int
emulate_wrmsr(struct vmx *vmx, int vcpuid, u_int num, uint64_t val, bool *retu)
{
 int error;

 if (lapic_msr(num))
  error = lapic_wrmsr(vmx->vm, vcpuid, num, val, retu);
 else
  error = vmx_wrmsr(vmx, vcpuid, num, val);

 return (error);
}
