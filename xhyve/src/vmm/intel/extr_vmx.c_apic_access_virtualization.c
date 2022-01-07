
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmx {TYPE_1__* cap; } ;
struct TYPE_2__ {int proc_ctls2; } ;


 int PROCBASED2_VIRTUALIZE_APIC_ACCESSES ;

__attribute__((used)) static __inline int
apic_access_virtualization(struct vmx *vmx, int vcpuid)
{
 uint32_t proc_ctls2;

 proc_ctls2 = vmx->cap[vcpuid].proc_ctls2;
 return ((proc_ctls2 & PROCBASED2_VIRTUALIZE_APIC_ACCESSES) ? 1 : 0);
}
