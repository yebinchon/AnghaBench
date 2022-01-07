
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int DeviceExtension; } ;
struct TYPE_7__ {int FsControlCode; } ;
struct TYPE_8__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_9__ {TYPE_2__ Parameters; } ;
typedef int PIRP ;
typedef TYPE_3__* PIO_STACK_LOCATION ;
typedef TYPE_4__* PDEVICE_OBJECT ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int DPRINT (char*,...) ;
 int DPRINT1 (char*,int) ;
 int FALSE ;
 int GetNfsVolumeData (int ,int ) ;
 int GetNtfsFileRecord (int ,int ) ;
 int GetVolumeBitmap (int ,int ) ;
 TYPE_3__* IoGetCurrentIrpStackLocation (int ) ;
 int LockOrUnlockVolume (int ,int ,int ) ;
 int STATUS_INVALID_DEVICE_REQUEST ;
 int STATUS_NOT_IMPLEMENTED ;
 int TRUE ;
 int UNIMPLEMENTED ;

__attribute__((used)) static
NTSTATUS
NtfsUserFsRequest(PDEVICE_OBJECT DeviceObject,
                  PIRP Irp)
{
    NTSTATUS Status;
    PIO_STACK_LOCATION Stack;
    PDEVICE_EXTENSION DeviceExt;

    DPRINT("NtfsUserFsRequest(%p, %p)\n", DeviceObject, Irp);

    Stack = IoGetCurrentIrpStackLocation(Irp);
    DeviceExt = DeviceObject->DeviceExtension;
    switch (Stack->Parameters.FileSystemControl.FsControlCode)
    {
        case 143:
        case 142:
        case 141:
        case 140:

        case 137:

        case 134:
        case 133:
        case 132:
        case 131:
        case 130:

        case 128:
            UNIMPLEMENTED;
            DPRINT1("Unimplemented user request: %x\n", Stack->Parameters.FileSystemControl.FsControlCode);
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        case 135:
            Status = LockOrUnlockVolume(DeviceExt, Irp, TRUE);
            break;

        case 129:
            Status = LockOrUnlockVolume(DeviceExt, Irp, FALSE);
            break;

        case 138:
            Status = GetNfsVolumeData(DeviceExt, Irp);
            break;

        case 139:
            Status = GetNtfsFileRecord(DeviceExt, Irp);
            break;

        case 136:
            Status = GetVolumeBitmap(DeviceExt, Irp);
            break;

        default:
            DPRINT("Invalid user request: %x\n", Stack->Parameters.FileSystemControl.FsControlCode);
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;
    }

    return Status;
}
