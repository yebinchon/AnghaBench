
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* USHORT ;
typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_5__ {int HWAddrLen; int ProtoAddrLen; void* Opcode; void* ProtoType; void* HWType; } ;
struct TYPE_4__ {scalar_t__ HeaderSize; scalar_t__ MinFrameSize; } ;
typedef scalar_t__ PVOID ;
typedef int PUINT ;
typedef int * PNDIS_PACKET ;
typedef TYPE_1__* PIP_INTERFACE ;
typedef int PCHAR ;
typedef TYPE_2__* PARP_HEADER ;
typedef int NDIS_STATUS ;
typedef int ARP_HEADER ;


 int ASSERT (scalar_t__) ;
 int AllocatePacketWithBuffer (int **,int *,int) ;
 int DEBUG_ARP ;
 int GetDataPtr (int *,int ,int *,int ) ;
 int MAX (int,scalar_t__) ;
 int NT_SUCCESS (int ) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,int) ;
 int RtlZeroMemory (scalar_t__,int) ;
 int TI_DbgPrint (int ,char*) ;

PNDIS_PACKET PrepareARPPacket(
    PIP_INTERFACE IF,
    USHORT HardwareType,
    USHORT ProtocolType,
    UCHAR LinkAddressLength,
    UCHAR ProtoAddressLength,
    PVOID SenderLinkAddress,
    PVOID SenderProtoAddress,
    PVOID TargetLinkAddress,
    PVOID TargetProtoAddress,
    USHORT Opcode)
{
    PNDIS_PACKET NdisPacket;
    NDIS_STATUS NdisStatus;
    PARP_HEADER Header;
    PVOID DataBuffer;
    ULONG Size, Contig;

    TI_DbgPrint(DEBUG_ARP, ("Called.\n"));


    Size = sizeof(ARP_HEADER) +
        2 * LinkAddressLength +
        2 * ProtoAddressLength;
    Size = MAX(Size, IF->MinFrameSize - IF->HeaderSize);

    NdisStatus = AllocatePacketWithBuffer( &NdisPacket, ((void*)0), Size );
    if( !NT_SUCCESS(NdisStatus) ) return ((void*)0);

    GetDataPtr( NdisPacket, 0, (PCHAR *)&DataBuffer, (PUINT)&Contig );
    ASSERT(DataBuffer);

    RtlZeroMemory(DataBuffer, Size);
    Header = (PARP_HEADER)((ULONG_PTR)DataBuffer);
    Header->HWType = HardwareType;
    Header->ProtoType = ProtocolType;
    Header->HWAddrLen = LinkAddressLength;
    Header->ProtoAddrLen = ProtoAddressLength;
    Header->Opcode = Opcode;
    DataBuffer = (PVOID)((ULONG_PTR)Header + sizeof(ARP_HEADER));


    RtlCopyMemory(DataBuffer, SenderLinkAddress, LinkAddressLength);
    DataBuffer = (PVOID)((ULONG_PTR)DataBuffer + LinkAddressLength);


    RtlCopyMemory(DataBuffer, SenderProtoAddress, ProtoAddressLength);

    if (TargetLinkAddress) {
        DataBuffer = (PVOID)((ULONG_PTR)DataBuffer + ProtoAddressLength);

        RtlCopyMemory(DataBuffer, TargetLinkAddress, LinkAddressLength);
        DataBuffer = (PVOID)((ULONG_PTR)DataBuffer + LinkAddressLength);
    } else

        DataBuffer = (PVOID)((ULONG_PTR)DataBuffer + ProtoAddressLength + LinkAddressLength);


    RtlCopyMemory(DataBuffer, TargetProtoAddress, ProtoAddressLength);

    return NdisPacket;
}
