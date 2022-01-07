
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_driver {int node; scalar_t__ references; } ;


 int WALK_UP ;
 int acpi_bus_drivers_lock ;
 int acpi_bus_unattach ;
 int acpi_bus_walk (int ,int ,int ,struct acpi_driver*) ;
 int acpi_root ;
 int down (int *) ;
 int list_del (int *) ;
 int up (int *) ;

void
acpi_bus_unregister_driver (
 struct acpi_driver *driver)
{
 if (!driver)
  return;

 acpi_bus_walk(acpi_root, acpi_bus_unattach, WALK_UP, driver);

 if (driver->references)
  return;

 down(&acpi_bus_drivers_lock);
 list_del(&driver->node);
 up(&acpi_bus_drivers_lock);

 return;
}
