
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_system {int dummy; } ;
struct acpi_device {int dummy; } ;


 int ACPI_FUNCTION_TRACE (char*) ;
 int ExFreePoolWithTag (struct acpi_system*,char) ;
 scalar_t__ acpi_driver_data (struct acpi_device*) ;
 int return_VALUE (int) ;

__attribute__((used)) static int
acpi_system_remove (
 struct acpi_device *device,
 int type)
{
 struct acpi_system *system = ((void*)0);

 ACPI_FUNCTION_TRACE("acpi_system_remove");

 if (!device || !acpi_driver_data(device))
  return_VALUE(-1);

 system = (struct acpi_system *) acpi_driver_data(device);
 ExFreePoolWithTag(system, 'IPCA');

 return 0;
}
