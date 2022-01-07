
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct acpi_device {TYPE_1__ performance; } ;


 int ACPI_STATE_UNKNOWN ;
 int AE_NOT_FOUND ;

__attribute__((used)) static int
acpi_bus_get_perf_flags (
 struct acpi_device *device)
{
 if (!device)
  return AE_NOT_FOUND;

 device->performance.state = ACPI_STATE_UNKNOWN;

 return 0;
}
