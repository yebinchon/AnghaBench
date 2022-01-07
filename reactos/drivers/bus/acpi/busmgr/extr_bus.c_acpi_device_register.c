
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int AE_BAD_PARAMETER ;
 int return_VALUE (int) ;

__attribute__((used)) static int
acpi_device_register (
 struct acpi_device *device,
 struct acpi_device *parent)
{
 int result = 0;

 if (!device)
  return_VALUE(AE_BAD_PARAMETER);

 return_VALUE(result);
}
