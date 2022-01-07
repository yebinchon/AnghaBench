
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_FLUSH_CPU_CACHE () ;
 scalar_t__ ACPI_STATE_S5 ;
 int ACPI_SUCCESS (int ) ;
 int AcpiEnterSleepState (scalar_t__) ;
 int AcpiEnterSleepStatePrep (scalar_t__) ;
 int AcpiLeaveSleepState (scalar_t__) ;
 int AcpiSetFirmwareWakingVector (int ,int ) ;
 int _disable () ;
 int _enable () ;
 int acpi_system_restore_state (scalar_t__) ;
 int acpi_system_suspend (scalar_t__) ;

ACPI_STATUS
acpi_suspend (
 UINT32 state)
{
 ACPI_STATUS status;
 AcpiEnterSleepStatePrep(state);

 status = AcpiEnterSleepState(state);
 if (!ACPI_SUCCESS(status) && state != ACPI_STATE_S5)
  return status;


 _disable();
 ACPI_FLUSH_CPU_CACHE();


 status = acpi_system_suspend(state);





 AcpiLeaveSleepState(state);
 acpi_system_restore_state(state);


 _enable();


 AcpiSetFirmwareWakingVector(0, 0);

 return status;
}
