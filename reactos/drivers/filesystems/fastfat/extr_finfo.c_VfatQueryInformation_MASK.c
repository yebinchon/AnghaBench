#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_33__ {int /*<<< orphan*/  MainResource; int /*<<< orphan*/  Flags; } ;
struct TYPE_32__ {TYPE_6__* Irp; TYPE_4__* Stack; int /*<<< orphan*/  DeviceExt; TYPE_12__* FileObject; int /*<<< orphan*/  Flags; } ;
struct TYPE_30__ {scalar_t__ Information; } ;
struct TYPE_26__ {int /*<<< orphan*/  SystemBuffer; } ;
struct TYPE_31__ {TYPE_5__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_27__ {int FileInformationClass; scalar_t__ Length; } ;
struct TYPE_28__ {TYPE_2__ QueryFile; } ;
struct TYPE_29__ {TYPE_3__ Parameters; } ;
struct TYPE_25__ {scalar_t__ FsContext; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_7__* PVFAT_IRP_CONTEXT ;
typedef  TYPE_8__* PVFATFCB ;
typedef  scalar_t__ NTSTATUS ;
typedef  int FILE_INFORMATION_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FCB_IS_PAGE_FILE ; 
#define  FileAllInformation 136 
#define  FileAlternateNameInformation 135 
#define  FileBasicInformation 134 
#define  FileEaInformation 133 
 char** FileInformationClassNames ; 
#define  FileInternalInformation 132 
 int FileMaximumInformation ; 
#define  FileNameInformation 131 
#define  FileNetworkOpenInformation 130 
#define  FilePositionInformation 129 
#define  FileStandardInformation 128 
 int /*<<< orphan*/  IRPCONTEXT_CANWAIT ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_NOT_IMPLEMENTED ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC7 (TYPE_12__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (TYPE_12__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC9 (TYPE_12__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC10 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC11 (TYPE_12__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC12 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC13 (TYPE_12__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC14 (TYPE_8__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC15 (TYPE_7__*) ; 

NTSTATUS
FUNC16(
    PVFAT_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PVFATFCB FCB;

    NTSTATUS Status = STATUS_SUCCESS;
    PVOID SystemBuffer;
    ULONG BufferLength;

    /* PRECONDITION */
    FUNC0(IrpContext);

    /* INITIALIZATION */
    FileInformationClass = IrpContext->Stack->Parameters.QueryFile.FileInformationClass;
    FCB = (PVFATFCB) IrpContext->FileObject->FsContext;

    FUNC2("VfatQueryInformation is called for '%s'\n",
           FileInformationClass >= FileMaximumInformation - 1 ? "????" : FileInformationClassNames[FileInformationClass]);

    if (FCB == NULL)
    {
        FUNC3("IRP_MJ_QUERY_INFORMATION without FCB!\n");
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_INVALID_PARAMETER;
    }

    SystemBuffer = IrpContext->Irp->AssociatedIrp.SystemBuffer;
    BufferLength = IrpContext->Stack->Parameters.QueryFile.Length;

    if (!FUNC1(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        if (!FUNC4(&FCB->MainResource,
                                         FUNC1(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
        {
            return FUNC15(IrpContext);
        }
    }

    switch (FileInformationClass)
    {
        case FileStandardInformation:
            Status = FUNC14(FCB,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case FilePositionInformation:
            Status = FUNC13(IrpContext->FileObject,
                                                FCB,
                                                IrpContext->DeviceExt,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case FileBasicInformation:
            Status = FUNC8(IrpContext->FileObject,
                                             FCB,
                                             IrpContext->DeviceExt,
                                             SystemBuffer,
                                             &BufferLength);
            break;

        case FileNameInformation:
            Status = FUNC11(IrpContext->FileObject,
                                            FCB,
                                            IrpContext->DeviceExt,
                                            SystemBuffer,
                                            &BufferLength);
            break;

        case FileInternalInformation:
            Status = FUNC10(FCB,
                                                IrpContext->DeviceExt,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case FileNetworkOpenInformation:
            Status = FUNC12(FCB,
                                                   IrpContext->DeviceExt,
                                                   SystemBuffer,
                                                   &BufferLength);
            break;

        case FileAllInformation:
            Status = FUNC7(IrpContext->FileObject,
                                           FCB,
                                           IrpContext->DeviceExt,
                                           SystemBuffer,
                                           &BufferLength);
            break;

        case FileEaInformation:
            Status = FUNC9(IrpContext->FileObject,
                                          FCB,
                                          IrpContext->DeviceExt,
                                          SystemBuffer,
                                          &BufferLength);
            break;

        case FileAlternateNameInformation:
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        default:
            Status = STATUS_INVALID_PARAMETER;
    }

    if (!FUNC1(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        FUNC5(&FCB->MainResource);
    }

    if (FUNC6(Status) || Status == STATUS_BUFFER_OVERFLOW)
        IrpContext->Irp->IoStatus.Information =
            IrpContext->Stack->Parameters.QueryFile.Length - BufferLength;
    else
        IrpContext->Irp->IoStatus.Information = 0;

    return Status;
}