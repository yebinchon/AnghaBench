
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int XHYVE_ACPI_BASE ;
 int XHYVE_ACPI_SIZE ;
 int acpi_ncpu ;
 int acpitbl_build_dsdt () ;
 int acpitbl_build_facs () ;
 int acpitbl_build_fadt () ;
 int acpitbl_build_hpet () ;
 int acpitbl_build_madt () ;
 int acpitbl_build_mcfg () ;
 int acpitbl_build_rdsp () ;
 int acpitbl_build_rsdt () ;
 int acpitbl_build_xsdt () ;
 int hpet_capabilities ;
 int * paddr_guest2host (int ,int ) ;
 int * tb ;
 int xh_vm_get_hpet_capabilities (int *) ;

int
acpi_build(int ncpu)
{
 int err;

 acpi_ncpu = ncpu;
 tb = paddr_guest2host(XHYVE_ACPI_BASE, XHYVE_ACPI_SIZE);
 if (tb == ((void*)0)) {
  return (EFAULT);
 }

 err = xh_vm_get_hpet_capabilities(&hpet_capabilities);
 if (err != 0) {
  return (err);
 }

 acpitbl_build_rdsp();
 acpitbl_build_rsdt();
 acpitbl_build_xsdt();
 acpitbl_build_madt();
 acpitbl_build_fadt();
 acpitbl_build_hpet();
 acpitbl_build_mcfg();
 acpitbl_build_facs();
 acpitbl_build_dsdt();

 return 0;
}
