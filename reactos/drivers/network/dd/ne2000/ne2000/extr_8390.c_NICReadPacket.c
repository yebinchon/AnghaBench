
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int NextPacket; int PacketLength; int Status; } ;
struct TYPE_8__ {int PacketOffset; int NextPacket; int CurrentPage; TYPE_1__ PacketHeader; int MiniportAdapterHandle; } ;
typedef int PUCHAR ;
typedef TYPE_2__* PNIC_ADAPTER ;
typedef int PACKET_HEADER ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int MAX_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NICIndicatePacket (TYPE_2__*) ;
 int NICReadData (TYPE_2__*,int ,int,int) ;
 int NICSetBoundaryPage (TYPE_2__*) ;
 scalar_t__ TRUE ;

__attribute__((used)) static VOID NICReadPacket(
    PNIC_ADAPTER Adapter)





{
    BOOLEAN SkipPacket = FALSE;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));


    Adapter->PacketOffset = Adapter->NextPacket << 8;
    NICReadData(Adapter,
                (PUCHAR)&Adapter->PacketHeader,
                Adapter->PacketOffset,
                sizeof(PACKET_HEADER));

    NDIS_DbgPrint(MAX_TRACE, ("HEADER: (Status)       (0x%X)\n", Adapter->PacketHeader.Status));
    NDIS_DbgPrint(MAX_TRACE, ("HEADER: (NextPacket)   (0x%X)\n", Adapter->PacketHeader.NextPacket));
    NDIS_DbgPrint(MAX_TRACE, ("HEADER: (PacketLength) (0x%X)\n", Adapter->PacketHeader.PacketLength));

    if (Adapter->PacketHeader.PacketLength < 64 ||
        Adapter->PacketHeader.PacketLength > 1518) {
        NDIS_DbgPrint(MAX_TRACE, ("Bogus packet size (%d).\n",
            Adapter->PacketHeader.PacketLength));
        SkipPacket = TRUE;
    }

    if (SkipPacket) {

        Adapter->NextPacket = Adapter->CurrentPage;
    } else {
 NDIS_DbgPrint(MAX_TRACE,("Adapter->MiniportAdapterHandle: %x\n",
     Adapter->MiniportAdapterHandle));
        NICIndicatePacket(Adapter);


        Adapter->NextPacket = Adapter->PacketHeader.NextPacket;
    }


    NICSetBoundaryPage(Adapter);
}
