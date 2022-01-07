
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;





 int AE_ERROR ;
 int AcpiEnterSleepState (int) ;

ACPI_STATUS
acpi_system_suspend(
 UINT32 state)
{
 ACPI_STATUS status = AE_ERROR;





 switch (state) {
 case 130:
 case 128:

  status = AcpiEnterSleepState(state);
  break;
 case 129:

  break;
 }




 return status;
}
