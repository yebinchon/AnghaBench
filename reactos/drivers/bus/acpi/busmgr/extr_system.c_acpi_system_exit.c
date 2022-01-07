
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (char*) ;
 int acpi_bus_unregister_driver (int *) ;
 int acpi_system_driver ;
 int return_VOID ;

void
acpi_system_exit (void)
{
 ACPI_FUNCTION_TRACE("acpi_system_exit");
 acpi_bus_unregister_driver(&acpi_system_driver);
 return_VOID;
}
