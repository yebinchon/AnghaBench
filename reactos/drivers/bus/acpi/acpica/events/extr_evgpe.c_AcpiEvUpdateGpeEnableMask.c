
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__ RuntimeCount; TYPE_1__* RegisterInfo; } ;
struct TYPE_5__ {int EnableForRun; int EnableMask; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef TYPE_2__ ACPI_GPE_EVENT_INFO ;


 int ACPI_CLEAR_BIT (int ,scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SET_BIT (int ,int ) ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 scalar_t__ AcpiHwGetGpeRegisterBit (TYPE_2__*) ;
 int EvUpdateGpeEnableMask ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvUpdateGpeEnableMask (
    ACPI_GPE_EVENT_INFO *GpeEventInfo)
{
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    UINT32 RegisterBit;


    ACPI_FUNCTION_TRACE (EvUpdateGpeEnableMask);


    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }

    RegisterBit = AcpiHwGetGpeRegisterBit (GpeEventInfo);



    ACPI_CLEAR_BIT (GpeRegisterInfo->EnableForRun, RegisterBit);



    if (GpeEventInfo->RuntimeCount)
    {
        ACPI_SET_BIT (GpeRegisterInfo->EnableForRun, (UINT8) RegisterBit);
    }

    GpeRegisterInfo->EnableMask = GpeRegisterInfo->EnableForRun;
    return_ACPI_STATUS (AE_OK);
}
