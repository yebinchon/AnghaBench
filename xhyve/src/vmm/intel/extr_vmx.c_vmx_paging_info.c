
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_guest_paging {int paging_mode; int cpu_mode; int cpl; int cr3; } ;


 int vmcs_guest_cr3 (int) ;
 int vmx_cpl (int) ;
 int vmx_cpu_mode (int) ;
 int vmx_paging_mode (int) ;

__attribute__((used)) static void
vmx_paging_info(struct vm_guest_paging *paging, int vcpu)
{
 paging->cr3 = vmcs_guest_cr3(vcpu);
 paging->cpl = vmx_cpl(vcpu);
 paging->cpu_mode = vmx_cpu_mode(vcpu);
 paging->paging_mode = vmx_paging_mode(vcpu);
}
