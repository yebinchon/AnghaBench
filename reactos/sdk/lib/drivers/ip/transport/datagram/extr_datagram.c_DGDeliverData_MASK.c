#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ UINT ;
struct TYPE_34__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  (* Complete ) (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ;scalar_t__ BufferSize; TYPE_1__* ReturnInfo; int /*<<< orphan*/  Buffer; int /*<<< orphan*/  ListEntry; } ;
struct TYPE_29__ {int /*<<< orphan*/ * IPv6Address; int /*<<< orphan*/  IPv4Address; } ;
struct TYPE_33__ {scalar_t__ Type; TYPE_4__ Address; } ;
struct TYPE_32__ {scalar_t__ HeaderSize; int /*<<< orphan*/ * Data; int /*<<< orphan*/ * Header; } ;
struct TYPE_31__ {struct TYPE_31__* Flink; } ;
struct TYPE_30__ {int TAAddressCount; TYPE_3__* Address; } ;
struct TYPE_28__ {TYPE_2__* Address; int /*<<< orphan*/  AddressLength; int /*<<< orphan*/  AddressType; } ;
struct TYPE_27__ {int /*<<< orphan*/  sin_zero; int /*<<< orphan*/  in_addr; scalar_t__ sin_port; } ;
struct TYPE_26__ {scalar_t__ RemoteAddress; } ;
struct TYPE_25__ {scalar_t__ Protocol; scalar_t__ Port; scalar_t__ (* ReceiveDatagramHandler ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * ReceiveDatagramHandlerContext; scalar_t__ RegisteredReceiveDatagramHandler; TYPE_8__ Address; TYPE_6__ ReceiveQueue; scalar_t__ HeaderIncl; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ (* PTDI_IND_RECEIVE_DATAGRAM ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  TYPE_5__* PTA_IP_ADDRESS ;
typedef  TYPE_6__* PLIST_ENTRY ;
typedef  TYPE_7__* PIP_PACKET ;
typedef  TYPE_8__* PIP_ADDRESS ;
typedef  TYPE_9__* PDATAGRAM_RECEIVE_REQUEST ;
typedef  TYPE_10__* PADDRESS_FILE ;
typedef  scalar_t__ NTSTATUS ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  int /*<<< orphan*/  IPv6_RAW_ADDRESS ;
typedef  int /*<<< orphan*/  IPv4_RAW_ADDRESS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_8__*,TYPE_8__*) ; 
 scalar_t__ FUNC1 (TYPE_8__*) ; 
 TYPE_9__* FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DATAGRAM_RECEIVE_REQUEST ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*) ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ IP_ADDRESS_V4 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  TDI_ADDRESS_LENGTH_IP ; 
 int /*<<< orphan*/  TDI_ADDRESS_TYPE_IP ; 
 int /*<<< orphan*/  TDI_RECEIVE_ENTIRE_MESSAGE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

VOID FUNC16(
  PADDRESS_FILE AddrFile,
  PIP_ADDRESS SrcAddress,
  PIP_ADDRESS DstAddress,
  USHORT SrcPort,
  USHORT DstPort,
  PIP_PACKET IPPacket,
  UINT DataSize)
/*
 * FUNCTION: Delivers datagram data to a user
 * ARGUMENTS:
 *     AddrFile = Address file to deliver data to
 *     Address  = Remote address the packet came from
 *     IPPacket = Pointer to IP packet to deliver
 *     DataSize = Number of bytes in data area
 *                (incl. IP header for raw IP file objects)
 * NOTES:
 *     If there is a receive request, then we copy the data to the
 *     buffer supplied by the user and complete the receive request.
 *     If no suitable receive request exists, then we call the event
 *     handler if it exists, otherwise we drop the packet.
 */
{
  KIRQL OldIrql;
  PTDI_IND_RECEIVE_DATAGRAM ReceiveHandler;
  PVOID HandlerContext;
  LONG AddressLength;
  PVOID SourceAddress;
  ULONG BytesTaken;
  NTSTATUS Status;
  PVOID DataBuffer;

  FUNC11(MAX_TRACE, ("Called.\n"));

  FUNC5(AddrFile, &OldIrql);

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

  if (!FUNC4(&AddrFile->ReceiveQueue))
    {
      PLIST_ENTRY CurrentEntry;
      PDATAGRAM_RECEIVE_REQUEST Current = NULL;
      PTA_IP_ADDRESS RTAIPAddress;

      FUNC11(MAX_TRACE, ("There is a receive request.\n"));

      /* Search receive request list to find a match */
      CurrentEntry = AddrFile->ReceiveQueue.Flink;
      while(CurrentEntry != &AddrFile->ReceiveQueue) {
          Current = FUNC2(CurrentEntry, DATAGRAM_RECEIVE_REQUEST, ListEntry);
          CurrentEntry = CurrentEntry->Flink;
	  if( DstPort == AddrFile->Port &&
              (FUNC0(DstAddress, &AddrFile->Address) ||
               FUNC1(&AddrFile->Address) ||
               FUNC1(DstAddress))) {

	      /* Remove the request from the queue */
	      FUNC8(&Current->ListEntry);

              FUNC11(MAX_TRACE, ("Suitable receive request found.\n"));

              FUNC11(MAX_TRACE,
                           ("Target Buffer: %x, Source Buffer: %x, Size %d\n",
                            Current->Buffer, DataBuffer, DataSize));

              /* Copy the data into buffer provided by the user */
	      FUNC9( Current->Buffer,
			     DataBuffer,
			     FUNC6(Current->BufferSize, DataSize) );

	      RTAIPAddress = (PTA_IP_ADDRESS)Current->ReturnInfo->RemoteAddress;
	      RTAIPAddress->TAAddressCount = 1;
	      RTAIPAddress->Address->AddressType = TDI_ADDRESS_TYPE_IP;
          RTAIPAddress->Address->AddressLength = TDI_ADDRESS_LENGTH_IP;
	      RTAIPAddress->Address->Address->sin_port = SrcPort;
          RTAIPAddress->Address->Address->in_addr = SrcAddress->Address.IPv4Address;
          FUNC10(RTAIPAddress->Address->Address->sin_zero, 8);

	      FUNC11(MAX_TRACE, ("(A: %08x) Addr %08x Port %04x\n",
				      RTAIPAddress,
				      SrcAddress->Address.IPv4Address, SrcPort));

              FUNC7(AddrFile);
              FUNC12(AddrFile, OldIrql);

              /* Complete the receive request */
              if (Current->BufferSize < DataSize)
                  Current->Complete(Current->Context, STATUS_BUFFER_OVERFLOW, Current->BufferSize);
              else
                  Current->Complete(Current->Context, STATUS_SUCCESS, DataSize);

              FUNC5(AddrFile, &OldIrql);
              FUNC3(AddrFile);
	  }
      }

      FUNC12(AddrFile, OldIrql);
    }
  else if (AddrFile->RegisteredReceiveDatagramHandler)
    {
      FUNC11(MAX_TRACE, ("Calling receive event handler.\n"));

      ReceiveHandler = AddrFile->ReceiveDatagramHandler;
      HandlerContext = AddrFile->ReceiveDatagramHandlerContext;

      if (SrcAddress->Type == IP_ADDRESS_V4)
        {
          AddressLength = sizeof(IPv4_RAW_ADDRESS);
          SourceAddress = &SrcAddress->Address.IPv4Address;
        }
      else /* (Address->Type == IP_ADDRESS_V6) */
        {
          AddressLength = sizeof(IPv6_RAW_ADDRESS);
          SourceAddress = SrcAddress->Address.IPv6Address;
        }

      FUNC7(AddrFile);
      FUNC12(AddrFile, OldIrql);

      Status = (*ReceiveHandler)(HandlerContext,
        AddressLength,
        SourceAddress,
        0,
        NULL,
        TDI_RECEIVE_ENTIRE_MESSAGE,
        DataSize,
        DataSize,
        &BytesTaken,
        DataBuffer,
        NULL);

      if (STATUS_SUCCESS != Status)
          FUNC11(MAX_TRACE, ("receive handler signaled failure with Status 0x%x\n", Status));

      FUNC3(AddrFile);
    }
  else
    {
      FUNC12(AddrFile, OldIrql);
      FUNC11(MAX_TRACE, ("Discarding datagram.\n"));
    }

  FUNC11(MAX_TRACE, ("Leaving.\n"));
}