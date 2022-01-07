
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*) ;
 int acpi_bus_exit () ;
 scalar_t__ pm_active ;
 int return_VOID ;

void
acpi_exit (void)
{
 DPRINT("acpi_exit\n");





 acpi_bus_exit();

 return_VOID;
}
