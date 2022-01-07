
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_3__ {size_t RegisterCount; int * RegisterInfo; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_GPE_XRUPT_INFO ;
typedef TYPE_1__ ACPI_GPE_BLOCK_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiHwGpeEnableWrite (int,int *) ;

ACPI_STATUS
AcpiHwDisableGpeBlock (
    ACPI_GPE_XRUPT_INFO *GpeXruptInfo,
    ACPI_GPE_BLOCK_INFO *GpeBlock,
    void *Context)
{
    UINT32 i;
    ACPI_STATUS Status;




    for (i = 0; i < GpeBlock->RegisterCount; i++)
    {


        Status = AcpiHwGpeEnableWrite (0x00, &GpeBlock->RegisterInfo[i]);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
    }

    return (AE_OK);
}
