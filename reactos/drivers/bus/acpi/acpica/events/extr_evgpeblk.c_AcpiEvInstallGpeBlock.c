
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {TYPE_1__* XruptBlock; struct TYPE_6__* Previous; struct TYPE_6__* Next; } ;
struct TYPE_5__ {TYPE_2__* GpeBlockListHead; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_XRUPT_INFO ;
typedef TYPE_2__ ACPI_GPE_BLOCK_INFO ;
typedef int ACPI_CPU_FLAGS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_EVENTS ;
 int AcpiEvGetGpeXruptBlock (int ,TYPE_1__**) ;
 int AcpiGbl_GpeLock ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtReleaseMutex (int ) ;
 int EvInstallGpeBlock ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiEvInstallGpeBlock (
    ACPI_GPE_BLOCK_INFO *GpeBlock,
    UINT32 InterruptNumber)
{
    ACPI_GPE_BLOCK_INFO *NextGpeBlock;
    ACPI_GPE_XRUPT_INFO *GpeXruptBlock;
    ACPI_STATUS Status;
    ACPI_CPU_FLAGS Flags;


    ACPI_FUNCTION_TRACE (EvInstallGpeBlock);


    Status = AcpiUtAcquireMutex (ACPI_MTX_EVENTS);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiEvGetGpeXruptBlock (InterruptNumber, &GpeXruptBlock);
    if (ACPI_FAILURE (Status))
    {
        goto UnlockAndExit;
    }



    Flags = AcpiOsAcquireLock (AcpiGbl_GpeLock);
    if (GpeXruptBlock->GpeBlockListHead)
    {
        NextGpeBlock = GpeXruptBlock->GpeBlockListHead;
        while (NextGpeBlock->Next)
        {
            NextGpeBlock = NextGpeBlock->Next;
        }

        NextGpeBlock->Next = GpeBlock;
        GpeBlock->Previous = NextGpeBlock;
    }
    else
    {
        GpeXruptBlock->GpeBlockListHead = GpeBlock;
    }

    GpeBlock->XruptBlock = GpeXruptBlock;
    AcpiOsReleaseLock (AcpiGbl_GpeLock, Flags);


UnlockAndExit:
    (void) AcpiUtReleaseMutex (ACPI_MTX_EVENTS);
    return_ACPI_STATUS (Status);
}
