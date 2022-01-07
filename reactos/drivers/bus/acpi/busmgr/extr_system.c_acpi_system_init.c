
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (char*) ;
 int AE_NOT_FOUND ;
 int acpi_bus_register_driver (int *) ;
 int acpi_system_driver ;
 int return_VALUE (int ) ;

int
acpi_system_init (void)
{
 int result = 0;

 ACPI_FUNCTION_TRACE("acpi_system_init");

 result = acpi_bus_register_driver(&acpi_system_driver);
 if (result < 0)
  return_VALUE(AE_NOT_FOUND);

 return_VALUE(0);
}
