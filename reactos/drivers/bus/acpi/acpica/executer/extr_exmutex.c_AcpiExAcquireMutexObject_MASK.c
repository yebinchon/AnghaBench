#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_6__ {scalar_t__ ThreadId; int AcquisitionDepth; int /*<<< orphan*/ * OwnerThread; scalar_t__ OriginalSyncLevel; int /*<<< orphan*/  OsMutex; } ;
struct TYPE_7__ {TYPE_1__ Mutex; } ;
typedef  scalar_t__ ACPI_THREAD_ID ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* AcpiGbl_GlobalLockMutex ; 
 int /*<<< orphan*/  ExAcquireMutexObject ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5 (
    UINT16                  Timeout,
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_THREAD_ID          ThreadId)
{
    ACPI_STATUS             Status;


    FUNC1 (ExAcquireMutexObject, ObjDesc);


    if (!ObjDesc)
    {
        FUNC4 (AE_BAD_PARAMETER);
    }

    /* Support for multiple acquires by the owning thread */

    if (ObjDesc->Mutex.ThreadId == ThreadId)
    {
        /*
         * The mutex is already owned by this thread, just increment the
         * acquisition depth
         */
        ObjDesc->Mutex.AcquisitionDepth++;
        FUNC4 (AE_OK);
    }

    /* Acquire the mutex, wait if necessary. Special case for Global Lock */

    if (ObjDesc == AcpiGbl_GlobalLockMutex)
    {
        Status = FUNC2 (Timeout);
    }
    else
    {
        Status = FUNC3 (ObjDesc->Mutex.OsMutex, Timeout);
    }

    if (FUNC0 (Status))
    {
        /* Includes failure from a timeout on TimeDesc */

        FUNC4 (Status);
    }

    /* Acquired the mutex: update mutex object */

    ObjDesc->Mutex.ThreadId = ThreadId;
    ObjDesc->Mutex.AcquisitionDepth = 1;
    ObjDesc->Mutex.OriginalSyncLevel = 0;
    ObjDesc->Mutex.OwnerThread = NULL;      /* Used only for AML Acquire() */

    FUNC4 (AE_OK);
}