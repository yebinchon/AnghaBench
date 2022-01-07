
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef scalar_t__ ULONG ;
struct TYPE_24__ {int DirResource; } ;
struct TYPE_23__ {TYPE_6__* Stack; TYPE_3__* Irp; TYPE_11__* DeviceObject; int Flags; } ;
struct TYPE_20__ {int FsInformationClass; scalar_t__ Length; } ;
struct TYPE_21__ {TYPE_4__ QueryVolume; } ;
struct TYPE_22__ {TYPE_5__ Parameters; } ;
struct TYPE_18__ {scalar_t__ Information; } ;
struct TYPE_17__ {int SystemBuffer; } ;
struct TYPE_19__ {TYPE_2__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_16__ {scalar_t__ DeviceExtension; } ;
typedef int PVOID ;
typedef TYPE_7__* PVFAT_IRP_CONTEXT ;
typedef TYPE_8__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FS_INFORMATION_CLASS ;


 int ASSERT (TYPE_7__*) ;
 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;





 int FsdGetFsAttributeInformation (scalar_t__,int,scalar_t__*) ;
 int FsdGetFsDeviceInformation (TYPE_11__*,int,scalar_t__*) ;
 int FsdGetFsFullSizeInformation (TYPE_11__*,int,scalar_t__*) ;
 int FsdGetFsSizeInformation (TYPE_11__*,int,scalar_t__*) ;
 int FsdGetFsVolumeInformation (TYPE_11__*,int,scalar_t__*) ;
 int IRPCONTEXT_CANWAIT ;
 int STATUS_NOT_SUPPORTED ;
 int STATUS_SUCCESS ;
 int VfatMarkIrpContextForQueue (TYPE_7__*) ;

NTSTATUS
VfatQueryVolumeInformation(
    PVFAT_IRP_CONTEXT IrpContext)
{
    FS_INFORMATION_CLASS FsInformationClass;
    NTSTATUS RC = STATUS_SUCCESS;
    PVOID SystemBuffer;
    ULONG BufferLength;


    ASSERT(IrpContext);

    DPRINT("VfatQueryVolumeInformation(IrpContext %p)\n", IrpContext);

    if (!ExAcquireResourceSharedLite(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource,
                                     BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        DPRINT1("DirResource failed!\n");
        return VfatMarkIrpContextForQueue(IrpContext);
    }


    FsInformationClass = IrpContext->Stack->Parameters.QueryVolume.FsInformationClass;
    BufferLength = IrpContext->Stack->Parameters.QueryVolume.Length;
    SystemBuffer = IrpContext->Irp->AssociatedIrp.SystemBuffer;

    DPRINT("FsInformationClass %d\n", FsInformationClass);
    DPRINT("SystemBuffer %p\n", SystemBuffer);

    switch (FsInformationClass)
    {
        case 128:
            RC = FsdGetFsVolumeInformation(IrpContext->DeviceObject,
                                           SystemBuffer,
                                           &BufferLength);
            break;

        case 132:
            RC = FsdGetFsAttributeInformation(IrpContext->DeviceObject->DeviceExtension,
                                              SystemBuffer,
                                              &BufferLength);
            break;

        case 129:
            RC = FsdGetFsSizeInformation(IrpContext->DeviceObject,
                                         SystemBuffer,
                                         &BufferLength);
            break;

        case 131:
            RC = FsdGetFsDeviceInformation(IrpContext->DeviceObject,
                                           SystemBuffer,
                                           &BufferLength);
            break;

        case 130:
            RC = FsdGetFsFullSizeInformation(IrpContext->DeviceObject,
                                             SystemBuffer,
                                             &BufferLength);
            break;

        default:
            RC = STATUS_NOT_SUPPORTED;
    }

    ExReleaseResourceLite(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource);

    IrpContext->Irp->IoStatus.Information =
        IrpContext->Stack->Parameters.QueryVolume.Length - BufferLength;

    return RC;
}
