
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_driver {int references; int name; } ;
struct TYPE_4__ {int bus_id; } ;
struct TYPE_3__ {int present; } ;
struct acpi_device {TYPE_2__ pnp; TYPE_1__ status; scalar_t__ driver; } ;


 int AE_BAD_PARAMETER ;
 int AE_NOT_FOUND ;
 int DPRINT (char*,int ,int ) ;
 int acpi_bus_driver_init (struct acpi_device*,struct acpi_driver*) ;
 int acpi_bus_drivers_lock ;
 int acpi_bus_match (struct acpi_device*,struct acpi_driver*) ;
 int down (int *) ;
 int return_VALUE (int) ;
 int up (int *) ;

__attribute__((used)) static int
acpi_bus_attach (
 struct acpi_device *device,
 int level,
 void *data)
{
 int result = 0;
 struct acpi_driver *driver = ((void*)0);

 if (!device || !data)
  return_VALUE(AE_BAD_PARAMETER);

 driver = (struct acpi_driver *) data;

 if (device->driver)
  return_VALUE(-9);

 if (!device->status.present)
  return_VALUE(AE_NOT_FOUND);

 result = acpi_bus_match(device, driver);
 if (result)
  return_VALUE(result);

 DPRINT("Found driver [%s] for device [%s]\n",
  driver->name, device->pnp.bus_id);

 result = acpi_bus_driver_init(device, driver);
 if (result)
  return_VALUE(result);

 down(&acpi_bus_drivers_lock);
 ++driver->references;
 up(&acpi_bus_drivers_lock);

 return_VALUE(0);
}
