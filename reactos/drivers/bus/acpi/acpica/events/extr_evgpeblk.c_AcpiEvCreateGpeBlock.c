
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
typedef void* UINT16 ;
struct TYPE_18__ {int SciInterrupt; } ;
struct TYPE_17__ {int GpeCount; int RegisterCount; int BlockBaseNumber; struct TYPE_17__* EventInfo; struct TYPE_17__* RegisterInfo; void* Initialized; TYPE_2__* Node; int SpaceId; int Address; } ;
struct TYPE_16__ {void* ExecuteByOwnerId; TYPE_2__* GpeDevice; TYPE_4__* GpeBlock; } ;
struct TYPE_14__ {int Ascii; } ;
struct TYPE_15__ {TYPE_1__ Name; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef TYPE_3__ ACPI_GPE_WALK_INFO ;
typedef TYPE_4__ ACPI_GPE_BLOCK_INFO ;


 TYPE_4__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_4__*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_REGISTER_WIDTH ;
 int ACPI_NS_WALK_NO_UNLOCK ;
 int ACPI_TYPE_METHOD ;
 int ACPI_UINT32_MAX ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiCurrentGpeCount ;
 int AcpiEvCreateGpeInfoBlocks (TYPE_4__*) ;
 int AcpiEvInstallGpeBlock (TYPE_4__*,int) ;
 int AcpiEvMatchGpeMethod ;
 void* AcpiGbl_AllGpesInitialized ;
 TYPE_7__ AcpiGbl_FADT ;
 int AcpiNsWalkNamespace (int ,TYPE_2__*,int ,int ,int ,int *,TYPE_3__*,int *) ;
 int EvCreateGpeBlock ;
 void* FALSE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvCreateGpeBlock (
    ACPI_NAMESPACE_NODE *GpeDevice,
    UINT64 Address,
    UINT8 SpaceId,
    UINT32 RegisterCount,
    UINT16 GpeBlockBaseNumber,
    UINT32 InterruptNumber,
    ACPI_GPE_BLOCK_INFO **ReturnGpeBlock)
{
    ACPI_STATUS Status;
    ACPI_GPE_BLOCK_INFO *GpeBlock;
    ACPI_GPE_WALK_INFO WalkInfo;


    ACPI_FUNCTION_TRACE (EvCreateGpeBlock);


    if (!RegisterCount)
    {
        return_ACPI_STATUS (AE_OK);
    }



    GpeBlock = ACPI_ALLOCATE_ZEROED (sizeof (ACPI_GPE_BLOCK_INFO));
    if (!GpeBlock)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    GpeBlock->Address = Address;
    GpeBlock->SpaceId = SpaceId;
    GpeBlock->Node = GpeDevice;
    GpeBlock->GpeCount = (UINT16) (RegisterCount * ACPI_GPE_REGISTER_WIDTH);
    GpeBlock->Initialized = FALSE;
    GpeBlock->RegisterCount = RegisterCount;
    GpeBlock->BlockBaseNumber = GpeBlockBaseNumber;





    Status = AcpiEvCreateGpeInfoBlocks (GpeBlock);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (GpeBlock);
        return_ACPI_STATUS (Status);
    }



    Status = AcpiEvInstallGpeBlock (GpeBlock, InterruptNumber);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (GpeBlock->RegisterInfo);
        ACPI_FREE (GpeBlock->EventInfo);
        ACPI_FREE (GpeBlock);
        return_ACPI_STATUS (Status);
    }

    AcpiGbl_AllGpesInitialized = FALSE;



    WalkInfo.GpeBlock = GpeBlock;
    WalkInfo.GpeDevice = GpeDevice;
    WalkInfo.ExecuteByOwnerId = FALSE;

    (void) AcpiNsWalkNamespace (ACPI_TYPE_METHOD, GpeDevice,
        ACPI_UINT32_MAX, ACPI_NS_WALK_NO_UNLOCK,
        AcpiEvMatchGpeMethod, ((void*)0), &WalkInfo, ((void*)0));



    if (ReturnGpeBlock)
    {
        (*ReturnGpeBlock) = GpeBlock;
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INIT,
        "    Initialized GPE %02X to %02X [%4.4s] %u regs on interrupt 0x%X%s\n",
        (UINT32) GpeBlock->BlockBaseNumber,
        (UINT32) (GpeBlock->BlockBaseNumber + (GpeBlock->GpeCount - 1)),
        GpeDevice->Name.Ascii, GpeBlock->RegisterCount, InterruptNumber,
        InterruptNumber == AcpiGbl_FADT.SciInterrupt ? " (SCI)" : ""));



    AcpiCurrentGpeCount += GpeBlock->GpeCount;
    return_ACPI_STATUS (AE_OK);
}
