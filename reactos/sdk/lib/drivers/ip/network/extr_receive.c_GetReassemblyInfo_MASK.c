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
struct TYPE_13__ {scalar_t__ Id; scalar_t__ Protocol; int /*<<< orphan*/  DstAddr; int /*<<< orphan*/  SrcAddr; } ;
struct TYPE_12__ {int /*<<< orphan*/  DstAddr; int /*<<< orphan*/  SrcAddr; int /*<<< orphan*/  Header; } ;
struct TYPE_11__ {scalar_t__ Id; scalar_t__ Protocol; } ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  TYPE_2__* PIPv4_HEADER ;
typedef  TYPE_3__* PIP_PACKET ;
typedef  TYPE_4__* PIPDATAGRAM_REASSEMBLY ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_IP ; 
 int /*<<< orphan*/  IPDATAGRAM_REASSEMBLY ; 
 int /*<<< orphan*/  ListEntry ; 
 TYPE_1__ ReassemblyListHead ; 
 int /*<<< orphan*/  ReassemblyListLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

PIPDATAGRAM_REASSEMBLY FUNC5(
  PIP_PACKET IPPacket)
/*
 * FUNCTION: Returns a pointer to an IP datagram reassembly structure
 * ARGUMENTS:
 *     IPPacket = Pointer to IP packet
 * NOTES:
 *     A datagram is identified by four paramters, which are
 *     Source and destination address, protocol number and
 *     identification number
 */
{
  KIRQL OldIrql;
  PLIST_ENTRY CurrentEntry;
  PIPDATAGRAM_REASSEMBLY Current;
  PIPv4_HEADER Header = (PIPv4_HEADER)IPPacket->Header;

  FUNC2(DEBUG_IP, ("Searching for IPDR for IP packet at (0x%X).\n", IPPacket));

  FUNC3(&ReassemblyListLock, &OldIrql);

  /* FIXME: Assume IPv4 */

  CurrentEntry = ReassemblyListHead.Flink;
  while (CurrentEntry != &ReassemblyListHead) {
	  Current = FUNC1(CurrentEntry, IPDATAGRAM_REASSEMBLY, ListEntry);
    if (FUNC0(&IPPacket->SrcAddr, &Current->SrcAddr) &&
      (Header->Id == Current->Id) &&
      (Header->Protocol == Current->Protocol) &&
      (FUNC0(&IPPacket->DstAddr, &Current->DstAddr))) {
      FUNC4(&ReassemblyListLock, OldIrql);

      return Current;
    }
    CurrentEntry = CurrentEntry->Flink;
  }

  FUNC4(&ReassemblyListLock, OldIrql);

  return NULL;
}