#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_36__ {TYPE_6__* FsContext; } ;
struct TYPE_29__ {int FileInformationClass; scalar_t__ Length; } ;
struct TYPE_30__ {TYPE_2__ QueryFile; } ;
struct TYPE_35__ {TYPE_3__ Parameters; } ;
struct TYPE_31__ {scalar_t__ Information; } ;
struct TYPE_28__ {int /*<<< orphan*/  SystemBuffer; } ;
struct TYPE_34__ {TYPE_4__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_33__ {int /*<<< orphan*/  MainResource; } ;
struct TYPE_32__ {int /*<<< orphan*/  Flags; TYPE_9__* FileObject; TYPE_10__* DeviceObject; TYPE_8__* Stack; TYPE_7__* Irp; } ;
struct TYPE_27__ {int /*<<< orphan*/  DeviceExtension; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_5__* PNTFS_IRP_CONTEXT ;
typedef  TYPE_6__* PNTFS_FCB ;
typedef  TYPE_7__* PIRP ;
typedef  TYPE_8__* PIO_STACK_LOCATION ;
typedef  TYPE_9__* PFILE_OBJECT ;
typedef  TYPE_10__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int FILE_INFORMATION_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
#define  FileAllInformation 136 
#define  FileAlternateNameInformation 135 
#define  FileBasicInformation 134 
#define  FileInternalInformation 133 
#define  FileNameInformation 132 
#define  FileNetworkOpenInformation 131 
#define  FilePositionInformation 130 
#define  FileStandardInformation 129 
#define  FileStreamInformation 128 
 TYPE_5__* FUNC4 (int) ; 
 int /*<<< orphan*/  IRPCONTEXT_CANWAIT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,TYPE_6__*,TYPE_10__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,TYPE_6__*,TYPE_10__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_10__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC14(PNTFS_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PIO_STACK_LOCATION Stack;
    PFILE_OBJECT FileObject;
    PNTFS_FCB Fcb;
    PVOID SystemBuffer;
    ULONG BufferLength;
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;
    NTSTATUS Status = STATUS_SUCCESS;

    FUNC1("NtfsQueryInformation(%p)\n", IrpContext);

    Irp = IrpContext->Irp;
    Stack = IrpContext->Stack;
    DeviceObject = IrpContext->DeviceObject;
    FileInformationClass = Stack->Parameters.QueryFile.FileInformationClass;
    FileObject = IrpContext->FileObject;
    Fcb = FileObject->FsContext;

    SystemBuffer = Irp->AssociatedIrp.SystemBuffer;
    BufferLength = Stack->Parameters.QueryFile.Length;

    if (!FUNC2(&Fcb->MainResource,
                                     FUNC0(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        return FUNC13(IrpContext);
    }

    switch (FileInformationClass)
    {
        case FileStandardInformation:
            Status = FUNC11(Fcb,
                                                DeviceObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case FilePositionInformation:
            Status = FUNC10(FileObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case FileBasicInformation:
            Status = FUNC6(FileObject,
                                             Fcb,
                                             DeviceObject,
                                             SystemBuffer,
                                             &BufferLength);
            break;

        case FileNameInformation:
            Status = FUNC8(FileObject,
                                            Fcb,
                                            DeviceObject,
                                            SystemBuffer,
                                            &BufferLength);
            break;

        case FileInternalInformation:
            Status = FUNC7(Fcb,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case FileNetworkOpenInformation:
            Status = FUNC9(Fcb,
                                                   DeviceObject->DeviceExtension,
                                                   SystemBuffer,
                                                   &BufferLength);
            break;

        case FileStreamInformation:
            Status = FUNC12(Fcb,
                                             DeviceObject->DeviceExtension,
                                             SystemBuffer,
                                             &BufferLength);
            break;

        case FileAlternateNameInformation:
        case FileAllInformation:
            FUNC1("Unimplemented information class: %s\n", FUNC4(FileInformationClass));
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        default:
            FUNC1("Unimplemented information class: %s\n", FUNC4(FileInformationClass));
            Status = STATUS_INVALID_PARAMETER;
    }

    FUNC3(&Fcb->MainResource);

    if (FUNC5(Status))
        Irp->IoStatus.Information =
            Stack->Parameters.QueryFile.Length - BufferLength;
    else
        Irp->IoStatus.Information = 0;

    return Status;
}