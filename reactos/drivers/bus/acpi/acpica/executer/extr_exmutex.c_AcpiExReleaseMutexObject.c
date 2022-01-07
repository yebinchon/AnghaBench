
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ AcquisitionDepth; scalar_t__ ThreadId; int OsMutex; int * OwnerThread; } ;
struct TYPE_7__ {TYPE_1__ Mutex; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_NOT_ACQUIRED ;
 int AE_OK ;
 int AcpiEvReleaseGlobalLock () ;
 int AcpiExUnlinkMutex (TYPE_2__*) ;
 TYPE_2__* AcpiGbl_GlobalLockMutex ;
 int AcpiOsReleaseMutex (int ) ;
 int ExReleaseMutexObject ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExReleaseMutexObject (
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (ExReleaseMutexObject);


    if (ObjDesc->Mutex.AcquisitionDepth == 0)
    {
        return_ACPI_STATUS (AE_NOT_ACQUIRED);
    }



    ObjDesc->Mutex.AcquisitionDepth--;
    if (ObjDesc->Mutex.AcquisitionDepth != 0)
    {


        return_ACPI_STATUS (AE_OK);
    }

    if (ObjDesc->Mutex.OwnerThread)
    {


        AcpiExUnlinkMutex (ObjDesc);
        ObjDesc->Mutex.OwnerThread = ((void*)0);
    }



    if (ObjDesc == AcpiGbl_GlobalLockMutex)
    {
        Status = AcpiEvReleaseGlobalLock ();
    }
    else
    {
        AcpiOsReleaseMutex (ObjDesc->Mutex.OsMutex);
    }



    ObjDesc->Mutex.ThreadId = 0;
    return_ACPI_STATUS (Status);
}
