
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (char*) ;
 int acpi_bus_register_driver (int *) ;
 int acpi_button_driver ;
 int return_VALUE (int) ;

int
acpi_button_init (void)
{
 int result = 0;

 ACPI_FUNCTION_TRACE("acpi_button_init");

 result = acpi_bus_register_driver(&acpi_button_driver);
 if (result < 0) {
  return_VALUE(-15);
 }

 return_VALUE(0);
}
