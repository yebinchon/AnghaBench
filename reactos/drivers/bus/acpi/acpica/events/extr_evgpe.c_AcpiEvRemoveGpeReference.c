
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int RuntimeCount; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_EVENT_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISABLE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_LIMIT ;
 int AE_OK ;
 int AcpiEvUpdateGpeEnableMask (TYPE_1__*) ;
 int AcpiHwLowSetGpe (TYPE_1__*,int ) ;
 int EvRemoveGpeReference ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvRemoveGpeReference (
    ACPI_GPE_EVENT_INFO *GpeEventInfo)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (EvRemoveGpeReference);


    if (!GpeEventInfo->RuntimeCount)
    {
        return_ACPI_STATUS (AE_LIMIT);
    }

    GpeEventInfo->RuntimeCount--;
    if (!GpeEventInfo->RuntimeCount)
    {


        Status = AcpiEvUpdateGpeEnableMask (GpeEventInfo);
        if (ACPI_SUCCESS (Status))
        {
            Status = AcpiHwLowSetGpe (GpeEventInfo, ACPI_GPE_DISABLE);
        }

        if (ACPI_FAILURE (Status))
        {
            GpeEventInfo->RuntimeCount++;
        }
    }

    return_ACPI_STATUS (Status);
}
