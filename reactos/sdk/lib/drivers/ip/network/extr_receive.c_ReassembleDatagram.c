
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_13__ {int HeaderSize; TYPE_1__ FragmentListHead; int * IPv4Header; int DstAddr; int SrcAddr; scalar_t__ DataSize; } ;
struct TYPE_12__ {int Size; int PacketOffset; int Packet; scalar_t__ Offset; } ;
struct TYPE_11__ {int HeaderSize; scalar_t__ Data; int * Header; int MappedHeader; int (* Free ) (TYPE_2__*) ;scalar_t__ TotalSize; int DstAddr; int SrcAddr; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PIP_PACKET ;
typedef TYPE_3__* PIP_FRAGMENT ;
typedef TYPE_4__* PIPDATAGRAM_REASSEMBLY ;
typedef scalar_t__ PCHAR ;
typedef int IP_ADDRESS ;
typedef int BOOLEAN ;


 TYPE_3__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int CopyPacketToBuffer (scalar_t__,int ,int ,int ) ;
 int DEBUG_IP ;
 int * ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int FALSE ;
 int IP_FRAGMENT ;
 int ListEntry ;
 int MIN_TRACE ;
 int PACKET_BUFFER_TAG ;
 int PAGED_CODE () ;
 int PagedPool ;
 int RtlCopyMemory (int *,int *,int) ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 int stub1 (TYPE_2__*) ;

BOOLEAN
ReassembleDatagram(
  PIP_PACKET IPPacket,
  PIPDATAGRAM_REASSEMBLY IPDR)
{
  PLIST_ENTRY CurrentEntry;
  PIP_FRAGMENT Fragment;
  PCHAR Data;

  PAGED_CODE();

  TI_DbgPrint(DEBUG_IP, ("Reassembling datagram from IPDR at (0x%X).\n", IPDR));
  TI_DbgPrint(DEBUG_IP, ("IPDR->HeaderSize = %d\n", IPDR->HeaderSize));
  TI_DbgPrint(DEBUG_IP, ("IPDR->DataSize = %d\n", IPDR->DataSize));

  IPPacket->TotalSize = IPDR->HeaderSize + IPDR->DataSize;
  IPPacket->HeaderSize = IPDR->HeaderSize;

  RtlCopyMemory(&IPPacket->SrcAddr, &IPDR->SrcAddr, sizeof(IP_ADDRESS));
  RtlCopyMemory(&IPPacket->DstAddr, &IPDR->DstAddr, sizeof(IP_ADDRESS));


  IPPacket->Header = ExAllocatePoolWithTag(PagedPool, IPPacket->TotalSize, PACKET_BUFFER_TAG);
  if (!IPPacket->Header) {
    TI_DbgPrint(MIN_TRACE, ("Insufficient resources.\n"));
    (*IPPacket->Free)(IPPacket);
    return FALSE;
  }
  IPPacket->MappedHeader = FALSE;


  RtlCopyMemory(IPPacket->Header, IPDR->IPv4Header, IPDR->HeaderSize);

  Data = (PVOID)((ULONG_PTR)IPPacket->Header + IPDR->HeaderSize);
  IPPacket->Data = Data;


  CurrentEntry = IPDR->FragmentListHead.Flink;
  while (CurrentEntry != &IPDR->FragmentListHead) {
    Fragment = CONTAINING_RECORD(CurrentEntry, IP_FRAGMENT, ListEntry);


    CopyPacketToBuffer(Data + Fragment->Offset,
                       Fragment->Packet,
                       Fragment->PacketOffset,
                       Fragment->Size);

    CurrentEntry = CurrentEntry->Flink;
  }

  return TRUE;
}
