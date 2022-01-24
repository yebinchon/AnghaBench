#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_25__ {int /*<<< orphan*/  DirResource; } ;
struct TYPE_24__ {TYPE_9__* DeviceExtension; } ;
struct TYPE_18__ {int FsInformationClass; scalar_t__ Length; } ;
struct TYPE_19__ {TYPE_2__ QueryVolume; } ;
struct TYPE_23__ {TYPE_3__ Parameters; } ;
struct TYPE_20__ {scalar_t__ Information; } ;
struct TYPE_17__ {int SystemBuffer; } ;
struct TYPE_22__ {TYPE_4__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_21__ {int /*<<< orphan*/  Flags; TYPE_7__* Stack; TYPE_8__* DeviceObject; TYPE_6__* Irp; } ;
typedef  int PVOID ;
typedef  TYPE_5__* PNTFS_IRP_CONTEXT ;
typedef  TYPE_6__* PIRP ;
typedef  TYPE_7__* PIO_STACK_LOCATION ;
typedef  TYPE_8__* PDEVICE_OBJECT ;
typedef  TYPE_9__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int FS_INFORMATION_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
#define  FileFsAttributeInformation 131 
#define  FileFsDeviceInformation 130 
#define  FileFsSizeInformation 129 
#define  FileFsVolumeInformation 128 
 int /*<<< orphan*/  IRPCONTEXT_CANWAIT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC12(PNTFS_IRP_CONTEXT IrpContext)
{
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;
    FS_INFORMATION_CLASS FsInformationClass;
    PIO_STACK_LOCATION Stack;
    NTSTATUS Status = STATUS_SUCCESS;
    PVOID SystemBuffer;
    ULONG BufferLength;
    PDEVICE_EXTENSION DeviceExt;

    FUNC2("NtfsQueryVolumeInformation() called\n");

    FUNC0(IrpContext);

    Irp = IrpContext->Irp;
    DeviceObject = IrpContext->DeviceObject;
    DeviceExt = DeviceObject->DeviceExtension;
    Stack = IrpContext->Stack;

    if (!FUNC3(&DeviceExt->DirResource,
                                     FUNC1(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        return FUNC10(IrpContext);
    }

    FsInformationClass = Stack->Parameters.QueryVolume.FsInformationClass;
    BufferLength = Stack->Parameters.QueryVolume.Length;
    SystemBuffer = Irp->AssociatedIrp.SystemBuffer;
    FUNC11(SystemBuffer, BufferLength);

    FUNC2("FsInformationClass %d\n", FsInformationClass);
    FUNC2("SystemBuffer %p\n", SystemBuffer);

    switch (FsInformationClass)
    {
        case FileFsVolumeInformation:
            Status = FUNC9(DeviceObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case FileFsAttributeInformation:
            Status = FUNC6(DeviceObject->DeviceExtension,
                                                   SystemBuffer,
                                                   &BufferLength);
            break;

        case FileFsSizeInformation:
            Status = FUNC8(DeviceObject,
                                              SystemBuffer,
                                              &BufferLength);
            break;

        case FileFsDeviceInformation:
            Status = FUNC7(DeviceObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        default:
            Status = STATUS_NOT_SUPPORTED;
    }

    FUNC4(&DeviceExt->DirResource);

    if (FUNC5(Status))
        Irp->IoStatus.Information =
            Stack->Parameters.QueryVolume.Length - BufferLength;
    else
        Irp->IoStatus.Information = 0;

    return Status;
}