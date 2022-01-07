
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* Vpb; int page_file_count; } ;
typedef TYPE_4__ device_extension ;
struct TYPE_14__ {TYPE_4__* DeviceExtension; } ;
struct TYPE_10__ {int Type; scalar_t__ InPath; } ;
struct TYPE_11__ {TYPE_2__ UsageNotification; } ;
struct TYPE_13__ {TYPE_3__ Parameters; } ;
struct TYPE_9__ {int RealDevice; } ;
typedef int PIRP ;
typedef TYPE_5__* PIO_STACK_LOCATION ;
typedef TYPE_6__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;





 int IoAdjustPagingPathCount (int *,scalar_t__) ;
 int IoCallDriver (int ,int ) ;
 TYPE_5__* IoGetCurrentIrpStackLocation (int ) ;
 int IoSkipCurrentIrpStackLocation (int ) ;

__attribute__((used)) static NTSTATUS pnp_device_usage_notification(PDEVICE_OBJECT DeviceObject, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    device_extension* Vcb = DeviceObject->DeviceExtension;

    if (IrpSp->Parameters.UsageNotification.InPath) {
        switch (IrpSp->Parameters.UsageNotification.Type) {
            case 128:
            case 129:
            case 130:
                IoAdjustPagingPathCount(&Vcb->page_file_count, IrpSp->Parameters.UsageNotification.InPath);
                break;

            default:
                break;
        }
    }

    IoSkipCurrentIrpStackLocation(Irp);
    return IoCallDriver(Vcb->Vpb->RealDevice, Irp);
}
