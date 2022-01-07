
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int AcpiGetData (int ,int ,void**) ;
 int DPRINT (char*,int ) ;
 int acpi_bus_data_handler ;
 int return_VALUE (int ) ;

int
acpi_bus_get_device (
 ACPI_HANDLE handle,
 struct acpi_device **device)
{
 ACPI_STATUS status = AE_OK;

 if (!device)
  return_VALUE(AE_BAD_PARAMETER);



 status = AcpiGetData(handle, acpi_bus_data_handler, (void**)device);
 if (ACPI_FAILURE(status) || !*device) {
  DPRINT( "Error getting context for object [%p]\n",
   handle);
  return_VALUE(AE_NOT_FOUND);
 }

 return 0;
}
