#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_24__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG ;
struct TYPE_28__ {int /*<<< orphan*/  FixedMedia; } ;
struct TYPE_33__ {int /*<<< orphan*/  StorageDevice; TYPE_2__ FatInfo; } ;
struct TYPE_32__ {TYPE_1__* RelatedFileObject; } ;
struct TYPE_29__ {int Length; int* Buffer; } ;
struct TYPE_31__ {scalar_t__ Flags; int /*<<< orphan*/  PathNameU; TYPE_4__* CloseContext; TYPE_3__ LongNameU; } ;
struct TYPE_30__ {int /*<<< orphan*/  CloseListEntry; } ;
struct TYPE_27__ {int /*<<< orphan*/  CloseContextLookasideList; int /*<<< orphan*/  CloseMutex; int /*<<< orphan*/  CloseCount; } ;
struct TYPE_26__ {TYPE_5__* FsContext; int /*<<< orphan*/  FileName; } ;
typedef  TYPE_4__* PVFAT_CLOSE_CONTEXT ;
typedef  TYPE_5__* PVFATFCB ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  TYPE_6__* PFILE_OBJECT ;
typedef  TYPE_7__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FCB_DELAYED_CLOSE ; 
 scalar_t__ FCB_DELETE_PENDING ; 
 scalar_t__ FILE_DELETE_ON_CLOSE ; 
 scalar_t__ FILE_DIRECTORY_FILE ; 
 scalar_t__ FILE_OVERWRITE ; 
 scalar_t__ FILE_OVERWRITE_IF ; 
 scalar_t__ FILE_SUPERSEDE ; 
 int /*<<< orphan*/  IOCTL_DISK_CHECK_VERIFY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_CANNOT_DELETE ; 
 int /*<<< orphan*/  STATUS_DELETE_PENDING ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_COLLISION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_24__* VfatGlobalData ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*) ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,TYPE_5__**,TYPE_5__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,TYPE_5__*) ; 

__attribute__((used)) static
NTSTATUS
FUNC17(
    PDEVICE_EXTENSION DeviceExt,
    PUNICODE_STRING PathNameU,
    PFILE_OBJECT FileObject,
    ULONG RequestedDisposition,
    ULONG RequestedOptions,
    PVFATFCB *ParentFcb)
{
    PVFATFCB Fcb;
    NTSTATUS Status;

    FUNC2("VfatOpenFile(%p, '%wZ', %p, %p)\n", DeviceExt, PathNameU, FileObject, ParentFcb);

    if (FileObject->RelatedFileObject)
    {
        FUNC2("'%wZ'\n", &FileObject->RelatedFileObject->FileName);

        *ParentFcb = FileObject->RelatedFileObject->FsContext;
    }
    else
    {
        *ParentFcb = NULL;
    }

    if (!DeviceExt->FatInfo.FixedMedia)
    {
        Status = FUNC9(DeviceExt->StorageDevice,
                                          IOCTL_DISK_CHECK_VERIFY,
                                          NULL,
                                          0,
                                          NULL,
                                          0,
                                          FALSE);
        if (!FUNC7(Status))
        {
            FUNC2("Status %lx\n", Status);
            *ParentFcb = NULL;
            return Status;
        }
    }

    if (*ParentFcb)
    {
        FUNC15(DeviceExt, *ParentFcb);
    }

    /*  try first to find an existing FCB in memory  */
    FUNC2("Checking for existing FCB in memory\n");

    Status = FUNC14(DeviceExt, ParentFcb, &Fcb, PathNameU);
    if (!FUNC7(Status))
    {
        FUNC2 ("Could not make a new FCB, status: %x\n", Status);
        return  Status;
    }

    /* Fail, if we try to overwrite an existing directory */
    if ((!FUNC0(RequestedOptions, FILE_DIRECTORY_FILE) && FUNC11(Fcb)) &&
        (RequestedDisposition == FILE_OVERWRITE ||
         RequestedDisposition == FILE_OVERWRITE_IF ||
         RequestedDisposition == FILE_SUPERSEDE))
    {
        FUNC16(DeviceExt, Fcb);
        return STATUS_OBJECT_NAME_COLLISION;
    }

    if (FUNC0(Fcb->Flags, FCB_DELETE_PENDING))
    {
        FUNC16(DeviceExt, Fcb);
        return STATUS_DELETE_PENDING;
    }

    /* Fail, if we try to overwrite a read-only file */
    if (FUNC12(Fcb) &&
        (RequestedDisposition == FILE_OVERWRITE ||
         RequestedDisposition == FILE_OVERWRITE_IF))
    {
        FUNC16(DeviceExt, Fcb);
        return STATUS_ACCESS_DENIED;
    }

    if (FUNC12(Fcb) &&
        (RequestedOptions & FILE_DELETE_ON_CLOSE))
    {
        FUNC16(DeviceExt, Fcb);
        return STATUS_CANNOT_DELETE;
    }

    if ((FUNC13(Fcb) ||
         (Fcb->LongNameU.Length == sizeof(WCHAR) && Fcb->LongNameU.Buffer[0] == L'.') ||
         (Fcb->LongNameU.Length == 2 * sizeof(WCHAR) && Fcb->LongNameU.Buffer[0] == L'.' && Fcb->LongNameU.Buffer[1] == L'.')) &&
        FUNC0(RequestedOptions, FILE_DELETE_ON_CLOSE))
    {
        // we cannot delete a '.', '..' or the root directory
        FUNC16(DeviceExt, Fcb);
        return STATUS_CANNOT_DELETE;
    }

    /* If that one was marked for closing, remove it */
    if (FUNC0(Fcb->Flags, FCB_DELAYED_CLOSE))
    {
        BOOLEAN ConcurrentDeletion;
        PVFAT_CLOSE_CONTEXT CloseContext;

        /* Get the context */
        CloseContext = Fcb->CloseContext;
        /* Is someone already taking over? */
        if (CloseContext != NULL)
        {
            ConcurrentDeletion = FALSE;
            /* Lock list */
            FUNC3(&VfatGlobalData->CloseMutex);
            /* Check whether it was already removed, if not, do it */
            if (!FUNC6(&CloseContext->CloseListEntry))
            {
                FUNC8(&CloseContext->CloseListEntry);
                --VfatGlobalData->CloseCount;
                ConcurrentDeletion = TRUE;
            }
            FUNC5(&VfatGlobalData->CloseMutex);

            /* It's not delayed anymore! */
            FUNC1(Fcb->Flags, FCB_DELAYED_CLOSE);
            /* Release the extra reference (would have been removed by IRP_MJ_CLOSE) */
            FUNC16(DeviceExt, Fcb);
            Fcb->CloseContext = NULL;
            /* If no concurrent deletion, free work item */
            if (!ConcurrentDeletion)
            {
                FUNC4(&VfatGlobalData->CloseContextLookasideList, CloseContext);
            }
        }

        FUNC2("Reusing delayed close FCB for %wZ\n", &Fcb->PathNameU);
    }

    FUNC2("Attaching FCB to fileObject\n");
    Status = FUNC10(DeviceExt, Fcb, FileObject);
    if (!FUNC7(Status))
    {
        FUNC16(DeviceExt, Fcb);
    }
    return  Status;
}