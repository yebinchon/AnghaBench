
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int Ascii; } ;
struct TYPE_22__ {TYPE_4__ Name; } ;
struct TYPE_19__ {int InfoFlags; int ThreadCount; scalar_t__ Node; int OwnerId; scalar_t__ SyncLevel; TYPE_3__* Mutex; } ;
struct TYPE_21__ {TYPE_5__ Method; } ;
struct TYPE_20__ {TYPE_8__* MethodNode; TYPE_1__* Thread; } ;
struct TYPE_16__ {scalar_t__ ThreadId; int OsMutex; int OriginalSyncLevel; int AcquisitionDepth; } ;
struct TYPE_17__ {TYPE_2__ Mutex; } ;
struct TYPE_15__ {int CurrentSyncLevel; } ;
typedef TYPE_6__ ACPI_WALK_STATE ;
typedef TYPE_7__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_6__*) ;
 int ACPI_INFO (char*) ;
 int ACPI_METHOD_IGNORE_SYNC_LEVEL ;
 int ACPI_METHOD_MODIFIED_NAMESPACE ;
 int ACPI_METHOD_MODULE_LEVEL ;
 int ACPI_METHOD_SERIALIZED ;
 int ACPI_METHOD_SERIALIZED_PENDING ;
 int AE_INFO ;
 int AcpiDsMethodDataDeleteAll (TYPE_6__*) ;
 int AcpiExEnterInterpreter () ;
 int AcpiExExitInterpreter () ;
 int AcpiExStopTraceMethod (int *,TYPE_7__*,TYPE_6__*) ;
 int AcpiNsDeleteNamespaceByOwner (int ) ;
 int AcpiNsDeleteNamespaceSubtree (TYPE_8__*) ;
 int AcpiOsReleaseMutex (int ) ;
 int AcpiUtReleaseOwnerId (int *) ;
 int DsTerminateControlMethod ;
 int return_VOID ;

void
AcpiDsTerminateControlMethod (
    ACPI_OPERAND_OBJECT *MethodDesc,
    ACPI_WALK_STATE *WalkState)
{

    ACPI_FUNCTION_TRACE_PTR (DsTerminateControlMethod, WalkState);




    if (!MethodDesc)
    {
        return_VOID;
    }

    if (WalkState)
    {


        AcpiDsMethodDataDeleteAll (WalkState);
        if (!(MethodDesc->Method.InfoFlags & ACPI_METHOD_MODULE_LEVEL) &&
             (MethodDesc->Method.ThreadCount == 1))
        {


            (void) AcpiExExitInterpreter ();
            AcpiNsDeleteNamespaceSubtree (WalkState->MethodNode);
            (void) AcpiExEnterInterpreter ();
            if (MethodDesc->Method.InfoFlags & ACPI_METHOD_MODIFIED_NAMESPACE)
            {
                (void) AcpiExExitInterpreter ();
                AcpiNsDeleteNamespaceByOwner (MethodDesc->Method.OwnerId);
                (void) AcpiExEnterInterpreter ();
                MethodDesc->Method.InfoFlags &=
                    ~ACPI_METHOD_MODIFIED_NAMESPACE;
            }
        }





        if (MethodDesc->Method.Mutex)
        {


            MethodDesc->Method.Mutex->Mutex.AcquisitionDepth--;
            if (!MethodDesc->Method.Mutex->Mutex.AcquisitionDepth)
            {
                WalkState->Thread->CurrentSyncLevel =
                    MethodDesc->Method.Mutex->Mutex.OriginalSyncLevel;

                AcpiOsReleaseMutex (
                    MethodDesc->Method.Mutex->Mutex.OsMutex);
                MethodDesc->Method.Mutex->Mutex.ThreadId = 0;
            }
        }
    }



    if (MethodDesc->Method.ThreadCount)
    {
        MethodDesc->Method.ThreadCount--;
    }
    else
    {
        ACPI_ERROR ((AE_INFO,
            "Invalid zero thread count in method"));
    }



    if (MethodDesc->Method.ThreadCount)
    {




        ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
            "*** Completed execution of one thread, %u threads remaining\n",
            MethodDesc->Method.ThreadCount));
    }
    else
    {
        if (MethodDesc->Method.InfoFlags & ACPI_METHOD_SERIALIZED_PENDING)
        {
            if (WalkState)
            {
                ACPI_INFO ((
                    "Marking method %4.4s as Serialized "
                    "because of AE_ALREADY_EXISTS error",
                    WalkState->MethodNode->Name.Ascii));
            }
            MethodDesc->Method.InfoFlags &=
                ~ACPI_METHOD_SERIALIZED_PENDING;

            MethodDesc->Method.InfoFlags |=
                (ACPI_METHOD_SERIALIZED | ACPI_METHOD_IGNORE_SYNC_LEVEL);
            MethodDesc->Method.SyncLevel = 0;
        }



        if (!(MethodDesc->Method.InfoFlags & ACPI_METHOD_MODULE_LEVEL))
        {
            AcpiUtReleaseOwnerId (&MethodDesc->Method.OwnerId);
        }
    }

    AcpiExStopTraceMethod ((ACPI_NAMESPACE_NODE *) MethodDesc->Method.Node,
        MethodDesc, WalkState);

    return_VOID;
}
