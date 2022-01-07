
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UDP_HEADER ;
struct TYPE_15__ {int Type; } ;
struct TYPE_14__ {int (* Free ) (TYPE_1__*) ;int NdisPacket; scalar_t__ TotalSize; } ;
typedef TYPE_1__* PIP_PACKET ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef int PCHAR ;
typedef int PADDRESS_FILE ;
typedef int NTSTATUS ;
typedef int IPv4_HEADER ;


 int A2S (TYPE_2__*) ;
 int AddUDPHeaderIPv4 (int ,TYPE_2__*,int ,TYPE_2__*,int ,TYPE_1__*,int ,scalar_t__) ;
 int AllocatePacketWithBuffer (int *,int *,scalar_t__) ;
 int DISPLAY_IP_PACKET (TYPE_1__*) ;
 int IPInitializePacket (TYPE_1__*,int) ;


 int MAX_TRACE ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TI_DbgPrint (int ,char*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

NTSTATUS BuildUDPPacket(
    PADDRESS_FILE AddrFile,
    PIP_PACKET Packet,
    PIP_ADDRESS RemoteAddress,
    USHORT RemotePort,
    PIP_ADDRESS LocalAddress,
    USHORT LocalPort,
    PCHAR DataBuffer,
    UINT DataLen )
{
    NTSTATUS Status;

    TI_DbgPrint(MAX_TRACE, ("Called.\n"));


    IPInitializePacket(Packet, 129);

    Packet->TotalSize = sizeof(IPv4_HEADER) + sizeof(UDP_HEADER) + DataLen;


    Status = AllocatePacketWithBuffer(&Packet->NdisPacket,
                                      ((void*)0),
                                      Packet->TotalSize );

    if( !NT_SUCCESS(Status) )
    {
        Packet->Free(Packet);
        return Status;
    }

    TI_DbgPrint(MID_TRACE, ("Allocated packet: %x\n", Packet->NdisPacket));
    TI_DbgPrint(MID_TRACE, ("Local Addr : %s\n", A2S(LocalAddress)));
    TI_DbgPrint(MID_TRACE, ("Remote Addr: %s\n", A2S(RemoteAddress)));

    switch (RemoteAddress->Type) {
        case 129:
            Status = AddUDPHeaderIPv4(AddrFile, RemoteAddress, RemotePort,
                                      LocalAddress, LocalPort, Packet, DataBuffer, DataLen);
            break;
        case 128:

            TI_DbgPrint(MIN_TRACE, ("IPv6 UDP datagrams are not supported.\n"));
        default:
            Status = STATUS_UNSUCCESSFUL;
            break;
    }
    if (!NT_SUCCESS(Status)) {
        TI_DbgPrint(MIN_TRACE, ("Cannot add UDP header. Status = (0x%X)\n",
                                Status));
        Packet->Free(Packet);
        return Status;
    }

    TI_DbgPrint(MID_TRACE, ("Displaying packet\n"));

    DISPLAY_IP_PACKET(Packet);

    TI_DbgPrint(MID_TRACE, ("Leaving\n"));

    return STATUS_SUCCESS;
}
