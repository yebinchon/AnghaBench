
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiGetData (int ,int ,void**) ;
 int DPRINT (char*,int ) ;
 int acpi_bus_private_data_handler ;

int acpi_bus_get_private_data(ACPI_HANDLE handle, void **data)
{
 ACPI_STATUS status = AE_OK;

 if (!*data)
  return -1;

 status = AcpiGetData(handle, acpi_bus_private_data_handler, data);
 if (ACPI_FAILURE(status) || !*data) {
  DPRINT("No context for object [%p]\n", handle);
  return -1;
 }

 return 0;
}
