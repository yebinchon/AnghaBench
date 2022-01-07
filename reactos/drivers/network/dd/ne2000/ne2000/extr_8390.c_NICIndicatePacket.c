
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_5__ {scalar_t__ PacketLength; } ;
struct TYPE_6__ {scalar_t__ LookaheadSize; int * Lookahead; int MiniportAdapterHandle; TYPE_1__ PacketHeader; scalar_t__ PacketOffset; } ;
typedef int * PVOID ;
typedef int PUCHAR ;
typedef TYPE_2__* PNIC_ADAPTER ;
typedef int PACKET_HEADER ;


 int DRIVER_HEADER_SIZE ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int NICReadData (TYPE_2__*,int ,scalar_t__,int) ;
 int NdisMEthIndicateReceive (int ,int *,int *,int,int *,int,int) ;
 int i ;

__attribute__((used)) static VOID NICIndicatePacket(
    PNIC_ADAPTER Adapter)





{
    UINT IndicateLength;

    IndicateLength = (Adapter->PacketHeader.PacketLength <
        (Adapter->LookaheadSize + DRIVER_HEADER_SIZE))?
        (Adapter->PacketHeader.PacketLength) :
        (Adapter->LookaheadSize + DRIVER_HEADER_SIZE);


    NICReadData(Adapter,
                (PUCHAR)&Adapter->Lookahead,
                Adapter->PacketOffset + sizeof(PACKET_HEADER),
                IndicateLength + DRIVER_HEADER_SIZE);

    NDIS_DbgPrint(MID_TRACE, ("Indicating (%d) bytes.\n", IndicateLength));
    NDIS_DbgPrint(MID_TRACE, ("ne2000!NICIndicatePacket: Indicating (%d) bytes.\n", IndicateLength));
    if (IndicateLength >= DRIVER_HEADER_SIZE) {
 NDIS_DbgPrint(MAX_TRACE,("Adapter->MiniportAdapterHandle: %x\n",
     Adapter->MiniportAdapterHandle));
        NdisMEthIndicateReceive(Adapter->MiniportAdapterHandle,
                                ((void*)0),
                                (PVOID)&Adapter->Lookahead,
                                DRIVER_HEADER_SIZE,
                                (PVOID)&Adapter->Lookahead[DRIVER_HEADER_SIZE],
                                IndicateLength - DRIVER_HEADER_SIZE,
                                Adapter->PacketHeader.PacketLength - DRIVER_HEADER_SIZE);
    } else {
        NdisMEthIndicateReceive(Adapter->MiniportAdapterHandle,
                                ((void*)0),
                                (PVOID)&Adapter->Lookahead,
                                IndicateLength,
                                ((void*)0),
                                0,
                                0);
    }
}
