
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int IoControlCode; } ;
struct TYPE_13__ {int InputBufferLength; int OutputBufferLength; } ;
struct TYPE_14__ {TYPE_1__ DeviceIoControl; TYPE_2__ FileSystemControl; } ;
struct TYPE_17__ {TYPE_3__ Parameters; } ;
struct TYPE_15__ {int SystemBuffer; } ;
struct TYPE_16__ {int RequestorMode; TYPE_4__ AssociatedIrp; } ;
typedef TYPE_5__* PIRP ;
typedef TYPE_6__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;





 TYPE_6__* IoGetCurrentIrpStackLocation (TYPE_5__*) ;
 int NormalPagePriority ;
 int STATUS_NOT_IMPLEMENTED ;
 int TRACE (char*,int) ;
 int ioctl_unload (TYPE_5__*) ;
 int map_user_buffer (TYPE_5__*,int ) ;
 int probe_volume (int ,int ,int ) ;
 int query_filesystems (int ,int ) ;

__attribute__((used)) static NTSTATUS control_ioctl(PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    NTSTATUS Status;

    switch (IrpSp->Parameters.DeviceIoControl.IoControlCode) {
        case 129:
            Status = query_filesystems(map_user_buffer(Irp, NormalPagePriority), IrpSp->Parameters.FileSystemControl.OutputBufferLength);
            break;

        case 130:
            Status = probe_volume(Irp->AssociatedIrp.SystemBuffer, IrpSp->Parameters.FileSystemControl.InputBufferLength, Irp->RequestorMode);
            break;

        case 128:
            Status = ioctl_unload(Irp);
            break;

        default:
            TRACE("unhandled ioctl %x\n", IrpSp->Parameters.DeviceIoControl.IoControlCode);
            Status = STATUS_NOT_IMPLEMENTED;
            break;
    }

    return Status;
}
