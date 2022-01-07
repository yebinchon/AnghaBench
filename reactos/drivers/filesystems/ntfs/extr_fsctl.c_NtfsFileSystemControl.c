
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Information; } ;
struct TYPE_10__ {TYPE_1__ IoStatus; } ;
struct TYPE_9__ {int MinorFunction; TYPE_3__* Irp; int DeviceObject; } ;
typedef TYPE_2__* PNTFS_IRP_CONTEXT ;
typedef TYPE_3__* PIRP ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int DPRINT (char*) ;
 int DPRINT1 (char*,...) ;




 int NtfsMountVolume (int ,TYPE_3__*) ;
 int NtfsUserFsRequest (int ,TYPE_3__*) ;
 int NtfsVerifyVolume (int ,TYPE_3__*) ;
 int STATUS_INVALID_DEVICE_REQUEST ;

NTSTATUS
NtfsFileSystemControl(PNTFS_IRP_CONTEXT IrpContext)
{
    NTSTATUS Status;
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;

    DPRINT("NtfsFileSystemControl() called\n");

    DeviceObject = IrpContext->DeviceObject;
    Irp = IrpContext->Irp;
    Irp->IoStatus.Information = 0;

    switch (IrpContext->MinorFunction)
    {
        case 131:
            DPRINT1("NTFS: IRP_MN_USER_FS_REQUEST\n");
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;

        case 129:
            Status = NtfsUserFsRequest(DeviceObject, Irp);
            break;

        case 130:
            DPRINT("NTFS: IRP_MN_MOUNT_VOLUME\n");
            Status = NtfsMountVolume(DeviceObject, Irp);
            break;

        case 128:
            DPRINT1("NTFS: IRP_MN_VERIFY_VOLUME\n");
            Status = NtfsVerifyVolume(DeviceObject, Irp);
            break;

        default:
            DPRINT1("NTFS FSC: MinorFunction %d\n", IrpContext->MinorFunction);
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;
    }

    return Status;
}
