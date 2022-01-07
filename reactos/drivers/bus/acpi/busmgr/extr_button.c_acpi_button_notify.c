
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_button {int pushed; int device; } ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;



 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (char*) ;
 int acpi_bus_generate_event (int ,int,int ) ;
 int return_VOID ;

void
acpi_button_notify (
 ACPI_HANDLE handle,
 UINT32 event,
 void *data)
{
 struct acpi_button *button = (struct acpi_button *) data;

 ACPI_FUNCTION_TRACE("acpi_button_notify");

 if (!button || !button->device)
  return_VOID;

 switch (event) {
 case 128:
  acpi_bus_generate_event(button->device, event, ++button->pushed);
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
   "Unsupported event [0x%x]\n", event));
  break;
 }

 return_VOID;
}
