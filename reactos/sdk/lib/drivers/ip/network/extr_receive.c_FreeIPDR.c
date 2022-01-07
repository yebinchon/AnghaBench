
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_11__ {scalar_t__ IPv4Header; int Packet; scalar_t__ ReturnPacket; TYPE_1__ FragmentListHead; TYPE_1__ HoleListHead; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PIP_FRAGMENT ;
typedef TYPE_2__* PIPDATAGRAM_REASSEMBLY ;
typedef TYPE_2__* PIPDATAGRAM_HOLE ;


 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DEBUG_IP ;
 int ExFreePoolWithTag (scalar_t__,int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_2__*) ;
 int FreeNdisPacket (int ) ;
 int IPDATAGRAM_HOLE ;
 int IPDRList ;
 int IPFragmentList ;
 int IPHoleList ;
 int IP_FRAGMENT ;
 int ListEntry ;
 int NdisReturnPackets (int *,int) ;
 int PACKET_BUFFER_TAG ;
 int RemoveEntryList (TYPE_1__*) ;
 int TI_DbgPrint (int ,char*) ;

VOID FreeIPDR(
  PIPDATAGRAM_REASSEMBLY IPDR)





{
  PLIST_ENTRY CurrentEntry;
  PLIST_ENTRY NextEntry;
  PIPDATAGRAM_HOLE CurrentH;
  PIP_FRAGMENT CurrentF;

  TI_DbgPrint(DEBUG_IP, ("Freeing IP datagram reassembly descriptor (0x%X).\n", IPDR));


  CurrentEntry = IPDR->HoleListHead.Flink;
  while (CurrentEntry != &IPDR->HoleListHead) {
    NextEntry = CurrentEntry->Flink;
   CurrentH = CONTAINING_RECORD(CurrentEntry, IPDATAGRAM_HOLE, ListEntry);

    RemoveEntryList(CurrentEntry);

    TI_DbgPrint(DEBUG_IP, ("Freeing hole descriptor at (0x%X).\n", CurrentH));


    ExFreeToNPagedLookasideList(&IPHoleList, CurrentH);

    CurrentEntry = NextEntry;
  }


  CurrentEntry = IPDR->FragmentListHead.Flink;
  while (CurrentEntry != &IPDR->FragmentListHead) {
    NextEntry = CurrentEntry->Flink;
   CurrentF = CONTAINING_RECORD(CurrentEntry, IP_FRAGMENT, ListEntry);

    RemoveEntryList(CurrentEntry);

    TI_DbgPrint(DEBUG_IP, ("Freeing fragment packet at (0x%X).\n", CurrentF->Packet));


    if (CurrentF->ReturnPacket)
    {
        NdisReturnPackets(&CurrentF->Packet, 1);
    }
    else
    {
        FreeNdisPacket(CurrentF->Packet);
    }

    TI_DbgPrint(DEBUG_IP, ("Freeing fragment at (0x%X).\n", CurrentF));


    ExFreeToNPagedLookasideList(&IPFragmentList, CurrentF);
    CurrentEntry = NextEntry;
  }

  if (IPDR->IPv4Header)
  {
      TI_DbgPrint(DEBUG_IP, ("Freeing IPDR header at (0x%X).\n", IPDR->IPv4Header));
      ExFreePoolWithTag(IPDR->IPv4Header, PACKET_BUFFER_TAG);
  }

  TI_DbgPrint(DEBUG_IP, ("Freeing IPDR data at (0x%X).\n", IPDR));

  ExFreeToNPagedLookasideList(&IPDRList, IPDR);
}
