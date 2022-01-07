
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*) ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_bus_register_driver (int *) ;
 int acpi_power_driver ;
 int acpi_power_resource_list ;
 int return_VALUE (int) ;

int
acpi_power_init (void)
{
 int result = 0;

 DPRINT("acpi_power_init\n");

 INIT_LIST_HEAD(&acpi_power_resource_list);


 result = acpi_bus_register_driver(&acpi_power_driver);
 if (result < 0) {
  return_VALUE(-15);
 }

 return_VALUE(0);
}
