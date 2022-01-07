
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
struct TYPE_2__ {int SleepControl; } ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_STATE_S0 ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_X_SLEEP_ENABLE ;
 int ACPI_X_SLEEP_TYPE_MASK ;
 int ACPI_X_SLEEP_TYPE_POSITION ;
 int AE_OK ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiGbl_SleepTypeA ;
 int AcpiGbl_SleepTypeB ;
 int AcpiGetSleepTypeData (int ,int*,int *) ;
 int AcpiWrite (int ,int *) ;
 int HwExtendedWakePrep ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwExtendedWakePrep (
    UINT8 SleepState)
{
    ACPI_STATUS Status;
    UINT8 SleepTypeValue;


    ACPI_FUNCTION_TRACE (HwExtendedWakePrep);


    Status = AcpiGetSleepTypeData (ACPI_STATE_S0,
        &AcpiGbl_SleepTypeA, &AcpiGbl_SleepTypeB);
    if (ACPI_SUCCESS (Status))
    {
        SleepTypeValue = ((AcpiGbl_SleepTypeA << ACPI_X_SLEEP_TYPE_POSITION) &
            ACPI_X_SLEEP_TYPE_MASK);

        (void) AcpiWrite ((UINT64) (SleepTypeValue | ACPI_X_SLEEP_ENABLE),
            &AcpiGbl_FADT.SleepControl);
    }

    return_ACPI_STATUS (AE_OK);
}
