
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {int Lock; } ;
struct TYPE_8__ {int Address; } ;
struct TYPE_10__ {int State; int PacketQueue; TYPE_1__ Address; } ;
struct TYPE_9__ {int Next; int Packet; int Context; int Complete; } ;
typedef int PVOID ;
typedef int* PULONG ;
typedef int PNEIGHBOR_PACKET_COMPLETE ;
typedef TYPE_2__* PNEIGHBOR_PACKET ;
typedef TYPE_3__* PNEIGHBOR_CACHE_ENTRY ;
typedef int PNDIS_PACKET ;
typedef int NEIGHBOR_PACKET ;
typedef int KIRQL ;
typedef int BOOLEAN ;


 int DEBUG_NCACHE ;
 TYPE_2__* ExAllocatePoolWithTag (int ,int,int ) ;
 int FALSE ;
 int InsertTailList (int *,int *) ;
 int NBSendPackets (TYPE_3__*) ;
 int NB_HASHMASK ;
 int NEIGHBOR_PACKET_TAG ;
 int NUD_INCOMPLETE ;
 TYPE_4__* NeighborCache ;
 int NonPagedPool ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

BOOLEAN NBQueuePacket(
  PNEIGHBOR_CACHE_ENTRY NCE,
  PNDIS_PACKET NdisPacket,
  PNEIGHBOR_PACKET_COMPLETE PacketComplete,
  PVOID PacketContext)
{
  KIRQL OldIrql;
  PNEIGHBOR_PACKET Packet;
  UINT HashValue;

  TI_DbgPrint
      (DEBUG_NCACHE,
       ("Called. NCE (0x%X)  NdisPacket (0x%X).\n", NCE, NdisPacket));

  Packet = ExAllocatePoolWithTag( NonPagedPool, sizeof(NEIGHBOR_PACKET),
                                  NEIGHBOR_PACKET_TAG );
  if( !Packet ) return FALSE;



  HashValue = *(PULONG)(&NCE->Address.Address);
  HashValue ^= HashValue >> 16;
  HashValue ^= HashValue >> 8;
  HashValue ^= HashValue >> 4;
  HashValue &= NB_HASHMASK;

  TcpipAcquireSpinLock(&NeighborCache[HashValue].Lock, &OldIrql);

  Packet->Complete = PacketComplete;
  Packet->Context = PacketContext;
  Packet->Packet = NdisPacket;
  InsertTailList( &NCE->PacketQueue, &Packet->Next );

  TcpipReleaseSpinLock(&NeighborCache[HashValue].Lock, OldIrql);

  if( !(NCE->State & NUD_INCOMPLETE) )
      NBSendPackets( NCE );

  return TRUE;
}
