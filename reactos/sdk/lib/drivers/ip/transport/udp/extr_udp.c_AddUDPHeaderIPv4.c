
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* USHORT ;
typedef void* UINT ;
typedef int UDP_HEADER ;
struct TYPE_6__ {scalar_t__ Data; scalar_t__ Header; int NdisPacket; } ;
struct TYPE_5__ {void* Checksum; void* Length; void* DestPort; void* SourcePort; } ;
typedef int PVOID ;
typedef TYPE_1__* PUDP_HEADER ;
typedef int PUCHAR ;
typedef int PIPv4_HEADER ;
typedef TYPE_2__* PIP_PACKET ;
typedef int PIP_ADDRESS ;
typedef scalar_t__ PCHAR ;
typedef int PADDRESS_FILE ;
typedef int NTSTATUS ;


 int AddGenericHeaderIPv4 (int ,int ,void*,int ,void*,TYPE_2__*,void*,int ,int,int *) ;
 int IPPROTO_UDP ;
 int MID_TRACE ;
 int NT_SUCCESS (int ) ;
 int RtlCopyMemory (scalar_t__,int ,void*) ;
 int STATUS_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;
 void* UDPv4ChecksumCalculate (int ,int ,void*) ;
 void* WH2N (void*) ;

NTSTATUS AddUDPHeaderIPv4(
    PADDRESS_FILE AddrFile,
    PIP_ADDRESS RemoteAddress,
    USHORT RemotePort,
    PIP_ADDRESS LocalAddress,
    USHORT LocalPort,
    PIP_PACKET IPPacket,
    PVOID Data,
    UINT DataLength)
{
    PUDP_HEADER UDPHeader;
    NTSTATUS Status;

    TI_DbgPrint(MID_TRACE, ("Packet: %x NdisPacket %x\n",
       IPPacket, IPPacket->NdisPacket));

    Status = AddGenericHeaderIPv4
        ( AddrFile, RemoteAddress, RemotePort,
          LocalAddress, LocalPort,
          IPPacket, DataLength, IPPROTO_UDP,
          sizeof(UDP_HEADER), (PVOID *)&UDPHeader );

    if (!NT_SUCCESS(Status))
        return Status;


    UDPHeader->SourcePort = LocalPort;
    UDPHeader->DestPort = RemotePort;
    UDPHeader->Checksum = 0;

    UDPHeader->Length = WH2N(DataLength + sizeof(UDP_HEADER));

    TI_DbgPrint(MID_TRACE, ("Copying data (hdr %x data %x (%d))\n",
       IPPacket->Header, IPPacket->Data,
       (PCHAR)IPPacket->Data - (PCHAR)IPPacket->Header));

    RtlCopyMemory(IPPacket->Data, Data, DataLength);

    UDPHeader->Checksum = UDPv4ChecksumCalculate((PIPv4_HEADER)IPPacket->Header,
                                                 (PUCHAR)UDPHeader,
                                                 DataLength + sizeof(UDP_HEADER));
    UDPHeader->Checksum = WH2N(UDPHeader->Checksum);

    TI_DbgPrint(MID_TRACE, ("Packet: %d ip %d udp %d payload\n",
       (PCHAR)UDPHeader - (PCHAR)IPPacket->Header,
       (PCHAR)IPPacket->Data - (PCHAR)UDPHeader,
       DataLength));

    return STATUS_SUCCESS;
}
