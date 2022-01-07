
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_23__ {TYPE_1__* FileObject; } ;
struct TYPE_19__ {int Status; } ;
struct TYPE_22__ {TYPE_4__ IoStatus; } ;
struct TYPE_18__ {int ControlChannel; int ConnectionContext; int AddressHandle; } ;
struct TYPE_21__ {TYPE_3__ Handle; } ;
struct TYPE_17__ {int ControlChannel; int ConnectionContext; int AddressHandle; } ;
struct TYPE_20__ {TYPE_2__ Handle; } ;
struct TYPE_16__ {int FsContext2; TYPE_6__* FsContext; } ;
typedef TYPE_5__ TDI_REQUEST ;
typedef TYPE_6__* PTRANSPORT_CONTEXT ;
typedef TYPE_7__* PIRP ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int ExFreePoolWithTag (TYPE_6__*,int ) ;
 int FileCloseAddress (TYPE_5__*) ;
 int FileCloseConnection (TYPE_5__*) ;
 int FileCloseControlChannel (TYPE_5__*) ;
 TYPE_8__* IoGetCurrentIrpStackLocation (TYPE_7__*) ;
 int MIN_TRACE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_INVALID_PARAMETER ;



 int TI_DbgPrint (int ,char*) ;
 int TRANS_CONTEXT_TAG ;

NTSTATUS TiCloseFileObject(
    PDEVICE_OBJECT DeviceObject,
    PIRP Irp)
{
    PIO_STACK_LOCATION IrpSp;
    PTRANSPORT_CONTEXT Context;
    TDI_REQUEST Request;
    NTSTATUS Status;

    IrpSp = IoGetCurrentIrpStackLocation(Irp);
    Context = IrpSp->FileObject->FsContext;
    if (!Context)
    {
        TI_DbgPrint(MIN_TRACE, ("Parameters are invalid.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    switch ((ULONG_PTR)IrpSp->FileObject->FsContext2)
    {
        case 128:
            Request.Handle.AddressHandle = Context->Handle.AddressHandle;
            Status = FileCloseAddress(&Request);
            break;

        case 130:
            Request.Handle.ConnectionContext = Context->Handle.ConnectionContext;
            Status = FileCloseConnection(&Request);
            break;

        case 129:
            Request.Handle.ControlChannel = Context->Handle.ControlChannel;
            Status = FileCloseControlChannel(&Request);
            break;

        default:
            Status = STATUS_INVALID_PARAMETER;
            break;
    }

    if (NT_SUCCESS(Status))
        ExFreePoolWithTag(Context, TRANS_CONTEXT_TAG);

    Irp->IoStatus.Status = Status;

    return Irp->IoStatus.Status;
}
