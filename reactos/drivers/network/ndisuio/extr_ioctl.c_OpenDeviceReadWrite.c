
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_25__ {int Buffer; scalar_t__ Length; scalar_t__ MaximumLength; } ;
typedef TYPE_5__ UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_21__ {scalar_t__ InputBufferLength; } ;
struct TYPE_22__ {TYPE_1__ DeviceIoControl; } ;
struct TYPE_29__ {TYPE_2__ Parameters; TYPE_10__* FileObject; } ;
struct TYPE_24__ {scalar_t__ Information; int Status; } ;
struct TYPE_23__ {int SystemBuffer; } ;
struct TYPE_28__ {TYPE_4__ IoStatus; TYPE_3__ AssociatedIrp; } ;
struct TYPE_27__ {scalar_t__ OpenCount; int Spinlock; int OpenEntryList; int DeviceName; } ;
struct TYPE_26__ {int ListEntry; int WriteOnly; TYPE_10__* FileObject; } ;
struct TYPE_20__ {TYPE_6__* FsContext2; TYPE_7__* FsContext; } ;
typedef TYPE_6__* PNDISUIO_OPEN_ENTRY ;
typedef TYPE_7__* PNDISUIO_ADAPTER_CONTEXT ;
typedef TYPE_8__* PIRP ;
typedef TYPE_9__* PIO_STACK_LOCATION ;
typedef TYPE_10__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef int KIRQL ;


 int DPRINT (char*,TYPE_10__*,int *) ;
 int DereferenceAdapterContextWithOpenEntry (TYPE_7__*,int *) ;
 TYPE_6__* ExAllocatePool (int ,int) ;
 int FALSE ;
 TYPE_7__* FindAdapterContextByName (TYPE_5__*) ;
 int IO_NO_INCREMENT ;
 int InsertTailList (int *,int *) ;
 int IoCompleteRequest (TYPE_8__*,int ) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ReferenceAdapterContext (TYPE_7__*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;

__attribute__((used)) static
NTSTATUS
OpenDeviceReadWrite(PIRP Irp, PIO_STACK_LOCATION IrpSp)
{
    PFILE_OBJECT FileObject = IrpSp->FileObject;
    UNICODE_STRING DeviceName;
    ULONG NameLength;
    NTSTATUS Status;
    PNDISUIO_ADAPTER_CONTEXT AdapterContext;
    PNDISUIO_OPEN_ENTRY OpenEntry;
    KIRQL OldIrql;

    NameLength = IrpSp->Parameters.DeviceIoControl.InputBufferLength;
    if (NameLength != 0)
    {
        DeviceName.MaximumLength = DeviceName.Length = NameLength;
        DeviceName.Buffer = Irp->AssociatedIrp.SystemBuffer;


        AdapterContext = FindAdapterContextByName(&DeviceName);
        if (AdapterContext != ((void*)0))
        {
            DPRINT("Binding file object 0x%x to device %wZ\n", FileObject, &AdapterContext->DeviceName);


            KeAcquireSpinLock(&AdapterContext->Spinlock, &OldIrql);
            if (AdapterContext->OpenCount != 0)
            {


                KeReleaseSpinLock(&AdapterContext->Spinlock, OldIrql);
                Status = STATUS_INVALID_PARAMETER;
            }
            else
            {

                ReferenceAdapterContext(AdapterContext);
                Status = STATUS_SUCCESS;
            }
        }
        else
        {

            Status = STATUS_INVALID_PARAMETER;
        }


        if (NT_SUCCESS(Status))
        {
            OpenEntry = ExAllocatePool(NonPagedPool, sizeof(*OpenEntry));
            if (OpenEntry)
            {

                OpenEntry->FileObject = FileObject;


                OpenEntry->WriteOnly = FALSE;


                FileObject->FsContext = AdapterContext;
                FileObject->FsContext2 = OpenEntry;


                InsertTailList(&AdapterContext->OpenEntryList,
                               &OpenEntry->ListEntry);


                KeReleaseSpinLock(&AdapterContext->Spinlock, OldIrql);
                Status = STATUS_SUCCESS;
            }
            else
            {

                KeReleaseSpinLock(&AdapterContext->Spinlock, OldIrql);
                DereferenceAdapterContextWithOpenEntry(AdapterContext, ((void*)0));
                Status = STATUS_NO_MEMORY;
            }
        }
    }
    else
    {

        Status = STATUS_INVALID_PARAMETER;
    }

    Irp->IoStatus.Status = Status;
    Irp->IoStatus.Information = 0;

    IoCompleteRequest(Irp, IO_NO_INCREMENT);

    return Status;
}
