
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_25__ {int DirResource; } ;
struct TYPE_24__ {TYPE_9__* DeviceExtension; } ;
struct TYPE_18__ {int FsInformationClass; scalar_t__ Length; } ;
struct TYPE_19__ {TYPE_2__ QueryVolume; } ;
struct TYPE_23__ {TYPE_3__ Parameters; } ;
struct TYPE_20__ {scalar_t__ Information; } ;
struct TYPE_17__ {int SystemBuffer; } ;
struct TYPE_22__ {TYPE_4__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_21__ {int Flags; TYPE_7__* Stack; TYPE_8__* DeviceObject; TYPE_6__* Irp; } ;
typedef int PVOID ;
typedef TYPE_5__* PNTFS_IRP_CONTEXT ;
typedef TYPE_6__* PIRP ;
typedef TYPE_7__* PIO_STACK_LOCATION ;
typedef TYPE_8__* PDEVICE_OBJECT ;
typedef TYPE_9__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FS_INFORMATION_CLASS ;


 int ASSERT (TYPE_5__*) ;
 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,...) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;




 int IRPCONTEXT_CANWAIT ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtfsGetFsAttributeInformation (TYPE_9__*,int,scalar_t__*) ;
 int NtfsGetFsDeviceInformation (TYPE_8__*,int,scalar_t__*) ;
 int NtfsGetFsSizeInformation (TYPE_8__*,int,scalar_t__*) ;
 int NtfsGetFsVolumeInformation (TYPE_8__*,int,scalar_t__*) ;
 int NtfsMarkIrpContextForQueue (TYPE_5__*) ;
 int RtlZeroMemory (int,scalar_t__) ;
 int STATUS_NOT_SUPPORTED ;
 int STATUS_SUCCESS ;

NTSTATUS
NtfsQueryVolumeInformation(PNTFS_IRP_CONTEXT IrpContext)
{
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;
    FS_INFORMATION_CLASS FsInformationClass;
    PIO_STACK_LOCATION Stack;
    NTSTATUS Status = STATUS_SUCCESS;
    PVOID SystemBuffer;
    ULONG BufferLength;
    PDEVICE_EXTENSION DeviceExt;

    DPRINT("NtfsQueryVolumeInformation() called\n");

    ASSERT(IrpContext);

    Irp = IrpContext->Irp;
    DeviceObject = IrpContext->DeviceObject;
    DeviceExt = DeviceObject->DeviceExtension;
    Stack = IrpContext->Stack;

    if (!ExAcquireResourceSharedLite(&DeviceExt->DirResource,
                                     BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        return NtfsMarkIrpContextForQueue(IrpContext);
    }

    FsInformationClass = Stack->Parameters.QueryVolume.FsInformationClass;
    BufferLength = Stack->Parameters.QueryVolume.Length;
    SystemBuffer = Irp->AssociatedIrp.SystemBuffer;
    RtlZeroMemory(SystemBuffer, BufferLength);

    DPRINT("FsInformationClass %d\n", FsInformationClass);
    DPRINT("SystemBuffer %p\n", SystemBuffer);

    switch (FsInformationClass)
    {
        case 128:
            Status = NtfsGetFsVolumeInformation(DeviceObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case 131:
            Status = NtfsGetFsAttributeInformation(DeviceObject->DeviceExtension,
                                                   SystemBuffer,
                                                   &BufferLength);
            break;

        case 129:
            Status = NtfsGetFsSizeInformation(DeviceObject,
                                              SystemBuffer,
                                              &BufferLength);
            break;

        case 130:
            Status = NtfsGetFsDeviceInformation(DeviceObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        default:
            Status = STATUS_NOT_SUPPORTED;
    }

    ExReleaseResourceLite(&DeviceExt->DirResource);

    if (NT_SUCCESS(Status))
        Irp->IoStatus.Information =
            Stack->Parameters.QueryVolume.Length - BufferLength;
    else
        Irp->IoStatus.Information = 0;

    return Status;
}
