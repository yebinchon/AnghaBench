
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ ULONG ;
typedef int UINT ;
struct TYPE_26__ {int TTL; } ;
struct TYPE_21__ {int IPv4Address; } ;
struct TYPE_25__ {TYPE_3__ Address; } ;
struct TYPE_19__ {int IPv4Address; } ;
struct TYPE_20__ {TYPE_1__ Address; } ;
struct TYPE_24__ {TYPE_2__ Unicast; } ;
struct TYPE_23__ {scalar_t__ TotalSize; int HeaderSize; scalar_t__ Header; TYPE_7__* Data; TYPE_7__ DstAddr; int NdisPacket; int MappedHeader; scalar_t__ Flags; } ;
struct TYPE_22__ {int VerIHL; int Ttl; int DstAddr; int SrcAddr; scalar_t__ Checksum; int Protocol; scalar_t__ FlagsFragOfs; scalar_t__ Id; int TotalLength; scalar_t__ Tos; } ;
typedef int PNDIS_PACKET ;
typedef TYPE_4__* PIPv4_HEADER ;
typedef TYPE_5__* PIP_PACKET ;
typedef TYPE_6__* PIP_INTERFACE ;
typedef TYPE_7__* PIP_ADDRESS ;
typedef TYPE_7__* PCHAR ;
typedef TYPE_9__* PADDRESS_FILE ;
typedef int NDIS_STATUS ;
typedef int IPv4_HEADER ;
typedef int IP_ADDRESS ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 int AllocatePacketWithBuffer (int *,int *,scalar_t__) ;
 int DEBUG_ICMP ;
 int FALSE ;
 int GetDataPtr (int ,int ,TYPE_7__**,scalar_t__*) ;
 int IPInitializePacket (TYPE_5__*,int ) ;
 int IPPROTO_ICMP ;
 int IP_ADDRESS_V4 ;
 int MID_TRACE ;
 int NT_SUCCESS (int ) ;
 scalar_t__ Random () ;
 int RtlCopyMemory (TYPE_7__*,TYPE_7__*,int) ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 int WH2N (scalar_t__) ;

BOOLEAN PrepareICMPPacket(
    PADDRESS_FILE AddrFile,
    PIP_INTERFACE Interface,
    PIP_PACKET IPPacket,
    PIP_ADDRESS Destination,
    PCHAR Data,
    UINT DataSize)
{
    PNDIS_PACKET NdisPacket;
    NDIS_STATUS NdisStatus;
    PIPv4_HEADER IPHeader;
    ULONG Size;

    TI_DbgPrint(DEBUG_ICMP, ("Called. DataSize (%d).\n", DataSize));

    IPInitializePacket(IPPacket, IP_ADDRESS_V4);


    IPPacket->Flags = 0;

    Size = sizeof(IPv4_HEADER) + DataSize;


    NdisStatus = AllocatePacketWithBuffer( &NdisPacket, ((void*)0), Size );

    if( !NT_SUCCESS(NdisStatus) ) return FALSE;

    IPPacket->NdisPacket = NdisPacket;
    IPPacket->MappedHeader = TRUE;

    GetDataPtr( IPPacket->NdisPacket, 0,
  (PCHAR *)&IPPacket->Header, &IPPacket->TotalSize );
    ASSERT(IPPacket->TotalSize == Size);

    TI_DbgPrint(DEBUG_ICMP, ("Size (%d). Data at (0x%X).\n", Size, Data));
    TI_DbgPrint(DEBUG_ICMP, ("NdisPacket at (0x%X).\n", NdisPacket));

    IPPacket->HeaderSize = sizeof(IPv4_HEADER);
    IPPacket->Data = ((PCHAR)IPPacket->Header) + IPPacket->HeaderSize;

    TI_DbgPrint(DEBUG_ICMP, ("Copying Address: %x -> %x\n",
        &IPPacket->DstAddr, Destination));

    RtlCopyMemory(&IPPacket->DstAddr, Destination, sizeof(IP_ADDRESS));
    RtlCopyMemory(IPPacket->Data, Data, DataSize);



    IPHeader = (PIPv4_HEADER)IPPacket->Header;


    IPHeader->VerIHL = 0x45;

    IPHeader->Tos = 0;

    IPHeader->TotalLength = WH2N((USHORT)DataSize + sizeof(IPv4_HEADER));

    IPHeader->Id = (USHORT)Random();

    IPHeader->FlagsFragOfs = 0;

    if (AddrFile)
        IPHeader->Ttl = AddrFile->TTL;
    else
        IPHeader->Ttl = 128;

    IPHeader->Protocol = IPPROTO_ICMP;

    IPHeader->Checksum = 0;

    IPHeader->SrcAddr = Interface->Unicast.Address.IPv4Address;

    IPHeader->DstAddr = Destination->Address.IPv4Address;


    TI_DbgPrint(MID_TRACE,("Leaving\n"));

    return TRUE;
}
