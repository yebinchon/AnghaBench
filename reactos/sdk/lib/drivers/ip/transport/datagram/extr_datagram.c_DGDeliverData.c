
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef int VOID ;
typedef scalar_t__ USHORT ;
typedef int ULONG ;
typedef scalar_t__ UINT ;
struct TYPE_34__ {int Context; int (* Complete ) (int ,scalar_t__,scalar_t__) ;scalar_t__ BufferSize; TYPE_1__* ReturnInfo; int Buffer; int ListEntry; } ;
struct TYPE_29__ {int * IPv6Address; int IPv4Address; } ;
struct TYPE_33__ {scalar_t__ Type; TYPE_4__ Address; } ;
struct TYPE_32__ {scalar_t__ HeaderSize; int * Data; int * Header; } ;
struct TYPE_31__ {struct TYPE_31__* Flink; } ;
struct TYPE_30__ {int TAAddressCount; TYPE_3__* Address; } ;
struct TYPE_28__ {TYPE_2__* Address; int AddressLength; int AddressType; } ;
struct TYPE_27__ {int sin_zero; int in_addr; scalar_t__ sin_port; } ;
struct TYPE_26__ {scalar_t__ RemoteAddress; } ;
struct TYPE_25__ {scalar_t__ Protocol; scalar_t__ Port; scalar_t__ (* ReceiveDatagramHandler ) (int *,int,int *,int ,int *,int ,scalar_t__,scalar_t__,int *,int *,int *) ;int * ReceiveDatagramHandlerContext; scalar_t__ RegisteredReceiveDatagramHandler; TYPE_8__ Address; TYPE_6__ ReceiveQueue; scalar_t__ HeaderIncl; } ;
typedef int * PVOID ;
typedef scalar_t__ (* PTDI_IND_RECEIVE_DATAGRAM ) (int *,int,int *,int ,int *,int ,scalar_t__,scalar_t__,int *,int *,int *) ;
typedef TYPE_5__* PTA_IP_ADDRESS ;
typedef TYPE_6__* PLIST_ENTRY ;
typedef TYPE_7__* PIP_PACKET ;
typedef TYPE_8__* PIP_ADDRESS ;
typedef TYPE_9__* PDATAGRAM_RECEIVE_REQUEST ;
typedef TYPE_10__* PADDRESS_FILE ;
typedef scalar_t__ NTSTATUS ;
typedef int LONG ;
typedef int KIRQL ;
typedef int IPv6_RAW_ADDRESS ;
typedef int IPv4_RAW_ADDRESS ;


 scalar_t__ AddrIsEqual (TYPE_8__*,TYPE_8__*) ;
 scalar_t__ AddrIsUnspecified (TYPE_8__*) ;
 TYPE_9__* CONTAINING_RECORD (TYPE_6__*,int ,int ) ;
 int DATAGRAM_RECEIVE_REQUEST ;
 int DereferenceObject (TYPE_10__*) ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ IP_ADDRESS_V4 ;
 int IsListEmpty (TYPE_6__*) ;
 int ListEntry ;
 int LockObject (TYPE_10__*,int *) ;
 int MAX_TRACE ;
 int MIN (scalar_t__,scalar_t__) ;
 int ReferenceObject (TYPE_10__*) ;
 int RemoveEntryList (int *) ;
 int RtlCopyMemory (int ,int *,int ) ;
 int RtlZeroMemory (int ,int) ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 scalar_t__ STATUS_SUCCESS ;
 int TDI_ADDRESS_LENGTH_IP ;
 int TDI_ADDRESS_TYPE_IP ;
 int TDI_RECEIVE_ENTIRE_MESSAGE ;
 int TI_DbgPrint (int ,char*) ;
 int UnlockObject (TYPE_10__*,int ) ;
 int stub1 (int ,scalar_t__,scalar_t__) ;
 int stub2 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ stub3 (int *,int,int *,int ,int *,int ,scalar_t__,scalar_t__,int *,int *,int *) ;

VOID DGDeliverData(
  PADDRESS_FILE AddrFile,
  PIP_ADDRESS SrcAddress,
  PIP_ADDRESS DstAddress,
  USHORT SrcPort,
  USHORT DstPort,
  PIP_PACKET IPPacket,
  UINT DataSize)
{
  KIRQL OldIrql;
  PTDI_IND_RECEIVE_DATAGRAM ReceiveHandler;
  PVOID HandlerContext;
  LONG AddressLength;
  PVOID SourceAddress;
  ULONG BytesTaken;
  NTSTATUS Status;
  PVOID DataBuffer;

  TI_DbgPrint(MAX_TRACE, ("Called.\n"));

  LockObject(AddrFile, &OldIrql);

  if (AddrFile->Protocol == IPPROTO_UDP)
    {
      DataBuffer = IPPacket->Data;
    }
  else
    {
      if (AddrFile->HeaderIncl)
          DataBuffer = IPPacket->Header;
      else
      {
          DataBuffer = IPPacket->Data;
          DataSize -= IPPacket->HeaderSize;
      }
    }

  if (!IsListEmpty(&AddrFile->ReceiveQueue))
    {
      PLIST_ENTRY CurrentEntry;
      PDATAGRAM_RECEIVE_REQUEST Current = ((void*)0);
      PTA_IP_ADDRESS RTAIPAddress;

      TI_DbgPrint(MAX_TRACE, ("There is a receive request.\n"));


      CurrentEntry = AddrFile->ReceiveQueue.Flink;
      while(CurrentEntry != &AddrFile->ReceiveQueue) {
          Current = CONTAINING_RECORD(CurrentEntry, DATAGRAM_RECEIVE_REQUEST, ListEntry);
          CurrentEntry = CurrentEntry->Flink;
   if( DstPort == AddrFile->Port &&
              (AddrIsEqual(DstAddress, &AddrFile->Address) ||
               AddrIsUnspecified(&AddrFile->Address) ||
               AddrIsUnspecified(DstAddress))) {


       RemoveEntryList(&Current->ListEntry);

              TI_DbgPrint(MAX_TRACE, ("Suitable receive request found.\n"));

              TI_DbgPrint(MAX_TRACE,
                           ("Target Buffer: %x, Source Buffer: %x, Size %d\n",
                            Current->Buffer, DataBuffer, DataSize));


       RtlCopyMemory( Current->Buffer,
        DataBuffer,
        MIN(Current->BufferSize, DataSize) );

       RTAIPAddress = (PTA_IP_ADDRESS)Current->ReturnInfo->RemoteAddress;
       RTAIPAddress->TAAddressCount = 1;
       RTAIPAddress->Address->AddressType = TDI_ADDRESS_TYPE_IP;
          RTAIPAddress->Address->AddressLength = TDI_ADDRESS_LENGTH_IP;
       RTAIPAddress->Address->Address->sin_port = SrcPort;
          RTAIPAddress->Address->Address->in_addr = SrcAddress->Address.IPv4Address;
          RtlZeroMemory(RTAIPAddress->Address->Address->sin_zero, 8);

       TI_DbgPrint(MAX_TRACE, ("(A: %08x) Addr %08x Port %04x\n",
          RTAIPAddress,
          SrcAddress->Address.IPv4Address, SrcPort));

              ReferenceObject(AddrFile);
              UnlockObject(AddrFile, OldIrql);


              if (Current->BufferSize < DataSize)
                  Current->Complete(Current->Context, STATUS_BUFFER_OVERFLOW, Current->BufferSize);
              else
                  Current->Complete(Current->Context, STATUS_SUCCESS, DataSize);

              LockObject(AddrFile, &OldIrql);
              DereferenceObject(AddrFile);
   }
      }

      UnlockObject(AddrFile, OldIrql);
    }
  else if (AddrFile->RegisteredReceiveDatagramHandler)
    {
      TI_DbgPrint(MAX_TRACE, ("Calling receive event handler.\n"));

      ReceiveHandler = AddrFile->ReceiveDatagramHandler;
      HandlerContext = AddrFile->ReceiveDatagramHandlerContext;

      if (SrcAddress->Type == IP_ADDRESS_V4)
        {
          AddressLength = sizeof(IPv4_RAW_ADDRESS);
          SourceAddress = &SrcAddress->Address.IPv4Address;
        }
      else
        {
          AddressLength = sizeof(IPv6_RAW_ADDRESS);
          SourceAddress = SrcAddress->Address.IPv6Address;
        }

      ReferenceObject(AddrFile);
      UnlockObject(AddrFile, OldIrql);

      Status = (*ReceiveHandler)(HandlerContext,
        AddressLength,
        SourceAddress,
        0,
        ((void*)0),
        TDI_RECEIVE_ENTIRE_MESSAGE,
        DataSize,
        DataSize,
        &BytesTaken,
        DataBuffer,
        ((void*)0));

      if (STATUS_SUCCESS != Status)
          TI_DbgPrint(MAX_TRACE, ("receive handler signaled failure with Status 0x%x\n", Status));

      DereferenceObject(AddrFile);
    }
  else
    {
      UnlockObject(AddrFile, OldIrql);
      TI_DbgPrint(MAX_TRACE, ("Discarding datagram.\n"));
    }

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));
}
