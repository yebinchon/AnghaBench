#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  file_ref ;
struct TYPE_22__ {int /*<<< orphan*/ * Resource; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_4__* Vcb; TYPE_3__ Header; } ;
typedef  TYPE_5__ fcb ;
struct TYPE_25__ {int /*<<< orphan*/  DirNotifyList; int /*<<< orphan*/  NotifySync; } ;
typedef  TYPE_6__ device_extension ;
struct TYPE_19__ {scalar_t__ Length; scalar_t__ MaximumLength; int /*<<< orphan*/  Buffer; } ;
struct TYPE_26__ {int access; TYPE_13__ filename; int /*<<< orphan*/ * fileref; } ;
typedef  TYPE_7__ ccb ;
typedef  scalar_t__ ULONG ;
struct TYPE_20__ {int /*<<< orphan*/  CompletionFilter; } ;
struct TYPE_21__ {TYPE_1__ NotifyDirectory; } ;
struct TYPE_28__ {int Flags; TYPE_2__ Parameters; TYPE_10__* FileObject; } ;
struct TYPE_27__ {scalar_t__ RequestorMode; } ;
struct TYPE_23__ {int /*<<< orphan*/  tree_lock; } ;
struct TYPE_18__ {TYPE_7__* FsContext2; TYPE_5__* FsContext; } ;
typedef  int /*<<< orphan*/  PSTRING ;
typedef  TYPE_8__* PIRP ;
typedef  TYPE_9__* PIO_STACK_LOCATION ;
typedef  TYPE_10__* PFILE_OBJECT ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 scalar_t__ BTRFS_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FILE_LIST_DIRECTORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  PagedPool ; 
 int SL_WATCH_TREE ; 
 scalar_t__ STATUS_ACCESS_DENIED ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_PENDING ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ UserMode ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_13__*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static NTSTATUS FUNC11(device_extension* Vcb, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = FUNC6(Irp);
    PFILE_OBJECT FileObject = IrpSp->FileObject;
    fcb* fcb = FileObject->FsContext;
    ccb* ccb = FileObject->FsContext2;
    file_ref* fileref = ccb ? ccb->fileref : NULL;
    NTSTATUS Status;

    FUNC8("IRP_MN_NOTIFY_CHANGE_DIRECTORY\n");

    if (!ccb) {
        FUNC0("ccb was NULL\n");
        return STATUS_INVALID_PARAMETER;
    }

    if (!fileref) {
        FUNC0("no fileref\n");
        return STATUS_INVALID_PARAMETER;
    }

    if (Irp->RequestorMode == UserMode && !(ccb->access & FILE_LIST_DIRECTORY)) {
        FUNC9("insufficient privileges\n");
        return STATUS_ACCESS_DENIED;
    }

    FUNC2(&fcb->Vcb->tree_lock, true);
    FUNC1(fcb->Header.Resource, true);

    if (fcb->type != BTRFS_TYPE_DIRECTORY) {
        Status = STATUS_INVALID_PARAMETER;
        goto end;
    }

    // FIXME - raise exception if FCB marked for deletion?

    FUNC8("FileObject %p\n", FileObject);

    if (ccb->filename.Length == 0) {
        ULONG reqlen;

        ccb->filename.MaximumLength = ccb->filename.Length = 0;

        Status = FUNC10(fileref, &ccb->filename, NULL, &reqlen);
        if (Status == STATUS_BUFFER_OVERFLOW) {
            ccb->filename.Buffer = FUNC3(PagedPool, reqlen, ALLOC_TAG);
            if (!ccb->filename.Buffer) {
                FUNC0("out of memory\n");
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto end;
            }

            ccb->filename.MaximumLength = (uint16_t)reqlen;

            Status = FUNC10(fileref, &ccb->filename, NULL, &reqlen);
            if (!FUNC7(Status)) {
                FUNC0("fileref_get_filename returned %08x\n", Status);
                goto end;
            }
        } else {
            FUNC0("fileref_get_filename returned %08x\n", Status);
            goto end;
        }
    }

    FUNC5(Vcb->NotifySync, &Vcb->DirNotifyList, FileObject->FsContext2, (PSTRING)&ccb->filename,
                                     IrpSp->Flags & SL_WATCH_TREE, false, IrpSp->Parameters.NotifyDirectory.CompletionFilter, Irp,
                                     NULL, NULL, NULL);

    Status = STATUS_PENDING;

end:
    FUNC4(fcb->Header.Resource);
    FUNC4(&fcb->Vcb->tree_lock);

    return Status;
}