#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int atts; int case_sensitive; TYPE_3__* Vcb; } ;
typedef  TYPE_5__ fcb ;
struct TYPE_22__ {int Flags; } ;
struct TYPE_21__ {TYPE_5__* FsContext; } ;
struct TYPE_14__ {int InputBufferLength; } ;
struct TYPE_15__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_20__ {TYPE_8__* FileObject; TYPE_2__ Parameters; } ;
struct TYPE_17__ {scalar_t__ SystemBuffer; } ;
struct TYPE_19__ {TYPE_4__ AssociatedIrp; } ;
struct TYPE_16__ {int /*<<< orphan*/  tree_lock; } ;
typedef  TYPE_6__* PIRP ;
typedef  TYPE_7__* PIO_STACK_LOCATION ;
typedef  TYPE_8__* PFILE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_9__ FILE_CASE_SENSITIVE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_CS_FLAG_CASE_SENSITIVE_DIR ; 
 TYPE_7__* FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  STATUS_INFO_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static NTSTATUS FUNC5(PIRP Irp) {
    FILE_CASE_SENSITIVE_INFORMATION* fcsi = (FILE_CASE_SENSITIVE_INFORMATION*)Irp->AssociatedIrp.SystemBuffer;
    PIO_STACK_LOCATION IrpSp = FUNC2(Irp);

    if (IrpSp->Parameters.FileSystemControl.InputBufferLength < sizeof(FILE_CASE_SENSITIVE_INFORMATION))
        return STATUS_INFO_LENGTH_MISMATCH;

    PFILE_OBJECT FileObject = IrpSp->FileObject;

    if (!FileObject)
        return STATUS_INVALID_PARAMETER;

    fcb* fcb = FileObject->FsContext;

    if (!fcb)
        return STATUS_INVALID_PARAMETER;

    if (!(fcb->atts & FILE_ATTRIBUTE_DIRECTORY)) {
        FUNC3("cannot set case-sensitive flag on anything other than directory\n");
        return STATUS_INVALID_PARAMETER;
    }

    FUNC0(&fcb->Vcb->tree_lock, true);

    fcb->case_sensitive = fcsi->Flags & FILE_CS_FLAG_CASE_SENSITIVE_DIR;
    FUNC4(fcb);

    FUNC1(&fcb->Vcb->tree_lock);

    return STATUS_SUCCESS;
}