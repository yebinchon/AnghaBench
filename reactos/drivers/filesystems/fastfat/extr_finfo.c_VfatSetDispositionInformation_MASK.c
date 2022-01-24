#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_16__ {scalar_t__ BytesPerCluster; } ;
struct TYPE_21__ {TYPE_1__ FatInfo; } ;
struct TYPE_20__ {int /*<<< orphan*/  DeleteFile; } ;
struct TYPE_19__ {void* DeletePending; int /*<<< orphan*/  SectionObjectPointer; } ;
struct TYPE_17__ {int Length; int* Buffer; } ;
struct TYPE_18__ {int /*<<< orphan*/  Flags; TYPE_2__ LongNameU; int /*<<< orphan*/  PathNameU; } ;
typedef  TYPE_3__* PVFATFCB ;
typedef  TYPE_4__* PFILE_OBJECT ;
typedef  TYPE_5__* PFILE_DISPOSITION_INFORMATION ;
typedef  TYPE_6__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FCB_DELETE_PENDING ; 
 int /*<<< orphan*/  MmFlushForDelete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_CANNOT_DELETE ; 
 int /*<<< orphan*/  STATUS_DIRECTORY_NOT_EMPTY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static
NTSTATUS
FUNC8(
    PFILE_OBJECT FileObject,
    PVFATFCB FCB,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_DISPOSITION_INFORMATION DispositionInfo)
{
    FUNC2("FsdSetDispositionInformation(<%wZ>, Delete %u)\n", &FCB->PathNameU, DispositionInfo->DeleteFile);

    FUNC0(DeviceExt != NULL);
    FUNC0(DeviceExt->FatInfo.BytesPerCluster != 0);
    FUNC0(FCB != NULL);

    if (!DispositionInfo->DeleteFile)
    {
        /* undelete the file */
        FCB->Flags &= ~FCB_DELETE_PENDING;
        FileObject->DeletePending = FALSE;
        return STATUS_SUCCESS;
    }

    if (FUNC1(FCB->Flags, FCB_DELETE_PENDING))
    {
        /* stream already marked for deletion. just update the file object */
        FileObject->DeletePending = TRUE;
        return STATUS_SUCCESS;
    }

    if (FUNC6(FCB))
    {
        return STATUS_CANNOT_DELETE;
    }

    if (FUNC7(FCB) ||
        (FCB->LongNameU.Length == sizeof(WCHAR) && FCB->LongNameU.Buffer[0] == L'.') ||
        (FCB->LongNameU.Length == 2 * sizeof(WCHAR) && FCB->LongNameU.Buffer[0] == L'.' && FCB->LongNameU.Buffer[1] == L'.'))
    {
        /* we cannot delete a '.', '..' or the root directory */
        return STATUS_ACCESS_DENIED;
    }

    if (!FUNC3 (FileObject->SectionObjectPointer, MmFlushForDelete))
    {
        /* can't delete a file if its mapped into a process */

        FUNC2("MmFlushImageSection returned FALSE\n");
        return STATUS_CANNOT_DELETE;
    }

    if (FUNC5(FCB) && !FUNC4(DeviceExt, FCB))
    {
        /* can't delete a non-empty directory */

        return STATUS_DIRECTORY_NOT_EMPTY;
    }

    /* all good */
    FCB->Flags |= FCB_DELETE_PENDING;
    FileObject->DeletePending = TRUE;

    return STATUS_SUCCESS;
}