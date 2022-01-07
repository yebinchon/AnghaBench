
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dynamic_status; int compatible_ids; int removable; int ejectable; int lockable; int power_manageable; } ;
struct acpi_device {TYPE_1__ flags; int handle; } ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int AcpiGetHandle (int ,char*,int **) ;
 int return_VALUE (int ) ;

__attribute__((used)) static int
acpi_bus_get_flags (
 struct acpi_device *device)
{
 ACPI_STATUS status = AE_OK;
 ACPI_HANDLE temp = ((void*)0);


 status = AcpiGetHandle(device->handle, "_STA", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.dynamic_status = 1;


 status = AcpiGetHandle(device->handle, "_CID", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.compatible_ids = 1;


 status = AcpiGetHandle(device->handle, "_RMV", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.removable = 1;


 status = AcpiGetHandle(device->handle, "_EJD", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.ejectable = 1;
 else {
  status = AcpiGetHandle(device->handle, "_EJ0", &temp);
  if (ACPI_SUCCESS(status))
   device->flags.ejectable = 1;
 }


 status = AcpiGetHandle(device->handle, "_LCK", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.lockable = 1;


 status = AcpiGetHandle(device->handle, "_PS0", &temp);
 if (ACPI_FAILURE(status))
  status = AcpiGetHandle(device->handle, "_PR0", &temp);
 if (ACPI_SUCCESS(status))
  device->flags.power_manageable = 1;



 return_VALUE(0);
}
