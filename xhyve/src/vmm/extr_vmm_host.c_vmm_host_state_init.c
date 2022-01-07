
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int xsave_enabled; scalar_t__ xsave_max_size; int xcr0_allowed; } ;


 int XFEATURE_AVX ;
 int cpuid_count (int,int,scalar_t__*) ;
 int sysctlbyname (char*,scalar_t__*,size_t*,int *,int ) ;
 TYPE_1__ vmm_xsave_limits ;

void
vmm_host_state_init(void)
{
 uint32_t avx1_0, regs[4];
 size_t ln;

 vmm_xsave_limits.xsave_enabled = 0;

 ln = sizeof(uint32_t);
 if (!sysctlbyname("hw.optional.avx1_0", &avx1_0, &ln, ((void*)0), 0) && avx1_0) {
  cpuid_count(0xd, 0x0, regs);
  vmm_xsave_limits.xsave_enabled = 1;
  vmm_xsave_limits.xcr0_allowed = XFEATURE_AVX;
  vmm_xsave_limits.xsave_max_size = regs[1];
 }
}
