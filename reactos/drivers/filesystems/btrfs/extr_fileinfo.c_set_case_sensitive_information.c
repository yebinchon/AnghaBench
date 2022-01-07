
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int atts; int case_sensitive; TYPE_3__* Vcb; } ;
typedef TYPE_5__ fcb ;
struct TYPE_22__ {int Flags; } ;
struct TYPE_21__ {TYPE_5__* FsContext; } ;
struct TYPE_14__ {int InputBufferLength; } ;
struct TYPE_15__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_20__ {TYPE_8__* FileObject; TYPE_2__ Parameters; } ;
struct TYPE_17__ {scalar_t__ SystemBuffer; } ;
struct TYPE_19__ {TYPE_4__ AssociatedIrp; } ;
struct TYPE_16__ {int tree_lock; } ;
typedef TYPE_6__* PIRP ;
typedef TYPE_7__* PIO_STACK_LOCATION ;
typedef TYPE_8__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef TYPE_9__ FILE_CASE_SENSITIVE_INFORMATION ;


 int ExAcquireResourceSharedLite (int *,int) ;
 int ExReleaseResourceLite (int *) ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_CS_FLAG_CASE_SENSITIVE_DIR ;
 TYPE_7__* IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int WARN (char*) ;
 int mark_fcb_dirty (TYPE_5__*) ;

__attribute__((used)) static NTSTATUS set_case_sensitive_information(PIRP Irp) {
    FILE_CASE_SENSITIVE_INFORMATION* fcsi = (FILE_CASE_SENSITIVE_INFORMATION*)Irp->AssociatedIrp.SystemBuffer;
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);

    if (IrpSp->Parameters.FileSystemControl.InputBufferLength < sizeof(FILE_CASE_SENSITIVE_INFORMATION))
        return STATUS_INFO_LENGTH_MISMATCH;

    PFILE_OBJECT FileObject = IrpSp->FileObject;

    if (!FileObject)
        return STATUS_INVALID_PARAMETER;

    fcb* fcb = FileObject->FsContext;

    if (!fcb)
        return STATUS_INVALID_PARAMETER;

    if (!(fcb->atts & FILE_ATTRIBUTE_DIRECTORY)) {
        WARN("cannot set case-sensitive flag on anything other than directory\n");
        return STATUS_INVALID_PARAMETER;
    }

    ExAcquireResourceSharedLite(&fcb->Vcb->tree_lock, 1);

    fcb->case_sensitive = fcsi->Flags & FILE_CS_FLAG_CASE_SENSITIVE_DIR;
    mark_fcb_dirty(fcb);

    ExReleaseResourceLite(&fcb->Vcb->tree_lock);

    return STATUS_SUCCESS;
}
