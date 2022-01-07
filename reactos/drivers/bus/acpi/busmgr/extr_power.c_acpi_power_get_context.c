
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_resource {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int ACPI_HANDLE ;


 int ACPI_DB_WARN ;
 int ACPI_DEBUG_PRINT (int ) ;
 int acpi_bus_get_device (int ,struct acpi_device**) ;
 scalar_t__ acpi_driver_data (struct acpi_device*) ;
 int return_VALUE (int) ;

__attribute__((used)) static int
acpi_power_get_context (
 ACPI_HANDLE handle,
 struct acpi_power_resource **resource)
{
 int result = 0;
 struct acpi_device *device = ((void*)0);

 if (!resource)
  return_VALUE(-15);

 result = acpi_bus_get_device(handle, &device);
 if (result) {
  ACPI_DEBUG_PRINT((ACPI_DB_WARN, "Error getting context [%p]\n",
   handle));
  return_VALUE(result);
 }

 *resource = (struct acpi_power_resource *) acpi_driver_data(device);
 if (!*resource)
  return_VALUE(-15);

 return 0;
}
