
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int StorageDevice; } ;
struct TYPE_9__ {int Irp; int Flags; TYPE_2__* Stack; } ;
struct TYPE_8__ {int MinorFunction; TYPE_1__* DeviceObject; } ;
struct TYPE_7__ {int DeviceExtension; } ;
typedef TYPE_3__* PVFAT_IRP_CONTEXT ;
typedef TYPE_4__* PVCB ;
typedef int NTSTATUS ;


 int ASSERT (TYPE_3__*) ;
 int IRPCONTEXT_COMPLETE ;




 int IoCallDriver (int ,int ) ;
 int IoSkipCurrentIrpStackLocation (int ) ;
 int STATUS_NOT_IMPLEMENTED ;

NTSTATUS
VfatPnp(
    PVFAT_IRP_CONTEXT IrpContext)
{
    PVCB Vcb = ((void*)0);
    NTSTATUS Status;


    ASSERT(IrpContext);

    switch (IrpContext->Stack->MinorFunction)
    {
        case 130:
        case 128:
        case 129:
        case 131:
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        default:
            IoSkipCurrentIrpStackLocation(IrpContext->Irp);
            Vcb = (PVCB)IrpContext->Stack->DeviceObject->DeviceExtension;
            IrpContext->Flags &= ~IRPCONTEXT_COMPLETE;
            Status = IoCallDriver(Vcb->StorageDevice, IrpContext->Irp);
    }

    return Status;
}
