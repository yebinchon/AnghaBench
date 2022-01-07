
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int StorageDevice; } ;
struct TYPE_6__ {int Flags; TYPE_1__* DeviceObject; int Irp; } ;
struct TYPE_5__ {TYPE_3__* DeviceExtension; } ;
typedef TYPE_2__* PNTFS_IRP_CONTEXT ;
typedef int PIRP ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int IRPCONTEXT_COMPLETE ;
 int IoCallDriver (int ,int ) ;
 int IoSkipCurrentIrpStackLocation (int ) ;

NTSTATUS
NtfsDeviceControl(PNTFS_IRP_CONTEXT IrpContext)
{
    PDEVICE_EXTENSION DeviceExt;
    PIRP Irp = IrpContext->Irp;

    DeviceExt = IrpContext->DeviceObject->DeviceExtension;
    IoSkipCurrentIrpStackLocation(Irp);


    IrpContext->Flags &= ~IRPCONTEXT_COMPLETE;

    return IoCallDriver(DeviceExt->StorageDevice, Irp);
}
