
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_button {int handle; } ;
typedef int ACPI_STATUS ;


 int ACPI_BUTTON_NOTIFY_STATUS ;
 int ACPI_FUNCTION_TRACE (char*) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_button_notify (int ,int ,struct acpi_button*) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
acpi_button_notify_fixed (
 void *data)
{
 struct acpi_button *button = (struct acpi_button *) data;

 ACPI_FUNCTION_TRACE("acpi_button_notify_fixed");

 if (!button)
  return_ACPI_STATUS(AE_BAD_PARAMETER);

 acpi_button_notify(button->handle, ACPI_BUTTON_NOTIFY_STATUS, button);

 return_ACPI_STATUS(AE_OK);
}
