
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int MinorFunction; int Flags; TYPE_2__* Irp; } ;
struct TYPE_8__ {scalar_t__ Information; } ;
struct TYPE_9__ {TYPE_1__ IoStatus; } ;
typedef TYPE_3__* PVFAT_IRP_CONTEXT ;
typedef scalar_t__ NTSTATUS ;


 scalar_t__ BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,int) ;
 scalar_t__ DoQuery (TYPE_3__*) ;
 int IRPCONTEXT_COMPLETE ;


 scalar_t__ STATUS_INVALID_DEVICE_REQUEST ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ VfatMarkIrpContextForQueue (TYPE_3__*) ;
 scalar_t__ VfatNotifyChangeDirectory (TYPE_3__*) ;

NTSTATUS
VfatDirectoryControl(
    PVFAT_IRP_CONTEXT IrpContext)
{
    NTSTATUS Status = STATUS_SUCCESS;

    IrpContext->Irp->IoStatus.Information = 0;

    switch (IrpContext->MinorFunction)
    {
        case 128:
            Status = DoQuery (IrpContext);
            break;

        case 129:
            Status = VfatNotifyChangeDirectory(IrpContext);
            break;

        default:

            DPRINT("Unexpected minor function %x in VFAT driver\n",
                   IrpContext->MinorFunction);
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;
    }

    if (Status == STATUS_PENDING && BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_COMPLETE))
    {
        return VfatMarkIrpContextForQueue(IrpContext);
    }

    return Status;
}
