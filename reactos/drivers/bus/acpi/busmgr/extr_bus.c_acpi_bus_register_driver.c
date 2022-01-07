
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_driver {int references; int node; } ;


 int AE_BAD_PARAMETER ;
 int WALK_DOWN ;
 int acpi_bus_attach ;
 int acpi_bus_drivers ;
 int acpi_bus_drivers_lock ;
 int acpi_bus_walk (int ,int ,int ,struct acpi_driver*) ;
 int acpi_root ;
 int down (int *) ;
 int list_add_tail (int *,int *) ;
 int return_VALUE (int ) ;
 int up (int *) ;

int
acpi_bus_register_driver (
 struct acpi_driver *driver)
{
 if (!driver)
  return_VALUE(AE_BAD_PARAMETER);




 down(&acpi_bus_drivers_lock);
 list_add_tail(&driver->node, &acpi_bus_drivers);
 up(&acpi_bus_drivers_lock);

 acpi_bus_walk(acpi_root, acpi_bus_attach,
  WALK_DOWN, driver);

 return_VALUE(driver->references);
}
