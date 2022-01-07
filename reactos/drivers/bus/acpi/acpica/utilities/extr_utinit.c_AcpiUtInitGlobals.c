
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_8__ {int * Handler; } ;
struct TYPE_7__ {scalar_t__ UseCount; int ThreadId; int * Mutex; } ;
struct TYPE_5__ {int Integer; } ;
struct TYPE_6__ {int * Object; int * Peer; int * Child; int * Parent; int Type; int DescriptorType; TYPE_1__ Name; } ;
typedef int ACPI_STATUS ;


 size_t ACPI_ADDRESS_RANGE_MAX ;
 int ACPI_CAST_PTR (int ,int ) ;
 int ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MUTEX_NOT_ACQUIRED ;
 size_t ACPI_NUM_FIXED_EVENTS ;
 size_t ACPI_NUM_MUTEX ;
 size_t ACPI_NUM_OWNERID_MASKS ;
 int ACPI_ROOT_NAME ;
 int ACPI_SIZE ;
 int ACPI_SIZE_MAX ;
 int ACPI_TYPE_DEVICE ;
 int AE_OK ;
 scalar_t__ AcpiCurrentGpeCount ;
 scalar_t__* AcpiFixedEventCount ;
 void* AcpiGbl_AcpiHardwarePresent ;
 int ** AcpiGbl_AddressRangeList ;
 void* AcpiGbl_AllGpesInitialized ;
 void* AcpiGbl_CmSingleStep ;
 int * AcpiGbl_DSDT ;
 int AcpiGbl_DebuggerConfiguration ;
 void* AcpiGbl_DisableMemTracking ;
 void* AcpiGbl_DisplayFinalMemStats ;
 void* AcpiGbl_EventsInitialized ;
 int * AcpiGbl_ExceptionHandler ;
 int * AcpiGbl_ExternalList ;
 int * AcpiGbl_GlobalEventHandler ;
 void* AcpiGbl_GlobalLockAcquired ;
 scalar_t__ AcpiGbl_GlobalLockHandle ;
 int * AcpiGbl_GlobalLockMutex ;
 void* AcpiGbl_GlobalLockPresent ;
 int * AcpiGbl_GlobalLockSemaphore ;
 TYPE_4__* AcpiGbl_GlobalNotify ;
 int ** AcpiGbl_GpeFadtBlocks ;
 int * AcpiGbl_GpeXruptListHead ;
 int * AcpiGbl_InitHandler ;
 int * AcpiGbl_InterfaceHandler ;
 scalar_t__ AcpiGbl_LastOwnerIdIndex ;
 int AcpiGbl_LowestStackPointer ;
 TYPE_3__* AcpiGbl_MutexInfo ;
 scalar_t__ AcpiGbl_NextOwnerIdOffset ;
 scalar_t__ AcpiGbl_NsLookupCount ;
 scalar_t__ AcpiGbl_NumExternalMethods ;
 int * AcpiGbl_OsiMutex ;
 int* AcpiGbl_OwnerIdMask ;
 scalar_t__ AcpiGbl_PsFindCount ;
 scalar_t__ AcpiGbl_ResolvedExternalMethods ;
 int * AcpiGbl_RootNode ;
 TYPE_2__ AcpiGbl_RootNodeStruct ;
 int * AcpiGbl_SciHandlerList ;
 void* AcpiGbl_Shutdown ;
 void* AcpiGbl_SystemAwakeAndRunning ;
 int * AcpiGbl_TableHandler ;
 scalar_t__ AcpiGpeCount ;
 scalar_t__ AcpiMethodCount ;
 scalar_t__ AcpiSciCount ;
 int AcpiUtCreateCaches () ;
 int DEBUGGER_THREADING ;
 void* FALSE ;
 void* TRUE ;
 int UtInitGlobals ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtInitGlobals (
    void)
{
    ACPI_STATUS Status;
    UINT32 i;


    ACPI_FUNCTION_TRACE (UtInitGlobals);




    Status = AcpiUtCreateCaches ();
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    for (i = 0; i < ACPI_ADDRESS_RANGE_MAX; i++)
    {
        AcpiGbl_AddressRangeList[i] = ((void*)0);
    }



    for (i = 0; i < ACPI_NUM_MUTEX; i++)
    {
        AcpiGbl_MutexInfo[i].Mutex = ((void*)0);
        AcpiGbl_MutexInfo[i].ThreadId = ACPI_MUTEX_NOT_ACQUIRED;
        AcpiGbl_MutexInfo[i].UseCount = 0;
    }

    for (i = 0; i < ACPI_NUM_OWNERID_MASKS; i++)
    {
        AcpiGbl_OwnerIdMask[i] = 0;
    }



    AcpiGbl_OwnerIdMask[ACPI_NUM_OWNERID_MASKS - 1] = 0x80000000;



    AcpiMethodCount = 0;
    AcpiSciCount = 0;
    AcpiGpeCount = 0;

    for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++)
    {
        AcpiFixedEventCount[i] = 0;
    }





    AcpiGbl_AllGpesInitialized = FALSE;
    AcpiGbl_GpeXruptListHead = ((void*)0);
    AcpiGbl_GpeFadtBlocks[0] = ((void*)0);
    AcpiGbl_GpeFadtBlocks[1] = ((void*)0);
    AcpiCurrentGpeCount = 0;

    AcpiGbl_GlobalEventHandler = ((void*)0);
    AcpiGbl_SciHandlerList = ((void*)0);





    AcpiGbl_GlobalNotify[0].Handler = ((void*)0);
    AcpiGbl_GlobalNotify[1].Handler = ((void*)0);
    AcpiGbl_ExceptionHandler = ((void*)0);
    AcpiGbl_InitHandler = ((void*)0);
    AcpiGbl_TableHandler = ((void*)0);
    AcpiGbl_InterfaceHandler = ((void*)0);



    AcpiGbl_GlobalLockSemaphore = ((void*)0);
    AcpiGbl_GlobalLockMutex = ((void*)0);
    AcpiGbl_GlobalLockAcquired = FALSE;
    AcpiGbl_GlobalLockHandle = 0;
    AcpiGbl_GlobalLockPresent = FALSE;



    AcpiGbl_DSDT = ((void*)0);
    AcpiGbl_CmSingleStep = FALSE;
    AcpiGbl_Shutdown = FALSE;
    AcpiGbl_NsLookupCount = 0;
    AcpiGbl_PsFindCount = 0;
    AcpiGbl_AcpiHardwarePresent = TRUE;
    AcpiGbl_LastOwnerIdIndex = 0;
    AcpiGbl_NextOwnerIdOffset = 0;
    AcpiGbl_DebuggerConfiguration = DEBUGGER_THREADING;
    AcpiGbl_OsiMutex = ((void*)0);



    AcpiGbl_EventsInitialized = FALSE;
    AcpiGbl_SystemAwakeAndRunning = TRUE;



    AcpiGbl_RootNode = ((void*)0);
    AcpiGbl_RootNodeStruct.Name.Integer = ACPI_ROOT_NAME;
    AcpiGbl_RootNodeStruct.DescriptorType = ACPI_DESC_TYPE_NAMED;
    AcpiGbl_RootNodeStruct.Type = ACPI_TYPE_DEVICE;
    AcpiGbl_RootNodeStruct.Parent = ((void*)0);
    AcpiGbl_RootNodeStruct.Child = ((void*)0);
    AcpiGbl_RootNodeStruct.Peer = ((void*)0);
    AcpiGbl_RootNodeStruct.Object = ((void*)0);
    return_ACPI_STATUS (AE_OK);
}
