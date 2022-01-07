
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_15__ {scalar_t__ SyncLevel; int AcquisitionDepth; int Node; TYPE_6__* OwnerThread; } ;
struct TYPE_18__ {TYPE_4__ Mutex; } ;
struct TYPE_17__ {scalar_t__ ThreadId; scalar_t__ CurrentSyncLevel; TYPE_2__* AcquiredMutexList; } ;
struct TYPE_16__ {TYPE_3__* Thread; } ;
struct TYPE_14__ {scalar_t__ ThreadId; int CurrentSyncLevel; } ;
struct TYPE_12__ {scalar_t__ OriginalSyncLevel; } ;
struct TYPE_13__ {TYPE_1__ Mutex; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef TYPE_6__ ACPI_THREAD_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_MUTEX_NOT_ACQUIRED ;
 int AE_AML_MUTEX_ORDER ;
 int AE_AML_NOT_OWNER ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiExReleaseMutexObject (TYPE_7__*) ;
 TYPE_7__* AcpiGbl_GlobalLockMutex ;
 int AcpiUtGetNodeName (int ) ;
 int ExReleaseMutex ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExReleaseMutex (
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{
    UINT8 PreviousSyncLevel;
    ACPI_THREAD_STATE *OwnerThread;
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (ExReleaseMutex);


    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }

    OwnerThread = ObjDesc->Mutex.OwnerThread;



    if (!OwnerThread)
    {
        ACPI_ERROR ((AE_INFO,
            "Cannot release Mutex [%4.4s], not acquired",
            AcpiUtGetNodeName (ObjDesc->Mutex.Node)));
        return_ACPI_STATUS (AE_AML_MUTEX_NOT_ACQUIRED);
    }



    if (!WalkState->Thread)
    {
        ACPI_ERROR ((AE_INFO,
            "Cannot release Mutex [%4.4s], null thread info",
            AcpiUtGetNodeName (ObjDesc->Mutex.Node)));
        return_ACPI_STATUS (AE_AML_INTERNAL);
    }





    if ((OwnerThread->ThreadId != WalkState->Thread->ThreadId) &&
        (ObjDesc != AcpiGbl_GlobalLockMutex))
    {
        ACPI_ERROR ((AE_INFO,
            "Thread %u cannot release Mutex [%4.4s] acquired by thread %u",
            (UINT32) WalkState->Thread->ThreadId,
            AcpiUtGetNodeName (ObjDesc->Mutex.Node),
            (UINT32) OwnerThread->ThreadId));
        return_ACPI_STATUS (AE_AML_NOT_OWNER);
    }
    if (ObjDesc->Mutex.SyncLevel != OwnerThread->CurrentSyncLevel)
    {
        ACPI_ERROR ((AE_INFO,
            "Cannot release Mutex [%4.4s], SyncLevel mismatch: "
            "mutex %u current %u",
            AcpiUtGetNodeName (ObjDesc->Mutex.Node),
            ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel));
        return_ACPI_STATUS (AE_AML_MUTEX_ORDER);
    }






    PreviousSyncLevel =
        OwnerThread->AcquiredMutexList->Mutex.OriginalSyncLevel;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Releasing: Object SyncLevel %u, Thread SyncLevel %u, "
        "Prev SyncLevel %u, Depth %u TID %p\n",
        ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel,
        PreviousSyncLevel, ObjDesc->Mutex.AcquisitionDepth,
        WalkState->Thread));

    Status = AcpiExReleaseMutexObject (ObjDesc);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    if (ObjDesc->Mutex.AcquisitionDepth == 0)
    {


        OwnerThread->CurrentSyncLevel = PreviousSyncLevel;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Released: Object SyncLevel %u, Thread SyncLevel, %u, "
        "Prev SyncLevel %u, Depth %u\n",
        ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel,
        PreviousSyncLevel, ObjDesc->Mutex.AcquisitionDepth));

    return_ACPI_STATUS (Status);
}
