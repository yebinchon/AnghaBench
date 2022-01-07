
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_6__ {size_t RegisterCount; TYPE_1__* RegisterInfo; } ;
struct TYPE_5__ {int EnableForRun; int MaskForRun; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_GPE_XRUPT_INFO ;
typedef TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef TYPE_2__ ACPI_GPE_BLOCK_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiHwGpeEnableWrite (int,TYPE_1__*) ;

ACPI_STATUS
AcpiHwEnableRuntimeGpeBlock (
    ACPI_GPE_XRUPT_INFO *GpeXruptInfo,
    ACPI_GPE_BLOCK_INFO *GpeBlock,
    void *Context)
{
    UINT32 i;
    ACPI_STATUS Status;
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    UINT8 EnableMask;






    for (i = 0; i < GpeBlock->RegisterCount; i++)
    {
        GpeRegisterInfo = &GpeBlock->RegisterInfo[i];
        if (!GpeRegisterInfo->EnableForRun)
        {
            continue;
        }



        EnableMask = GpeRegisterInfo->EnableForRun &
            ~GpeRegisterInfo->MaskForRun;
        Status = AcpiHwGpeEnableWrite (EnableMask, GpeRegisterInfo);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
    }

    return (AE_OK);
}
