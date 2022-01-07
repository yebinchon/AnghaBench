
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ Id; scalar_t__ Protocol; int DstAddr; int SrcAddr; } ;
struct TYPE_12__ {int DstAddr; int SrcAddr; int Header; } ;
struct TYPE_11__ {scalar_t__ Id; scalar_t__ Protocol; } ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PIPv4_HEADER ;
typedef TYPE_3__* PIP_PACKET ;
typedef TYPE_4__* PIPDATAGRAM_REASSEMBLY ;
typedef int KIRQL ;


 scalar_t__ AddrIsEqual (int *,int *) ;
 TYPE_4__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DEBUG_IP ;
 int IPDATAGRAM_REASSEMBLY ;
 int ListEntry ;
 TYPE_1__ ReassemblyListHead ;
 int ReassemblyListLock ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

PIPDATAGRAM_REASSEMBLY GetReassemblyInfo(
  PIP_PACKET IPPacket)
{
  KIRQL OldIrql;
  PLIST_ENTRY CurrentEntry;
  PIPDATAGRAM_REASSEMBLY Current;
  PIPv4_HEADER Header = (PIPv4_HEADER)IPPacket->Header;

  TI_DbgPrint(DEBUG_IP, ("Searching for IPDR for IP packet at (0x%X).\n", IPPacket));

  TcpipAcquireSpinLock(&ReassemblyListLock, &OldIrql);



  CurrentEntry = ReassemblyListHead.Flink;
  while (CurrentEntry != &ReassemblyListHead) {
   Current = CONTAINING_RECORD(CurrentEntry, IPDATAGRAM_REASSEMBLY, ListEntry);
    if (AddrIsEqual(&IPPacket->SrcAddr, &Current->SrcAddr) &&
      (Header->Id == Current->Id) &&
      (Header->Protocol == Current->Protocol) &&
      (AddrIsEqual(&IPPacket->DstAddr, &Current->DstAddr))) {
      TcpipReleaseSpinLock(&ReassemblyListLock, OldIrql);

      return Current;
    }
    CurrentEntry = CurrentEntry->Flink;
  }

  TcpipReleaseSpinLock(&ReassemblyListLock, OldIrql);

  return ((void*)0);
}
