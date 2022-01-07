
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CR0_CD ;
 int CR0_ET ;
 int CR0_NE ;
 int CR0_NW ;
 int HV_NO_DEVICE ;
 int HV_VMX_CAP_ENTRY ;
 int HV_VMX_CAP_EXIT ;
 int HV_VMX_CAP_PINBASED ;
 int HV_VMX_CAP_PROCBASED ;
 int HV_VMX_CAP_PROCBASED2 ;
 int HV_VM_DEFAULT ;
 int PINBASED_CTLS_ONE_SETTING ;
 int PINBASED_CTLS_ZERO_SETTING ;
 int PROCBASED_CTLS2_ONE_SETTING ;
 int PROCBASED_CTLS2_ZERO_SETTING ;
 int PROCBASED_CTLS_ONE_SETTING ;
 int PROCBASED_CTLS_WINDOW_SETTING ;
 int PROCBASED_CTLS_ZERO_SETTING ;
 int VM_ENTRY_CTLS_ONE_SETTING ;
 int VM_ENTRY_CTLS_ZERO_SETTING ;
 int VM_EXIT_CTLS_ONE_SETTING ;
 int VM_EXIT_CTLS_ZERO_SETTING ;
 int cap_halt_exit ;
 int cap_monitor_trap ;
 int cap_pause_exit ;
 int cr0_ones_mask ;
 int cr0_zeros_mask ;
 int cr4_ones_mask ;
 int cr4_zeros_mask ;
 int entry_ctls ;
 int exit_ctls ;
 int hv_vm_create (int ) ;
 int pinbased_ctls ;
 int printf (char*) ;
 int procbased_ctls ;
 int procbased_ctls2 ;
 int vmx_msr_init () ;
 int vmx_set_ctlreg (int ,int ,int ,int *) ;
 int xhyve_abort (char*) ;

__attribute__((used)) static int
vmx_init(void)
{
 int error = hv_vm_create(HV_VM_DEFAULT);
 if (error) {
  if (error == HV_NO_DEVICE) {
   printf("vmx_init: processor not supported by "
          "Hypervisor.framework\n");
   return (error);
  }
  else
   xhyve_abort("hv_vm_create failed\n");
 }


 error = vmx_set_ctlreg(HV_VMX_CAP_PROCBASED,
          PROCBASED_CTLS_ONE_SETTING,
          PROCBASED_CTLS_ZERO_SETTING, &procbased_ctls);
 if (error) {
  printf("vmx_init: processor does not support desired primary "
         "processor-based controls\n");
  return (error);
 }


 procbased_ctls &= ~PROCBASED_CTLS_WINDOW_SETTING;


 error = vmx_set_ctlreg(HV_VMX_CAP_PROCBASED2,
          PROCBASED_CTLS2_ONE_SETTING,
          PROCBASED_CTLS2_ZERO_SETTING, &procbased_ctls2);
 if (error) {
  printf("vmx_init: processor does not support desired secondary "
         "processor-based controls\n");
  return (error);
 }


 error = vmx_set_ctlreg(HV_VMX_CAP_PINBASED,
          PINBASED_CTLS_ONE_SETTING,
          PINBASED_CTLS_ZERO_SETTING, &pinbased_ctls);
 if (error) {
  printf("vmx_init: processor does not support desired "
         "pin-based controls\n");
  return (error);
 }


 error = vmx_set_ctlreg(HV_VMX_CAP_EXIT,
          VM_EXIT_CTLS_ONE_SETTING,
          VM_EXIT_CTLS_ZERO_SETTING,
          &exit_ctls);
 if (error) {
  printf("vmx_init: processor does not support desired "
      "exit controls\n");
  return (error);
 }


 error = vmx_set_ctlreg(HV_VMX_CAP_ENTRY,
     VM_ENTRY_CTLS_ONE_SETTING, VM_ENTRY_CTLS_ZERO_SETTING,
     &entry_ctls);
 if (error) {
  printf("vmx_init: processor does not support desired "
      "entry controls\n");
  return (error);
 }





 cap_halt_exit = 1;
 cap_monitor_trap = 1;
 cap_pause_exit = 1;




   cr0_ones_mask = cr4_ones_mask = 0;
   cr0_zeros_mask = cr4_zeros_mask = 0;

   cr0_ones_mask |= (CR0_NE | CR0_ET);
   cr0_zeros_mask |= (CR0_NW | CR0_CD);
   cr4_ones_mask = 0x2000;

 vmx_msr_init();

 return (0);
}
