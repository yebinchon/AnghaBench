
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int MinorFunction; int Flags; TYPE_2__* Irp; } ;
struct TYPE_7__ {scalar_t__ Information; } ;
struct TYPE_8__ {TYPE_1__ IoStatus; } ;
typedef TYPE_3__* PNTFS_IRP_CONTEXT ;
typedef scalar_t__ NTSTATUS ;


 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int IRPCONTEXT_COMPLETE ;


 scalar_t__ NtfsMarkIrpContextForQueue (TYPE_3__*) ;
 scalar_t__ NtfsQueryDirectory (TYPE_3__*) ;
 scalar_t__ STATUS_INVALID_DEVICE_REQUEST ;
 scalar_t__ STATUS_NOT_IMPLEMENTED ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_UNSUCCESSFUL ;

NTSTATUS
NtfsDirectoryControl(PNTFS_IRP_CONTEXT IrpContext)
{
    NTSTATUS Status = STATUS_UNSUCCESSFUL;

    DPRINT("NtfsDirectoryControl() called\n");

    switch (IrpContext->MinorFunction)
    {
        case 128:
            Status = NtfsQueryDirectory(IrpContext);
            break;

        case 129:
            DPRINT1("IRP_MN_NOTIFY_CHANGE_DIRECTORY\n");
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        default:
            Status = STATUS_INVALID_DEVICE_REQUEST;
            break;
    }

    if (Status == STATUS_PENDING && IrpContext->Flags & IRPCONTEXT_COMPLETE)
    {
        return NtfsMarkIrpContextForQueue(IrpContext);
    }

    IrpContext->Irp->IoStatus.Information = 0;

    return Status;
}
