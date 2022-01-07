
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef scalar_t__ uint16_t ;
typedef int file_ref ;
struct TYPE_22__ {int * Resource; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_4__* Vcb; TYPE_3__ Header; } ;
typedef TYPE_5__ fcb ;
struct TYPE_25__ {int DirNotifyList; int NotifySync; } ;
typedef TYPE_6__ device_extension ;
struct TYPE_19__ {scalar_t__ Length; scalar_t__ MaximumLength; int Buffer; } ;
struct TYPE_26__ {int access; TYPE_13__ filename; int * fileref; } ;
typedef TYPE_7__ ccb ;
typedef scalar_t__ ULONG ;
struct TYPE_20__ {int CompletionFilter; } ;
struct TYPE_21__ {TYPE_1__ NotifyDirectory; } ;
struct TYPE_28__ {int Flags; TYPE_2__ Parameters; TYPE_10__* FileObject; } ;
struct TYPE_27__ {scalar_t__ RequestorMode; } ;
struct TYPE_23__ {int tree_lock; } ;
struct TYPE_18__ {TYPE_7__* FsContext2; TYPE_5__* FsContext; } ;
typedef int PSTRING ;
typedef TYPE_8__* PIRP ;
typedef TYPE_9__* PIO_STACK_LOCATION ;
typedef TYPE_10__* PFILE_OBJECT ;
typedef scalar_t__ NTSTATUS ;


 int ALLOC_TAG ;
 scalar_t__ BTRFS_TYPE_DIRECTORY ;
 int ERR (char*,...) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 int ExAcquireResourceSharedLite (int *,int) ;
 int ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExReleaseResourceLite (int *) ;
 int FILE_LIST_DIRECTORY ;
 int FsRtlNotifyFilterChangeDirectory (int ,int *,TYPE_7__*,int ,int,int,int ,TYPE_8__*,int *,int *,int *) ;
 TYPE_9__* IoGetCurrentIrpStackLocation (TYPE_8__*) ;
 int NT_SUCCESS (scalar_t__) ;
 int PagedPool ;
 int SL_WATCH_TREE ;
 scalar_t__ STATUS_ACCESS_DENIED ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_PENDING ;
 int TRACE (char*,...) ;
 scalar_t__ UserMode ;
 int WARN (char*) ;
 scalar_t__ fileref_get_filename (int *,TYPE_13__*,int *,scalar_t__*) ;

__attribute__((used)) static NTSTATUS notify_change_directory(device_extension* Vcb, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    PFILE_OBJECT FileObject = IrpSp->FileObject;
    fcb* fcb = FileObject->FsContext;
    ccb* ccb = FileObject->FsContext2;
    file_ref* fileref = ccb ? ccb->fileref : ((void*)0);
    NTSTATUS Status;

    TRACE("IRP_MN_NOTIFY_CHANGE_DIRECTORY\n");

    if (!ccb) {
        ERR("ccb was NULL\n");
        return STATUS_INVALID_PARAMETER;
    }

    if (!fileref) {
        ERR("no fileref\n");
        return STATUS_INVALID_PARAMETER;
    }

    if (Irp->RequestorMode == UserMode && !(ccb->access & FILE_LIST_DIRECTORY)) {
        WARN("insufficient privileges\n");
        return STATUS_ACCESS_DENIED;
    }

    ExAcquireResourceSharedLite(&fcb->Vcb->tree_lock, 1);
    ExAcquireResourceExclusiveLite(fcb->Header.Resource, 1);

    if (fcb->type != BTRFS_TYPE_DIRECTORY) {
        Status = STATUS_INVALID_PARAMETER;
        goto end;
    }



    TRACE("FileObject %p\n", FileObject);

    if (ccb->filename.Length == 0) {
        ULONG reqlen;

        ccb->filename.MaximumLength = ccb->filename.Length = 0;

        Status = fileref_get_filename(fileref, &ccb->filename, ((void*)0), &reqlen);
        if (Status == STATUS_BUFFER_OVERFLOW) {
            ccb->filename.Buffer = ExAllocatePoolWithTag(PagedPool, reqlen, ALLOC_TAG);
            if (!ccb->filename.Buffer) {
                ERR("out of memory\n");
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto end;
            }

            ccb->filename.MaximumLength = (uint16_t)reqlen;

            Status = fileref_get_filename(fileref, &ccb->filename, ((void*)0), &reqlen);
            if (!NT_SUCCESS(Status)) {
                ERR("fileref_get_filename returned %08x\n", Status);
                goto end;
            }
        } else {
            ERR("fileref_get_filename returned %08x\n", Status);
            goto end;
        }
    }

    FsRtlNotifyFilterChangeDirectory(Vcb->NotifySync, &Vcb->DirNotifyList, FileObject->FsContext2, (PSTRING)&ccb->filename,
                                     IrpSp->Flags & SL_WATCH_TREE, 0, IrpSp->Parameters.NotifyDirectory.CompletionFilter, Irp,
                                     ((void*)0), ((void*)0), ((void*)0));

    Status = STATUS_PENDING;

end:
    ExReleaseResourceLite(fcb->Header.Resource);
    ExReleaseResourceLite(&fcb->Vcb->tree_lock);

    return Status;
}
