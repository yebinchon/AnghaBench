
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_13__ {int ReceiveQueue; } ;
struct TYPE_12__ {int ListEntry; int Irp; TYPE_3__* AddressFile; struct TYPE_12__* Context; void* Complete; int UserContext; void* UserComplete; int BufferSize; int Buffer; TYPE_1__* ReturnInfo; int RemoteAddress; scalar_t__ RemotePort; } ;
struct TYPE_11__ {scalar_t__ RemoteAddressLength; scalar_t__ RemoteAddress; } ;
typedef int PVOID ;
typedef int PULONG ;
typedef TYPE_1__* PTDI_CONNECTION_INFORMATION ;
typedef int PIRP ;
typedef TYPE_2__* PDATAGRAM_RECEIVE_REQUEST ;
typedef void* PDATAGRAM_COMPLETION_ROUTINE ;
typedef int PCHAR ;
typedef TYPE_3__* PADDRESS_FILE ;
typedef int NTSTATUS ;
typedef int KIRQL ;
typedef int DATAGRAM_RECEIVE_REQUEST ;


 int AddrGetAddress (scalar_t__,int *,scalar_t__*) ;
 int AddrInitIPv4 (int *,int ) ;
 int DATAGRAM_RECV_TAG ;
 scalar_t__ DGReceiveComplete ;
 TYPE_2__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_2__*,int ) ;
 int InsertTailList (int *,int *) ;
 int IoMarkIrpPending (int ) ;
 int LockObject (TYPE_3__*,int *) ;
 int MAX_TRACE ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_PENDING ;
 int TI_DbgPrint (int ,char*) ;
 int UnlockObject (TYPE_3__*,int ) ;

NTSTATUS DGReceiveDatagram(
    PADDRESS_FILE AddrFile,
    PTDI_CONNECTION_INFORMATION ConnInfo,
    PCHAR BufferData,
    ULONG ReceiveLength,
    ULONG ReceiveFlags,
    PTDI_CONNECTION_INFORMATION ReturnInfo,
    PULONG BytesReceived,
    PDATAGRAM_COMPLETION_ROUTINE Complete,
    PVOID Context,
    PIRP Irp)
{
    NTSTATUS Status;
    PDATAGRAM_RECEIVE_REQUEST ReceiveRequest;
    KIRQL OldIrql;

    TI_DbgPrint(MAX_TRACE, ("Called.\n"));

    LockObject(AddrFile, &OldIrql);

    ReceiveRequest = ExAllocatePoolWithTag(NonPagedPool, sizeof(DATAGRAM_RECEIVE_REQUEST),
                                           DATAGRAM_RECV_TAG);
    if (ReceiveRequest)
    {



 if ((ConnInfo->RemoteAddressLength != 0) &&
     (ConnInfo->RemoteAddress))
        {
     Status = AddrGetAddress(ConnInfo->RemoteAddress,
        &ReceiveRequest->RemoteAddress,
        &ReceiveRequest->RemotePort);
     if (!NT_SUCCESS(Status))
            {
  ExFreePoolWithTag(ReceiveRequest, DATAGRAM_RECV_TAG);
         UnlockObject(AddrFile, OldIrql);
  return Status;
            }
 }
 else
        {
     ReceiveRequest->RemotePort = 0;
     AddrInitIPv4(&ReceiveRequest->RemoteAddress, 0);
        }

 IoMarkIrpPending(Irp);

 ReceiveRequest->ReturnInfo = ReturnInfo;
 ReceiveRequest->Buffer = BufferData;
 ReceiveRequest->BufferSize = ReceiveLength;
 ReceiveRequest->UserComplete = Complete;
 ReceiveRequest->UserContext = Context;
 ReceiveRequest->Complete =
  (PDATAGRAM_COMPLETION_ROUTINE)DGReceiveComplete;
 ReceiveRequest->Context = ReceiveRequest;
        ReceiveRequest->AddressFile = AddrFile;
        ReceiveRequest->Irp = Irp;


 InsertTailList(&AddrFile->ReceiveQueue, &ReceiveRequest->ListEntry);

 TI_DbgPrint(MAX_TRACE, ("Leaving (pending %08x).\n", ReceiveRequest));

 UnlockObject(AddrFile, OldIrql);

 return STATUS_PENDING;
    }
    else
    {
 UnlockObject(AddrFile, OldIrql);
        Status = STATUS_INSUFFICIENT_RESOURCES;
    }

    TI_DbgPrint(MAX_TRACE, ("Leaving with errors (0x%X).\n", Status));

    return Status;
}
