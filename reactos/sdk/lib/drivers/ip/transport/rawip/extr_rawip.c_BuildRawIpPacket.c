
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_18__ {int Protocol; } ;
struct TYPE_17__ {int Type; } ;
struct TYPE_16__ {int Flags; scalar_t__ Data; scalar_t__ Header; int (* Free ) (TYPE_1__*) ;int NdisPacket; scalar_t__ TotalSize; } ;
typedef int PVOID ;
typedef TYPE_1__* PIP_PACKET ;
typedef TYPE_2__* PIP_ADDRESS ;
typedef scalar_t__ PCHAR ;
typedef TYPE_3__* PADDRESS_FILE ;
typedef int NTSTATUS ;
typedef int IPv4_HEADER ;


 int A2S (TYPE_2__*) ;
 int AddGenericHeaderIPv4 (TYPE_3__*,TYPE_2__*,int ,TYPE_2__*,int ,TYPE_1__*,int ,int ,int ,int *) ;
 int AllocatePacketWithBuffer (int *,int *,scalar_t__) ;
 int DISPLAY_IP_PACKET (TYPE_1__*) ;
 int IPInitializePacket (TYPE_1__*,int) ;


 int IP_PACKET_FLAG_RAW ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int NT_SUCCESS (int ) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TI_DbgPrint (int ,char*) ;
 int stub1 (TYPE_1__*) ;

NTSTATUS BuildRawIpPacket(
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
    PCHAR Payload;

    TI_DbgPrint(MAX_TRACE, ("Called.\n"));


    IPInitializePacket(Packet, 129);

    Packet->TotalSize = sizeof(IPv4_HEADER) + DataLen;


    Status = AllocatePacketWithBuffer( &Packet->NdisPacket,
           ((void*)0),
           Packet->TotalSize );

    if( !NT_SUCCESS(Status) ) return Status;

    TI_DbgPrint(MID_TRACE, ("Allocated packet: %x\n", Packet->NdisPacket));
    TI_DbgPrint(MID_TRACE, ("Local Addr : %s\n", A2S(LocalAddress)));
    TI_DbgPrint(MID_TRACE, ("Remote Addr: %s\n", A2S(RemoteAddress)));

    switch (RemoteAddress->Type) {
    case 129:
 Status = AddGenericHeaderIPv4
            (AddrFile, RemoteAddress, RemotePort,
             LocalAddress, LocalPort, Packet, DataLen,
             AddrFile->Protocol,
             0, (PVOID *)&Payload );
 break;
    case 128:

        Status = STATUS_UNSUCCESSFUL;
 TI_DbgPrint(MIN_TRACE, ("IPv6 RawIp datagrams are not supported.\n"));
        break;

    default:
 Status = STATUS_UNSUCCESSFUL;
        TI_DbgPrint(MIN_TRACE, ("Bad Address Type %d\n", RemoteAddress->Type));
 break;
    }

    if( !NT_SUCCESS(Status) ) {
        TI_DbgPrint(MIN_TRACE, ("Cannot add header. Status = (0x%X)\n",
                                Status));
        Packet->Free(Packet);
        return Status;
    }

    TI_DbgPrint(MID_TRACE, ("Copying data (hdr %x data %x (%d))\n",
       Packet->Header, Packet->Data,
       (PCHAR)Packet->Data - (PCHAR)Packet->Header));

    RtlCopyMemory( Packet->Data, DataBuffer, DataLen );

    Packet->Flags |= IP_PACKET_FLAG_RAW;

    TI_DbgPrint(MID_TRACE, ("Displaying packet\n"));

    DISPLAY_IP_PACKET(Packet);

    TI_DbgPrint(MID_TRACE, ("Leaving\n"));

    return STATUS_SUCCESS;
}
