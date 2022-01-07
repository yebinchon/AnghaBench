
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BSP ;
 int VM_CAP_HALT_EXIT ;
 int VM_CAP_PAUSE_EXIT ;
 size_t VM_EXITCODE_HLT ;
 size_t VM_EXITCODE_PAUSE ;
 int X2APIC_DISABLED ;
 int X2APIC_ENABLED ;
 int exit (int) ;
 scalar_t__ fbsdrun_vmexit_on_hlt () ;
 scalar_t__ fbsdrun_vmexit_on_pause () ;
 int fprintf (int ,char*,...) ;
 int * handler ;
 int stderr ;
 int vmexit_hlt ;
 int vmexit_pause ;
 scalar_t__ x2apic_mode ;
 int xh_vm_get_capability (int,int ,int*) ;
 int xh_vm_set_capability (int,int ,int) ;
 int xh_vm_set_x2apic_state (int,int ) ;

void
vcpu_set_capabilities(int cpu)
{
 int err, tmp;

 if (fbsdrun_vmexit_on_hlt()) {
  err = xh_vm_get_capability(cpu, VM_CAP_HALT_EXIT, &tmp);
  if (err < 0) {
   fprintf(stderr, "VM exit on HLT not supported\n");
   exit(1);
  }
  xh_vm_set_capability(cpu, VM_CAP_HALT_EXIT, 1);
  if (cpu == BSP)
   handler[VM_EXITCODE_HLT] = vmexit_hlt;
 }

        if (fbsdrun_vmexit_on_pause()) {



  err = xh_vm_get_capability(cpu, VM_CAP_PAUSE_EXIT, &tmp);
  if (err < 0) {
   fprintf(stderr,
       "SMP mux requested, no pause support\n");
   exit(1);
  }
  xh_vm_set_capability(cpu, VM_CAP_PAUSE_EXIT, 1);
  if (cpu == BSP)
   handler[VM_EXITCODE_PAUSE] = vmexit_pause;
        }

 if (x2apic_mode)
  err = xh_vm_set_x2apic_state(cpu, X2APIC_ENABLED);
 else
  err = xh_vm_set_x2apic_state(cpu, X2APIC_DISABLED);

 if (err) {
  fprintf(stderr, "Unable to set x2apic state (%d)\n", err);
  exit(1);
 }
}
