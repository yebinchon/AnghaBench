
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {TYPE_1__* RegisterInfo; } ;
struct TYPE_5__ {int StatusAddress; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef TYPE_2__ ACPI_GPE_EVENT_INFO ;


 int ACPI_FUNCTION_ENTRY () ;
 int AE_NOT_EXIST ;
 int AcpiHwGetGpeRegisterBit (TYPE_2__*) ;
 int AcpiHwWrite (int ,int *) ;

ACPI_STATUS
AcpiHwClearGpe (
    ACPI_GPE_EVENT_INFO *GpeEventInfo)
{
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    ACPI_STATUS Status;
    UINT32 RegisterBit;


    ACPI_FUNCTION_ENTRY ();



    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        return (AE_NOT_EXIST);
    }





    RegisterBit = AcpiHwGetGpeRegisterBit (GpeEventInfo);

    Status = AcpiHwWrite (RegisterBit, &GpeRegisterInfo->StatusAddress);
    return (Status);
}
