
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_2__ {int Flags; } ;


 int ACPI_BITREG_POWER_BUTTON_ENABLE ;
 int ACPI_BITREG_SLEEP_BUTTON_ENABLE ;
 int ACPI_BUS_TYPE_POWER_BUTTON ;
 int ACPI_BUS_TYPE_POWER_BUTTONF ;
 int ACPI_BUS_TYPE_SLEEP_BUTTON ;
 int ACPI_BUS_TYPE_SLEEP_BUTTONF ;
 int ACPI_FADT_POWER_BUTTON ;
 int ACPI_FADT_SLEEP_BUTTON ;
 int AE_NOT_FOUND ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiWriteBitRegister (int ,int) ;
 int acpi_bus_add (struct acpi_device**,int ,int *,int ) ;
 int acpi_root ;
 int return_VALUE (int) ;

__attribute__((used)) static int
acpi_bus_scan_fixed (
 struct acpi_device *root)
{
 int result = 0;
 struct acpi_device *device = ((void*)0);

 if (!root)
  return_VALUE(AE_NOT_FOUND);





 if (AcpiGbl_FADT.Flags & ACPI_FADT_POWER_BUTTON)
  result = acpi_bus_add(&device, acpi_root,
   ((void*)0), ACPI_BUS_TYPE_POWER_BUTTON);
 else
 {

  AcpiWriteBitRegister(ACPI_BITREG_POWER_BUTTON_ENABLE, 1);

  result = acpi_bus_add(&device, acpi_root,
   ((void*)0), ACPI_BUS_TYPE_POWER_BUTTONF);
 }
 if (AcpiGbl_FADT.Flags & ACPI_FADT_SLEEP_BUTTON)
  result = acpi_bus_add(&device, acpi_root,
   ((void*)0), ACPI_BUS_TYPE_SLEEP_BUTTON);
 else
 {

  AcpiWriteBitRegister(ACPI_BITREG_SLEEP_BUTTON_ENABLE, 1);

  result = acpi_bus_add(&device, acpi_root,
   ((void*)0), ACPI_BUS_TYPE_SLEEP_BUTTONF);
 }

 return_VALUE(result);
}
