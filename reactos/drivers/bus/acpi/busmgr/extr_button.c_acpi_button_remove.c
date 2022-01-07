
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_button {int type; int handle; } ;
typedef int ACPI_STATUS ;





 int ACPI_DB_ERROR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEVICE_NOTIFY ;
 int const ACPI_EVENT_POWER_BUTTON ;
 int const ACPI_EVENT_SLEEP_BUTTON ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (char*) ;
 int AcpiRemoveFixedEventHandler (int const,int ) ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int ExFreePoolWithTag (struct acpi_button*,char) ;
 int acpi_button_notify ;
 int acpi_button_notify_fixed ;
 struct acpi_button* acpi_driver_data (struct acpi_device*) ;
 int return_VALUE (int) ;

__attribute__((used)) static int
acpi_button_remove (struct acpi_device *device, int type)
{
 ACPI_STATUS status = 0;
 struct acpi_button *button = ((void*)0);

 ACPI_FUNCTION_TRACE("acpi_button_remove");

 if (!device || !acpi_driver_data(device))
  return_VALUE(-1);

 button = acpi_driver_data(device);


 switch (button->type) {
 case 129:
  status = AcpiRemoveFixedEventHandler(
   ACPI_EVENT_POWER_BUTTON, acpi_button_notify_fixed);
  break;
 case 128:
  status = AcpiRemoveFixedEventHandler(
   ACPI_EVENT_SLEEP_BUTTON, acpi_button_notify_fixed);
  break;
 case 130:
  status = AcpiRemoveFixedEventHandler(
   130, acpi_button_notify_fixed);
  break;
 default:
  status = AcpiRemoveNotifyHandler(button->handle,
   ACPI_DEVICE_NOTIFY, acpi_button_notify);
  break;
 }

 if (ACPI_FAILURE(status))
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
   "Error removing notify handler\n"));

 ExFreePoolWithTag(button, 'IPCA');

 return_VALUE(0);
}
