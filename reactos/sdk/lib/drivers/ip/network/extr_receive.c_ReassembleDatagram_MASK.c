#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_13__ {int HeaderSize; TYPE_1__ FragmentListHead; int /*<<< orphan*/ * IPv4Header; int /*<<< orphan*/  DstAddr; int /*<<< orphan*/  SrcAddr; scalar_t__ DataSize; } ;
struct TYPE_12__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  PacketOffset; int /*<<< orphan*/  Packet; scalar_t__ Offset; } ;
struct TYPE_11__ {int HeaderSize; scalar_t__ Data; int /*<<< orphan*/ * Header; int /*<<< orphan*/  MappedHeader; int /*<<< orphan*/  (* Free ) (TYPE_2__*) ;scalar_t__ TotalSize; int /*<<< orphan*/  DstAddr; int /*<<< orphan*/  SrcAddr; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  TYPE_2__* PIP_PACKET ;
typedef  TYPE_3__* PIP_FRAGMENT ;
typedef  TYPE_4__* PIPDATAGRAM_REASSEMBLY ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  IP_ADDRESS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_IP ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IP_FRAGMENT ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  PACKET_BUFFER_TAG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

BOOLEAN
FUNC7(
  PIP_PACKET             IPPacket,
  PIPDATAGRAM_REASSEMBLY IPDR)
/*
 * FUNCTION: Reassembles an IP datagram
 * ARGUMENTS:
 *     IPDR = Pointer to IP datagram reassembly structure
 * NOTES:
 *     This routine concatenates fragments into a complete IP datagram.
 *     The lock is held when this routine is called
 * RETURNS:
 *     Pointer to IP packet, NULL if there was not enough free resources
 * NOTES:
 *     At this point, header is expected to point to the IP header
 */
{
  PLIST_ENTRY CurrentEntry;
  PIP_FRAGMENT Fragment;
  PCHAR Data;

  FUNC3();

  FUNC5(DEBUG_IP, ("Reassembling datagram from IPDR at (0x%X).\n", IPDR));
  FUNC5(DEBUG_IP, ("IPDR->HeaderSize = %d\n", IPDR->HeaderSize));
  FUNC5(DEBUG_IP, ("IPDR->DataSize = %d\n", IPDR->DataSize));

  IPPacket->TotalSize  = IPDR->HeaderSize + IPDR->DataSize;
  IPPacket->HeaderSize = IPDR->HeaderSize;

  FUNC4(&IPPacket->SrcAddr, &IPDR->SrcAddr, sizeof(IP_ADDRESS));
  FUNC4(&IPPacket->DstAddr, &IPDR->DstAddr, sizeof(IP_ADDRESS));

  /* Allocate space for full IP datagram */
  IPPacket->Header = FUNC2(PagedPool, IPPacket->TotalSize, PACKET_BUFFER_TAG);
  if (!IPPacket->Header) {
    FUNC5(MIN_TRACE, ("Insufficient resources.\n"));
    (*IPPacket->Free)(IPPacket);
    return FALSE;
  }
  IPPacket->MappedHeader = FALSE;

  /* Copy the header into the buffer */
  FUNC4(IPPacket->Header, IPDR->IPv4Header, IPDR->HeaderSize);

  Data = (PVOID)((ULONG_PTR)IPPacket->Header + IPDR->HeaderSize);
  IPPacket->Data = Data;

  /* Copy data from all fragments into buffer */
  CurrentEntry = IPDR->FragmentListHead.Flink;
  while (CurrentEntry != &IPDR->FragmentListHead) {
    Fragment = FUNC0(CurrentEntry, IP_FRAGMENT, ListEntry);

    /* Copy fragment data into datagram buffer */
    FUNC1(Data + Fragment->Offset,
                       Fragment->Packet,
                       Fragment->PacketOffset,
                       Fragment->Size);

    CurrentEntry = CurrentEntry->Flink;
  }

  return TRUE;
}