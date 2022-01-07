
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
struct vmx {TYPE_2__* state; TYPE_1__* cap; } ;
typedef scalar_t__ hv_vcpuid_t ;
struct TYPE_4__ {int nextrip; } ;
struct TYPE_3__ {void* proc_ctls2; void* proc_ctls; scalar_t__ set; } ;


 int HV_VCPU_DEFAULT ;
 int IDT_MC ;
 int MSR_FSBASE ;
 int MSR_GSBASE ;
 int MSR_IA32_TSC_AUX ;
 int MSR_SYSENTER_CS_MSR ;
 int MSR_SYSENTER_EIP_MSR ;
 int MSR_SYSENTER_ESP_MSR ;
 int MSR_TSC ;
 int VMCS_ENTRY_CTLS ;
 int VMCS_EXCEPTION_BITMAP ;
 int VMCS_EXIT_CTLS ;
 int VMCS_PIN_BASED_CTLS ;
 int VMCS_PRI_PROC_BASED_CTLS ;
 int VMCS_SEC_PROC_BASED_CTLS ;
 void* entry_ctls ;
 void* exit_ctls ;
 scalar_t__ hv_vcpu_create (scalar_t__*,int ) ;
 scalar_t__ hv_vcpu_enable_native_msr (scalar_t__,int ,int) ;
 void* pinbased_ctls ;
 void* procbased_ctls ;
 void* procbased_ctls2 ;
 scalar_t__ vcpu_trace_exceptions () ;
 int vmcs_write (int,int ,void*) ;
 int vmx_msr_guest_init (struct vmx*,int) ;
 int vmx_setup_cr0_shadow (int,int) ;
 int vmx_setup_cr4_shadow (int,int ) ;
 int xhyve_abort (char*,...) ;

__attribute__((used)) static int
vmx_vcpu_init(void *arg, int vcpuid) {
 uint32_t exc_bitmap;
 struct vmx *vmx;
 hv_vcpuid_t hvid;
 int error;

 vmx = (struct vmx *) arg;

 if (hv_vcpu_create(&hvid, HV_VCPU_DEFAULT)) {
  xhyve_abort("hv_vcpu_create failed\n");
 }

 if (hvid != ((hv_vcpuid_t) vcpuid)) {

  xhyve_abort("vcpu id mismatch\n");
 }

 if (hv_vcpu_enable_native_msr(hvid, MSR_GSBASE, 1) ||
  hv_vcpu_enable_native_msr(hvid, MSR_FSBASE, 1) ||
  hv_vcpu_enable_native_msr(hvid, MSR_SYSENTER_CS_MSR, 1) ||
  hv_vcpu_enable_native_msr(hvid, MSR_SYSENTER_ESP_MSR, 1) ||
  hv_vcpu_enable_native_msr(hvid, MSR_SYSENTER_EIP_MSR, 1) ||
  hv_vcpu_enable_native_msr(hvid, MSR_TSC, 1) ||
  hv_vcpu_enable_native_msr(hvid, MSR_IA32_TSC_AUX, 1))
 {
  xhyve_abort("vmx_vcpu_init: error setting guest msr access\n");
 }

 vmx_msr_guest_init(vmx, vcpuid);

 vmcs_write(vcpuid, VMCS_PIN_BASED_CTLS, pinbased_ctls);
 vmcs_write(vcpuid, VMCS_PRI_PROC_BASED_CTLS, procbased_ctls);
 vmcs_write(vcpuid, VMCS_SEC_PROC_BASED_CTLS, procbased_ctls2);
 vmcs_write(vcpuid, VMCS_EXIT_CTLS, exit_ctls);
 vmcs_write(vcpuid, VMCS_ENTRY_CTLS, entry_ctls);


 if (vcpu_trace_exceptions())
  exc_bitmap = 0xffffffff;
 else
  exc_bitmap = 1 << IDT_MC;

 vmcs_write(vcpuid, VMCS_EXCEPTION_BITMAP, exc_bitmap);

 vmx->cap[vcpuid].set = 0;
 vmx->cap[vcpuid].proc_ctls = procbased_ctls;
 vmx->cap[vcpuid].proc_ctls2 = procbased_ctls2;
 vmx->state[vcpuid].nextrip = ~(uint64_t) 0;







 error = vmx_setup_cr0_shadow(vcpuid, 0x60000010);
 if (error != 0)
  xhyve_abort("vmx_setup_cr0_shadow %d\n", error);

 error = vmx_setup_cr4_shadow(vcpuid, 0);

 if (error != 0)
  xhyve_abort("vmx_setup_cr4_shadow %d\n", error);

 return (0);
}
