
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_name ;
struct TYPE_3__ {int member_0; char* member_1; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_POWER_RESOURCE_STATE_OFF ;
 int ACPI_POWER_RESOURCE_STATE_ON ;
 int ACPI_SINGLE_NAME ;
 int AE_OK ;
 int AcpiGetName (int ,int ,TYPE_1__*) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int return_VALUE (int) ;

__attribute__((used)) static int
acpi_power_get_state (
 ACPI_HANDLE handle,
 int *state)
{
 ACPI_STATUS status = AE_OK;
 unsigned long long sta = 0;
 char node_name[5];
 ACPI_BUFFER buffer = { sizeof(node_name), node_name };


 if (!handle || !state)
  return_VALUE(-1);

 status = acpi_evaluate_integer(handle, "_STA", ((void*)0), &sta);
 if (ACPI_FAILURE(status))
  return_VALUE(-15);

 *state = (sta & 0x01)?ACPI_POWER_RESOURCE_STATE_ON:
         ACPI_POWER_RESOURCE_STATE_OFF;

 AcpiGetName(handle, ACPI_SINGLE_NAME, &buffer);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Resource [%s] is %s\n",
  node_name, *state?"on":"off"));

 return 0;
}
