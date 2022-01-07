
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_FLUSH_CPU_CACHE () ;
 scalar_t__ ACPI_STATE_S1 ;
 scalar_t__ ACPI_STATE_S4 ;
 int AE_ERROR ;
 int AE_OK ;
 int acpi_save_state_disk () ;

ACPI_STATUS
acpi_system_save_state(
 UINT32 state)
{
 int error = 0;
  ACPI_FLUSH_CPU_CACHE();


  if (state > ACPI_STATE_S1) {
   error = 0;
  }
 return error ? AE_ERROR : AE_OK;
}
