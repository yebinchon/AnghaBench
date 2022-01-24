#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_27__ {TYPE_6__* FsContext; } ;
struct TYPE_20__ {int FileInformationClass; scalar_t__ Length; } ;
struct TYPE_21__ {TYPE_2__ QueryFile; } ;
struct TYPE_26__ {TYPE_3__ Parameters; int /*<<< orphan*/  Flags; } ;
struct TYPE_22__ {scalar_t__ Information; } ;
struct TYPE_19__ {int /*<<< orphan*/  SystemBuffer; } ;
struct TYPE_25__ {TYPE_4__ IoStatus; int /*<<< orphan*/  Flags; TYPE_1__ AssociatedIrp; } ;
struct TYPE_24__ {int /*<<< orphan*/  MainResource; } ;
struct TYPE_23__ {int /*<<< orphan*/  Flags; TYPE_9__* FileObject; TYPE_11__* DeviceObject; TYPE_8__* Stack; TYPE_7__* Irp; } ;
struct TYPE_18__ {int /*<<< orphan*/  DeviceExtension; } ;
struct TYPE_17__ {int /*<<< orphan*/  EndOfFile; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_5__* PNTFS_IRP_CONTEXT ;
typedef  TYPE_6__* PNTFS_FCB ;
typedef  TYPE_7__* PIRP ;
typedef  TYPE_8__* PIO_STACK_LOCATION ;
typedef  TYPE_9__* PFILE_OBJECT ;
typedef  TYPE_10__* PFILE_END_OF_FILE_INFORMATION ;
typedef  TYPE_11__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int FILE_INFORMATION_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  FileAllocationInformation 129 
#define  FileEndOfFileInformation 128 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  IRPCONTEXT_CANWAIT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SL_CASE_SENSITIVE ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 

NTSTATUS
FUNC9(PNTFS_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PIO_STACK_LOCATION Stack;
    PDEVICE_EXTENSION DeviceExt;
    PFILE_OBJECT FileObject;
    PNTFS_FCB Fcb;
    PVOID SystemBuffer;
    ULONG BufferLength;
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;
    NTSTATUS Status = STATUS_NOT_IMPLEMENTED;

    FUNC1("NtfsSetInformation(%p)\n", IrpContext);

    Irp = IrpContext->Irp;
    Stack = IrpContext->Stack;
    DeviceObject = IrpContext->DeviceObject;
    DeviceExt = DeviceObject->DeviceExtension;
    FileInformationClass = Stack->Parameters.QueryFile.FileInformationClass;
    FileObject = IrpContext->FileObject;
    Fcb = FileObject->FsContext;

    SystemBuffer = Irp->AssociatedIrp.SystemBuffer;
    BufferLength = Stack->Parameters.QueryFile.Length;

    if (!FUNC3(&Fcb->MainResource,
                                     FUNC0(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        return FUNC7(IrpContext);
    }

    switch (FileInformationClass)
    {
        PFILE_END_OF_FILE_INFORMATION EndOfFileInfo;

        /* TODO: Allocation size is not actually the same as file end for NTFS, 
           however, few applications are likely to make the distinction. */
        case FileAllocationInformation: 
            FUNC2("FIXME: Using hacky method of setting FileAllocationInformation.\n");
        case FileEndOfFileInformation:
            EndOfFileInfo = (PFILE_END_OF_FILE_INFORMATION)SystemBuffer;
            Status = FUNC8(Fcb,
                                      FileObject,
                                      DeviceExt,
                                      Irp->Flags,
                                      FUNC0(Stack->Flags, SL_CASE_SENSITIVE),
                                      &EndOfFileInfo->EndOfFile);
            break;
            
        // TODO: all other information classes

        default:
            FUNC2("FIXME: Unimplemented information class: %s\n", FUNC5(FileInformationClass));
            Status = STATUS_NOT_IMPLEMENTED;
    }

    FUNC4(&Fcb->MainResource);

    if (FUNC6(Status))
        Irp->IoStatus.Information =
        Stack->Parameters.QueryFile.Length - BufferLength;
    else
        Irp->IoStatus.Information = 0;

    return Status;
}