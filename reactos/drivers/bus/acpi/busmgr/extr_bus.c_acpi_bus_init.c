
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_BUS_TYPE_SYSTEM ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FULL_INITIALIZATION ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_SYSTEM_NOTIFY ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int AcpiEnableSubsystem (int ) ;
 int AcpiInitializeObjects (int ) ;
 int AcpiInstallNotifyHandler (int ,int ,int ,int *) ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int AcpiTerminate () ;
 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int KeInitializeDpc (int *,int ,int *) ;
 int acpi_bus_add (int *,int *,int ,int ) ;
 int acpi_bus_generate_event_dpc ;
 int acpi_bus_notify ;
 int acpi_bus_scan (int ) ;
 int acpi_bus_scan_fixed (int ) ;
 int acpi_root ;
 int event_dpc ;
 int return_VALUE (int) ;

int
acpi_bus_init (void)
{
 int result = 0;
 ACPI_STATUS status = AE_OK;

 DPRINT("acpi_bus_init\n");

        KeInitializeDpc(&event_dpc, acpi_bus_generate_event_dpc, ((void*)0));

 status = AcpiEnableSubsystem(ACPI_FULL_INITIALIZATION);
 if (ACPI_FAILURE(status)) {
  DPRINT1("Unable to start the ACPI Interpreter\n");
  goto error1;
 }
 status = AcpiInitializeObjects(ACPI_FULL_INITIALIZATION);
 if (ACPI_FAILURE(status)) {
  DPRINT1("Unable to initialize ACPI objects\n");
  goto error1;
 }
 status = AcpiInstallNotifyHandler(ACPI_ROOT_OBJECT, ACPI_SYSTEM_NOTIFY, acpi_bus_notify, ((void*)0));
 if (ACPI_FAILURE(status)) {
  DPRINT1("Unable to register for device notifications\n");
  result = AE_NOT_FOUND;
  goto error1;
 }




 result = acpi_bus_add(&acpi_root, ((void*)0), ACPI_ROOT_OBJECT,
  ACPI_BUS_TYPE_SYSTEM);
 if (result)
  goto error2;





 result = acpi_bus_scan_fixed(acpi_root);
 if (result)
  DPRINT1("acpi_bus_scan_fixed failed\n");
 result = acpi_bus_scan(acpi_root);
 if (result)
  DPRINT1("acpi_bus_scan failed\n");

 return_VALUE(0);


error2:
 AcpiRemoveNotifyHandler(ACPI_ROOT_OBJECT,
  ACPI_SYSTEM_NOTIFY, acpi_bus_notify);
error1:
 AcpiTerminate();
 return_VALUE(AE_NOT_FOUND);
}
