
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_STATE_S1 ;
 int AE_OK ;
 int KeStallExecutionProcessor (int) ;

ACPI_STATUS
acpi_system_restore_state(
 UINT32 state)
{





 if (state > ACPI_STATE_S1) {
  KeStallExecutionProcessor(100);

 }





 KeStallExecutionProcessor(10);
 return AE_OK;
}
