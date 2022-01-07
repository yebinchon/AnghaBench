
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int Context; int (* Complete ) (int ,int ,int ) ;} ;
struct TYPE_8__ {int Protocol; int Port; int Context; int (* Complete ) (int ,int ,int ) ;int Lock; int ReceiveQueue; int ListEntry; int Connection; } ;
typedef TYPE_1__* PVOID ;
typedef int PLIST_ENTRY ;
typedef TYPE_1__* PDATAGRAM_SEND_REQUEST ;
typedef TYPE_3__* PDATAGRAM_RECEIVE_REQUEST ;
typedef TYPE_1__* PADDRESS_FILE ;
typedef int KIRQL ;


 int ADDR_FILE_TAG ;
 int ASSERT (int) ;
 int AddressFileListLock ;
 void* CONTAINING_RECORD (int ,int ,int ) ;
 int DATAGRAM_RECEIVE_REQUEST ;
 int DATAGRAM_SEND_REQUEST ;
 int DATAGRAM_SEND_TAG ;
 int DEBUG_ADDRFILE ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int ExInterlockedRemoveHeadList (int *,int *) ;


 int ListEntry ;
 int MID_TRACE ;
 int RemoveEntityByContext (TYPE_1__*) ;
 int RemoveEntryList (int *) ;
 int STATUS_CANCELLED ;
 int TCPFreePort (int ) ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;
 int UDPFreePort (int ) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;

VOID AddrFileFree(
    PVOID Object)





{
  PADDRESS_FILE AddrFile = Object;
  KIRQL OldIrql;
  PDATAGRAM_RECEIVE_REQUEST ReceiveRequest;
  PDATAGRAM_SEND_REQUEST SendRequest;
  PLIST_ENTRY CurrentEntry;

  TI_DbgPrint(MID_TRACE, ("Called.\n"));


  ASSERT(!AddrFile->Connection);


  TcpipAcquireSpinLock(&AddressFileListLock, &OldIrql);
  RemoveEntryList(&AddrFile->ListEntry);
  TcpipReleaseSpinLock(&AddressFileListLock, OldIrql);





  TI_DbgPrint(DEBUG_ADDRFILE, ("Aborting receive requests on AddrFile at (0x%X).\n", AddrFile));


  while ((CurrentEntry = ExInterlockedRemoveHeadList(&AddrFile->ReceiveQueue, &AddrFile->Lock))) {
    ReceiveRequest = CONTAINING_RECORD(CurrentEntry, DATAGRAM_RECEIVE_REQUEST, ListEntry);
    (*ReceiveRequest->Complete)(ReceiveRequest->Context, STATUS_CANCELLED, 0);

  }

  TI_DbgPrint(DEBUG_ADDRFILE, ("Aborting send requests on address file at (0x%X).\n", AddrFile));


  while ((CurrentEntry = ExInterlockedRemoveHeadList(&AddrFile->ReceiveQueue, &AddrFile->Lock))) {
    SendRequest = CONTAINING_RECORD(CurrentEntry, DATAGRAM_SEND_REQUEST, ListEntry);
    (*SendRequest->Complete)(SendRequest->Context, STATUS_CANCELLED, 0);
    ExFreePoolWithTag(SendRequest, DATAGRAM_SEND_TAG);
  }


  switch (AddrFile->Protocol) {
  case 129:
    if (AddrFile->Port)
    {
        TCPFreePort(AddrFile->Port);
    }
    break;

  case 128:
    UDPFreePort( AddrFile->Port );
    break;
  }

  RemoveEntityByContext(AddrFile);

  ExFreePoolWithTag(Object, ADDR_FILE_TAG);
}
