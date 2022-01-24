#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_11__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
struct TYPE_33__ {int /*<<< orphan*/  MainResource; int /*<<< orphan*/  Flags; } ;
struct TYPE_32__ {TYPE_7__* Irp; TYPE_5__* DeviceObject; TYPE_4__* Stack; int /*<<< orphan*/  DeviceExt; TYPE_11__* FileObject; int /*<<< orphan*/  Flags; } ;
struct TYPE_30__ {scalar_t__ Information; } ;
struct TYPE_25__ {scalar_t__ SystemBuffer; } ;
struct TYPE_31__ {TYPE_6__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_29__ {scalar_t__ DeviceExtension; } ;
struct TYPE_26__ {int FileInformationClass; int /*<<< orphan*/  FileObject; } ;
struct TYPE_27__ {TYPE_2__ SetFile; } ;
struct TYPE_28__ {TYPE_3__ Parameters; } ;
struct TYPE_24__ {int /*<<< orphan*/  SectionObjectPointer; scalar_t__ FsContext; } ;
struct TYPE_23__ {int /*<<< orphan*/  DirResource; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_8__* PVFAT_IRP_CONTEXT ;
typedef  TYPE_9__* PVFATFCB ;
typedef  int /*<<< orphan*/  PLARGE_INTEGER ;
typedef  TYPE_10__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int FILE_INFORMATION_CLASS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FCB_IS_PAGE_FILE ; 
#define  FileAllocationInformation 133 
#define  FileBasicInformation 132 
#define  FileDispositionInformation 131 
#define  FileEndOfFileInformation 130 
 char** FileInformationClassNames ; 
 int FileMaximumInformation ; 
#define  FilePositionInformation 129 
#define  FileRenameInformation 128 
 int /*<<< orphan*/  IRPCONTEXT_CANWAIT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_USER_MAPPED_FILE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_11__*,TYPE_9__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*,TYPE_9__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_11__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*,TYPE_9__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC13(
    PVFAT_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PVFATFCB FCB;
    NTSTATUS Status = STATUS_SUCCESS;
    PVOID SystemBuffer;
    BOOLEAN LockDir;

    /* PRECONDITION */
    FUNC0(IrpContext);

    FUNC2("VfatSetInformation(IrpContext %p)\n", IrpContext);

    /* INITIALIZATION */
    FileInformationClass =
        IrpContext->Stack->Parameters.SetFile.FileInformationClass;
    FCB = (PVFATFCB) IrpContext->FileObject->FsContext;
    SystemBuffer = IrpContext->Irp->AssociatedIrp.SystemBuffer;

    FUNC2("VfatSetInformation is called for '%s'\n",
           FileInformationClass >= FileMaximumInformation - 1 ? "????" : FileInformationClassNames[ FileInformationClass]);

    FUNC2("FileInformationClass %d\n", FileInformationClass);
    FUNC2("SystemBuffer %p\n", SystemBuffer);

    if (FCB == NULL)
    {
        FUNC3("IRP_MJ_SET_INFORMATION without FCB!\n");
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_INVALID_PARAMETER;
    }

    /* Special: We should call MmCanFileBeTruncated here to determine if changing
       the file size would be allowed.  If not, we bail with the right error.
       We must do this before acquiring the lock. */
    if (FileInformationClass == FileEndOfFileInformation)
    {
        FUNC2("Check for the ability to set file size\n");
        if (!FUNC6(IrpContext->FileObject->SectionObjectPointer,
                                  (PLARGE_INTEGER)SystemBuffer))
        {
            FUNC2("Couldn't set file size!\n");
            IrpContext->Irp->IoStatus.Information = 0;
            return STATUS_USER_MAPPED_FILE;
        }
        FUNC2("Can set file size\n");
    }

    LockDir = FALSE;
    if (FileInformationClass == FileRenameInformation || FileInformationClass == FileAllocationInformation ||
        FileInformationClass == FileEndOfFileInformation || FileInformationClass == FileBasicInformation)
    {
        LockDir = TRUE;
    }

    if (LockDir)
    {
        if (!FUNC4(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource,
                                            FUNC1(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
        {
            return FUNC7(IrpContext);
        }
    }

    if (!FUNC1(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        if (!FUNC4(&FCB->MainResource,
                                            FUNC1(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
        {
            if (LockDir)
            {
                FUNC5(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource);
            }

            return FUNC7(IrpContext);
        }
    }

    switch (FileInformationClass)
    {
        case FilePositionInformation:
            Status = FUNC11(IrpContext->FileObject,
                                                SystemBuffer);
            break;

        case FileDispositionInformation:
            Status = FUNC10(IrpContext->FileObject,
                                                   FCB,
                                                   IrpContext->DeviceExt,
                                                   SystemBuffer);
            break;

        case FileAllocationInformation:
        case FileEndOfFileInformation:
            Status = FUNC8(IrpContext->FileObject,
                                                      FCB,
                                                      IrpContext->DeviceExt,
                                                      (PLARGE_INTEGER)SystemBuffer);
            break;

        case FileBasicInformation:
            Status = FUNC9(IrpContext->FileObject,
                                             FCB,
                                             IrpContext->DeviceExt,
                                             SystemBuffer);
            break;

        case FileRenameInformation:
            Status = FUNC12(IrpContext->FileObject,
                                              FCB,
                                              IrpContext->DeviceExt,
                                              SystemBuffer,
                                              IrpContext->Stack->Parameters.SetFile.FileObject);
            break;

        default:
            Status = STATUS_NOT_SUPPORTED;
    }

    if (!FUNC1(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        FUNC5(&FCB->MainResource);
    }

    if (LockDir)
    {
        FUNC5(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource);
    }

    IrpContext->Irp->IoStatus.Information = 0;
    return Status;
}