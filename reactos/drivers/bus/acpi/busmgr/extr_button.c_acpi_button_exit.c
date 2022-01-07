
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (char*) ;
 int acpi_bus_unregister_driver (int *) ;
 int acpi_button_driver ;
 int return_VOID ;

void
acpi_button_exit (void)
{
 ACPI_FUNCTION_TRACE("acpi_button_exit");

 acpi_bus_unregister_driver(&acpi_button_driver);

 return_VOID;
}
