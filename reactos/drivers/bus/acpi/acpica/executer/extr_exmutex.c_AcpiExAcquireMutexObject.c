
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_6__ {scalar_t__ ThreadId; int AcquisitionDepth; int * OwnerThread; scalar_t__ OriginalSyncLevel; int OsMutex; } ;
struct TYPE_7__ {TYPE_1__ Mutex; } ;
typedef scalar_t__ ACPI_THREAD_ID ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_2__*) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AcpiEvAcquireGlobalLock (int ) ;
 int AcpiExSystemWaitMutex (int ,int ) ;
 TYPE_2__* AcpiGbl_GlobalLockMutex ;
 int ExAcquireMutexObject ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExAcquireMutexObject (
    UINT16 Timeout,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_THREAD_ID ThreadId)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE_PTR (ExAcquireMutexObject, ObjDesc);


    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    if (ObjDesc->Mutex.ThreadId == ThreadId)
    {




        ObjDesc->Mutex.AcquisitionDepth++;
        return_ACPI_STATUS (AE_OK);
    }



    if (ObjDesc == AcpiGbl_GlobalLockMutex)
    {
        Status = AcpiEvAcquireGlobalLock (Timeout);
    }
    else
    {
        Status = AcpiExSystemWaitMutex (ObjDesc->Mutex.OsMutex, Timeout);
    }

    if (ACPI_FAILURE (Status))
    {


        return_ACPI_STATUS (Status);
    }



    ObjDesc->Mutex.ThreadId = ThreadId;
    ObjDesc->Mutex.AcquisitionDepth = 1;
    ObjDesc->Mutex.OriginalSyncLevel = 0;
    ObjDesc->Mutex.OwnerThread = ((void*)0);

    return_ACPI_STATUS (AE_OK);
}
