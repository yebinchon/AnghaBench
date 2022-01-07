
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_BUS_REMOVAL_NORMAL ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_SYSTEM_NOTIFY ;
 int AE_OK ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int AcpiTerminate () ;
 int DPRINT1 (char*) ;
 int acpi_bus_notify ;
 int acpi_bus_remove (int ,int ) ;
 int acpi_ec_exit () ;
 int acpi_pci_link_exit () ;
 int acpi_pci_root_exit () ;
 int acpi_root ;
 int acpi_system_exit () ;
 int return_VOID ;

__attribute__((used)) static void
acpi_bus_exit (void)
{
 ACPI_STATUS status = AE_OK;

 DPRINT1("acpi_bus_exit\n");

 status = AcpiRemoveNotifyHandler(ACPI_ROOT_OBJECT,
  ACPI_SYSTEM_NOTIFY, acpi_bus_notify);
 if (ACPI_FAILURE(status))
  DPRINT1("Error removing notify handler\n");
 acpi_system_exit();

 acpi_bus_remove(acpi_root, ACPI_BUS_REMOVAL_NORMAL);

 status = AcpiTerminate();
 if (ACPI_FAILURE(status))
  DPRINT1("Unable to terminate the ACPI Interpreter\n");
 else
  DPRINT1("Interpreter disabled\n");

 return_VOID;
}
