#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  int UCHAR ;
struct TYPE_13__ {int /*<<< orphan*/  IPv4Address; } ;
struct TYPE_16__ {int Type; TYPE_1__ Address; } ;
struct TYPE_15__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  (* Transmit ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;TYPE_4__ Unicast; int /*<<< orphan*/  Address; scalar_t__ AddressLength; } ;
struct TYPE_14__ {int /*<<< orphan*/  DLComplete; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_2__* PNDIS_PACKET ;
typedef  TYPE_3__* PIP_INTERFACE ;
typedef  TYPE_4__* PIP_ADDRESS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ARPTransmitComplete ; 
 int /*<<< orphan*/  ARP_OPCODE_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DEBUG_ARP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ETYPE_IPv4 ; 
 int /*<<< orphan*/  ETYPE_IPv6 ; 
 int /*<<< orphan*/  FALSE ; 
#define  IP_ADDRESS_V4 129 
#define  IP_ADDRESS_V6 128 
 int /*<<< orphan*/  LAN_PROTO_ARP ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC7(PIP_ADDRESS Address, PVOID LinkAddress,
                    PIP_INTERFACE Interface)
/*
 * FUNCTION: Creates an ARP request and transmits it on a network
 * ARGUMENTS:
 *     Address = Pointer to IP address to resolve
 * RETURNS:
 *     TRUE if the request was successfully sent, FALSE if not
 */
{
    PNDIS_PACKET NdisPacket;
    UCHAR ProtoAddrLen;
    USHORT ProtoType;

    FUNC4(DEBUG_ARP, ("Called.\n"));

    /* If Address is NULL then the caller wants an
     * gratuitous ARP packet sent */
    if (!Address)
        Address = &Interface->Unicast;

    switch (Address->Type) {
        case IP_ADDRESS_V4:
            ProtoType    = (USHORT)ETYPE_IPv4; /* IPv4 */
            ProtoAddrLen = 4;                  /* Length of IPv4 address */
            break;
        case IP_ADDRESS_V6:
            ProtoType    = (USHORT)ETYPE_IPv6; /* IPv6 */
            ProtoAddrLen = 16;                 /* Length of IPv6 address */
            break;
        default:
	    FUNC4(DEBUG_ARP,("Bad Address Type %x\n", Address->Type));
	    FUNC1();
            /* Should not happen */
            return FALSE;
    }

    NdisPacket = FUNC3(
        Interface,
        FUNC5(0x0001),                    /* FIXME: Ethernet only */
        ProtoType,                       /* Protocol type */
        (UCHAR)Interface->AddressLength, /* Hardware address length */
        (UCHAR)ProtoAddrLen,             /* Protocol address length */
        Interface->Address,              /* Sender's (local) hardware address */
        &Interface->Unicast.Address.IPv4Address,/* Sender's (local) protocol address */
        LinkAddress,                     /* Target's (remote) hardware address */
        &Address->Address.IPv4Address,   /* Target's (remote) protocol address */
        ARP_OPCODE_REQUEST);             /* ARP request */

    if( !NdisPacket ) return FALSE;

    FUNC0(NdisPacket);
    FUNC0(FUNC2(NdisPacket));
    FUNC2(NdisPacket)->DLComplete = ARPTransmitComplete;

    FUNC4(DEBUG_ARP,("Sending ARP Packet\n"));

    (*Interface->Transmit)(Interface->Context, NdisPacket,
        0, NULL, LAN_PROTO_ARP);

    return TRUE;
}