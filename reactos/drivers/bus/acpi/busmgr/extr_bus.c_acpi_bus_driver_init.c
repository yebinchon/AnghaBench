
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* add ) (struct acpi_device*) ;int (* start ) (struct acpi_device*) ;int (* scan ) (struct acpi_device*) ;int (* remove ) (struct acpi_device*,int ) ;} ;
struct acpi_driver {TYPE_1__ ops; } ;
struct acpi_device {struct acpi_driver* driver; } ;


 int ACPI_BUS_REMOVAL_NORMAL ;
 int AE_BAD_PARAMETER ;
 int DPRINT (char*) ;
 int return_VALUE (int) ;
 int stub1 (struct acpi_device*) ;
 int stub2 (struct acpi_device*) ;
 int stub3 (struct acpi_device*,int ) ;
 int stub4 (struct acpi_device*) ;

__attribute__((used)) static int
acpi_bus_driver_init (
 struct acpi_device *device,
 struct acpi_driver *driver)
{
 int result = 0;

 if (!device || !driver)
  return_VALUE(AE_BAD_PARAMETER);

 if (!driver->ops.add)
  return_VALUE(-38);

 result = driver->ops.add(device);
 if (result) {
  device->driver = ((void*)0);

  return_VALUE(result);
 }

 device->driver = driver;






 if (driver->ops.start) {
  result = driver->ops.start(device);
  if (result && driver->ops.remove)
   driver->ops.remove(device, ACPI_BUS_REMOVAL_NORMAL);
  return_VALUE(result);
 }

 DPRINT("Driver successfully bound to device\n");

 if (driver->ops.scan) {
  driver->ops.scan(device);
 }

 return_VALUE(0);
}
