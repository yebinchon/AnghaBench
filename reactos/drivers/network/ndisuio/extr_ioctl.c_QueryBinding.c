
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef int ULONG ;
struct TYPE_19__ {int InputBufferLength; } ;
struct TYPE_20__ {TYPE_2__ DeviceIoControl; } ;
struct TYPE_26__ {TYPE_3__ Parameters; } ;
struct TYPE_21__ {int Information; int Status; } ;
struct TYPE_18__ {TYPE_5__* SystemBuffer; } ;
struct TYPE_25__ {TYPE_4__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_24__ {struct TYPE_24__* Flink; } ;
struct TYPE_17__ {int Length; int Buffer; } ;
struct TYPE_23__ {TYPE_14__ DeviceName; } ;
struct TYPE_22__ {int BindingIndex; int DeviceNameOffset; int DeviceNameLength; int DeviceDescrOffset; scalar_t__ DeviceDescrLength; } ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_5__* PNDISUIO_QUERY_BINDING ;
typedef TYPE_6__* PNDISUIO_ADAPTER_CONTEXT ;
typedef TYPE_7__* PLIST_ENTRY ;
typedef TYPE_8__* PIRP ;
typedef TYPE_9__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;
typedef int NDISUIO_QUERY_BINDING ;
typedef int KIRQL ;


 TYPE_6__* CONTAINING_RECORD (TYPE_7__*,int ,int ) ;
 int DPRINT (char*,int,TYPE_14__*) ;
 TYPE_7__ GlobalAdapterList ;
 int GlobalAdapterListLock ;
 int IO_NO_INCREMENT ;
 int IoCompleteRequest (TYPE_8__*,int ) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int ListEntry ;
 int NDISUIO_ADAPTER_CONTEXT ;
 int RtlCopyMemory (scalar_t__,int ,int) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NO_MORE_ENTRIES ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
QueryBinding(PIRP Irp, PIO_STACK_LOCATION IrpSp)
{
    PNDISUIO_ADAPTER_CONTEXT AdapterContext = ((void*)0);
    PNDISUIO_QUERY_BINDING QueryBinding = Irp->AssociatedIrp.SystemBuffer;
    ULONG BindingLength = IrpSp->Parameters.DeviceIoControl.InputBufferLength;
    NTSTATUS Status;
    PLIST_ENTRY CurrentEntry;
    KIRQL OldIrql;
    ULONG i;
    ULONG BytesCopied = 0;

    if (QueryBinding && BindingLength >= sizeof(NDISUIO_QUERY_BINDING))
    {
        KeAcquireSpinLock(&GlobalAdapterListLock, &OldIrql);
        i = 0;
        CurrentEntry = GlobalAdapterList.Flink;
        while (CurrentEntry != &GlobalAdapterList)
        {
            if (i == QueryBinding->BindingIndex)
            {
                AdapterContext = CONTAINING_RECORD(CurrentEntry, NDISUIO_ADAPTER_CONTEXT, ListEntry);
                break;
            }
            i++;
            CurrentEntry = CurrentEntry->Flink;
        }
        KeReleaseSpinLock(&GlobalAdapterListLock, OldIrql);
        if (AdapterContext)
        {
            DPRINT("Query binding for index %d is adapter %wZ\n", i, &AdapterContext->DeviceName);
            BytesCopied = sizeof(NDISUIO_QUERY_BINDING);
            if (AdapterContext->DeviceName.Length <= BindingLength - BytesCopied)
            {
                QueryBinding->DeviceNameOffset = BytesCopied;
                QueryBinding->DeviceNameLength = AdapterContext->DeviceName.Length;
                RtlCopyMemory((PUCHAR)QueryBinding + QueryBinding->DeviceNameOffset,
                              AdapterContext->DeviceName.Buffer,
                              QueryBinding->DeviceNameLength);
                BytesCopied += AdapterContext->DeviceName.Length;


                QueryBinding->DeviceDescrOffset = BytesCopied;
                QueryBinding->DeviceDescrLength = 0;


                Status = STATUS_SUCCESS;
            }
            else
            {

                Status = STATUS_BUFFER_TOO_SMALL;
            }
        }
        else
        {

            Status = STATUS_NO_MORE_ENTRIES;
        }
    }
    else
    {

        Status = STATUS_INVALID_PARAMETER;
    }

    Irp->IoStatus.Status = Status;
    Irp->IoStatus.Information = BytesCopied;

    IoCompleteRequest(Irp, IO_NO_INCREMENT);

    return Status;
}
