
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
struct TYPE_2__ {int SleepStatus; } ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SLEEP_TYPE_INVALID ;
 int ACPI_SST_WAKING ;
 int ACPI_SST_WORKING ;
 scalar_t__ ACPI_X_WAKE_STATUS ;
 int AE_OK ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiGbl_SleepTypeA ;
 int AcpiGbl_SystemAwakeAndRunning ;
 int AcpiHwExecuteSleepMethod (int ,int ) ;
 int AcpiWrite (int ,int *) ;
 int HwExtendedWake ;
 int METHOD_PATHNAME__SST ;
 int METHOD_PATHNAME__WAK ;
 int TRUE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwExtendedWake (
    UINT8 SleepState)
{
    ACPI_FUNCTION_TRACE (HwExtendedWake);




    AcpiGbl_SleepTypeA = ACPI_SLEEP_TYPE_INVALID;



    AcpiHwExecuteSleepMethod (METHOD_PATHNAME__SST, ACPI_SST_WAKING);
    AcpiHwExecuteSleepMethod (METHOD_PATHNAME__WAK, SleepState);






    (void) AcpiWrite ((UINT64) ACPI_X_WAKE_STATUS, &AcpiGbl_FADT.SleepStatus);
    AcpiGbl_SystemAwakeAndRunning = TRUE;

    AcpiHwExecuteSleepMethod (METHOD_PATHNAME__SST, ACPI_SST_WORKING);
    return_ACPI_STATUS (AE_OK);
}
