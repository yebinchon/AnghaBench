
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_CA_VERSION ;
 int AcpiEventQueue ;
 int DPRINT (char*,...) ;
 int ExInitializeFastMutex (int *) ;
 int FALSE ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeInitializeSpinLock (int *) ;
 int NotificationEvent ;
 int acpi_bus_drivers_lock ;
 int acpi_bus_event_lock ;
 int acpi_bus_init () ;
 int acpi_button_init () ;
 int acpi_pci_disabled ;
 int acpi_pci_link_init () ;
 int acpi_pci_root_init () ;
 int acpi_power_init () ;
 int acpi_system_init () ;

int
acpi_init (void)
{
 int result = 0;

 DPRINT("acpi_init\n");

 DPRINT("Subsystem revision %08x\n",ACPI_CA_VERSION);

 KeInitializeSpinLock(&acpi_bus_event_lock);
 KeInitializeEvent(&AcpiEventQueue, NotificationEvent, FALSE);
 ExInitializeFastMutex(&acpi_bus_drivers_lock);

 result = acpi_bus_init();
 acpi_system_init();
 acpi_power_init();
 acpi_button_init();
 return result;
}
