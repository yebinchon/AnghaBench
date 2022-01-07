
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_5__ {size_t RegisterCount; TYPE_1__* RegisterInfo; } ;
struct TYPE_4__ {int StatusAddress; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_GPE_XRUPT_INFO ;
typedef TYPE_2__ ACPI_GPE_BLOCK_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiHwWrite (int,int *) ;

ACPI_STATUS
AcpiHwClearGpeBlock (
    ACPI_GPE_XRUPT_INFO *GpeXruptInfo,
    ACPI_GPE_BLOCK_INFO *GpeBlock,
    void *Context)
{
    UINT32 i;
    ACPI_STATUS Status;




    for (i = 0; i < GpeBlock->RegisterCount; i++)
    {


        Status = AcpiHwWrite (0xFF, &GpeBlock->RegisterInfo[i].StatusAddress);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
    }

    return (AE_OK);
}
