
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_14__ {int Lock; } ;
struct TYPE_13__ {TYPE_3__* Context; int DLComplete; } ;
struct TYPE_9__ {int Address; } ;
struct TYPE_12__ {int State; int LinkAddress; TYPE_2__* Interface; int PacketQueue; TYPE_1__ Address; } ;
struct TYPE_11__ {int Packet; } ;
struct TYPE_10__ {int Context; int (* Transmit ) (int ,int ,int ,int ,int ) ;} ;
typedef int* PULONG ;
typedef TYPE_3__* PNEIGHBOR_PACKET ;
typedef TYPE_4__* PNEIGHBOR_CACHE_ENTRY ;
typedef int * PLIST_ENTRY ;


 int ASSERT (int) ;
 TYPE_3__* CONTAINING_RECORD (int *,int ,int ) ;
 int * ExInterlockedRemoveHeadList (int *,int *) ;
 int LAN_PROTO_IPv4 ;
 int MID_TRACE ;
 int NBCompleteSend ;
 int NB_HASHMASK ;
 int NEIGHBOR_PACKET ;
 int NUD_INCOMPLETE ;
 TYPE_6__* NeighborCache ;
 int Next ;
 TYPE_5__* PC (int ) ;
 int TI_DbgPrint (int ,char*) ;
 int stub1 (int ,int ,int ,int ,int ) ;

VOID NBSendPackets( PNEIGHBOR_CACHE_ENTRY NCE ) {
    PLIST_ENTRY PacketEntry;
    PNEIGHBOR_PACKET Packet;
    UINT HashValue;

    ASSERT(!(NCE->State & NUD_INCOMPLETE));

    HashValue = *(PULONG)(&NCE->Address.Address);
    HashValue ^= HashValue >> 16;
    HashValue ^= HashValue >> 8;
    HashValue ^= HashValue >> 4;
    HashValue &= NB_HASHMASK;


    while ((PacketEntry = ExInterlockedRemoveHeadList(&NCE->PacketQueue,
                                              &NeighborCache[HashValue].Lock)) != ((void*)0))
    {
 Packet = CONTAINING_RECORD( PacketEntry, NEIGHBOR_PACKET, Next );

 TI_DbgPrint
     (MID_TRACE,
      ("PacketEntry: %x, NdisPacket %x\n",
       PacketEntry, Packet->Packet));

 PC(Packet->Packet)->DLComplete = NBCompleteSend;
 PC(Packet->Packet)->Context = Packet;

 NCE->Interface->Transmit
     ( NCE->Interface->Context,
       Packet->Packet,
       0,
       NCE->LinkAddress,
       LAN_PROTO_IPv4 );
    }
}
