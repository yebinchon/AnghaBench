#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
typedef  scalar_t__ ULONG ;
typedef  int UINT ;
struct TYPE_26__ {int TTL; } ;
struct TYPE_21__ {int /*<<< orphan*/  IPv4Address; } ;
struct TYPE_25__ {TYPE_3__ Address; } ;
struct TYPE_19__ {int /*<<< orphan*/  IPv4Address; } ;
struct TYPE_20__ {TYPE_1__ Address; } ;
struct TYPE_24__ {TYPE_2__ Unicast; } ;
struct TYPE_23__ {scalar_t__ TotalSize; int HeaderSize; scalar_t__ Header; TYPE_7__* Data; TYPE_7__ DstAddr; int /*<<< orphan*/  NdisPacket; int /*<<< orphan*/  MappedHeader; scalar_t__ Flags; } ;
struct TYPE_22__ {int VerIHL; int Ttl; int /*<<< orphan*/  DstAddr; int /*<<< orphan*/  SrcAddr; scalar_t__ Checksum; int /*<<< orphan*/  Protocol; scalar_t__ FlagsFragOfs; scalar_t__ Id; int /*<<< orphan*/  TotalLength; scalar_t__ Tos; } ;
typedef  int /*<<< orphan*/  PNDIS_PACKET ;
typedef  TYPE_4__* PIPv4_HEADER ;
typedef  TYPE_5__* PIP_PACKET ;
typedef  TYPE_6__* PIP_INTERFACE ;
typedef  TYPE_7__* PIP_ADDRESS ;
typedef  TYPE_7__* PCHAR ;
typedef  TYPE_9__* PADDRESS_FILE ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  int /*<<< orphan*/  IPv4_HEADER ;
typedef  int /*<<< orphan*/  IP_ADDRESS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  DEBUG_ICMP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 int /*<<< orphan*/  IP_ADDRESS_V4 ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

BOOLEAN FUNC9(
    PADDRESS_FILE AddrFile,
    PIP_INTERFACE Interface,
    PIP_PACKET IPPacket,
    PIP_ADDRESS Destination,
    PCHAR Data,
    UINT DataSize)
/*
 * FUNCTION: Prepares an ICMP packet
 * ARGUMENTS:
 *     NTE         = Pointer to net table entry to use
 *     Destination = Pointer to destination address
 *     DataSize    = Size of dataarea
 * RETURNS:
 *     Pointer to IP packet, NULL if there is not enough free resources
 */
{
    PNDIS_PACKET NdisPacket;
    NDIS_STATUS NdisStatus;
    PIPv4_HEADER IPHeader;
    ULONG Size;

    FUNC7(DEBUG_ICMP, ("Called. DataSize (%d).\n", DataSize));

    FUNC3(IPPacket, IP_ADDRESS_V4);

    /* No special flags */
    IPPacket->Flags = 0;

    Size = sizeof(IPv4_HEADER) + DataSize;

    /* Allocate NDIS packet */
    NdisStatus = FUNC1( &NdisPacket, NULL, Size );

    if( !FUNC4(NdisStatus) ) return FALSE;

    IPPacket->NdisPacket = NdisPacket;
    IPPacket->MappedHeader = TRUE;

    FUNC2( IPPacket->NdisPacket, 0,
		(PCHAR *)&IPPacket->Header, &IPPacket->TotalSize );
    FUNC0(IPPacket->TotalSize == Size);

    FUNC7(DEBUG_ICMP, ("Size (%d). Data at (0x%X).\n", Size, Data));
    FUNC7(DEBUG_ICMP, ("NdisPacket at (0x%X).\n", NdisPacket));

    IPPacket->HeaderSize = sizeof(IPv4_HEADER);
    IPPacket->Data = ((PCHAR)IPPacket->Header) + IPPacket->HeaderSize;

    FUNC7(DEBUG_ICMP, ("Copying Address: %x -> %x\n",
			     &IPPacket->DstAddr, Destination));

    FUNC6(&IPPacket->DstAddr, Destination, sizeof(IP_ADDRESS));
    FUNC6(IPPacket->Data, Data, DataSize);

    /* Build IPv4 header. FIXME: IPv4 only */

    IPHeader = (PIPv4_HEADER)IPPacket->Header;

    /* Version = 4, Length = 5 DWORDs */
    IPHeader->VerIHL = 0x45;
    /* Normal Type-of-Service */
    IPHeader->Tos = 0;
    /* Length of data and header */
    IPHeader->TotalLength = FUNC8((USHORT)DataSize + sizeof(IPv4_HEADER));
    /* Identification */
    IPHeader->Id = (USHORT)FUNC5();
    /* One fragment at offset 0 */
    IPHeader->FlagsFragOfs = 0;
    /* Set TTL */
    if (AddrFile)
        IPHeader->Ttl = AddrFile->TTL;
    else
        IPHeader->Ttl = 128;
    /* Internet Control Message Protocol */
    IPHeader->Protocol = IPPROTO_ICMP;
    /* Checksum is 0 (for later calculation of this) */
    IPHeader->Checksum = 0;
    /* Source address */
    IPHeader->SrcAddr = Interface->Unicast.Address.IPv4Address;
    /* Destination address */
    IPHeader->DstAddr = Destination->Address.IPv4Address;


    FUNC7(MID_TRACE,("Leaving\n"));

    return TRUE;
}