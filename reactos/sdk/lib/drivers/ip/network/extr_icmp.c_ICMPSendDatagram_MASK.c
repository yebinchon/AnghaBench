#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_23__ {int /*<<< orphan*/  IPv4Address; } ;
struct TYPE_30__ {TYPE_1__ Address; int /*<<< orphan*/  Type; } ;
struct TYPE_29__ {TYPE_8__ Address; } ;
struct TYPE_28__ {TYPE_13__* Interface; } ;
struct TYPE_27__ {TYPE_3__* Address; } ;
struct TYPE_26__ {int /*<<< orphan*/  RemoteAddress; } ;
struct TYPE_25__ {int AddressType; TYPE_2__* Address; } ;
struct TYPE_24__ {int /*<<< orphan*/  in_addr; } ;
struct TYPE_22__ {TYPE_8__ Unicast; } ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_4__* PTDI_CONNECTION_INFORMATION ;
typedef  TYPE_5__* PTA_IP_ADDRESS ;
typedef  TYPE_6__* PNEIGHBOR_CACHE_ENTRY ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  TYPE_7__* PADDRESS_FILE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  int /*<<< orphan*/  IP_PACKET ;
typedef  TYPE_8__ IP_ADDRESS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  IP_ADDRESS_V4 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MID_TRACE ; 
 TYPE_6__* FUNC3 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_13__*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NETWORK_UNREACHABLE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
#define  TDI_ADDRESS_TYPE_IP 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC9(
    PADDRESS_FILE AddrFile,
    PTDI_CONNECTION_INFORMATION ConnInfo,
    PCHAR BufferData,
    ULONG DataSize,
    PULONG DataUsed )
/*
 * FUNCTION: Sends an ICMP datagram to a remote address
 * ARGUMENTS:
 *     Request   = Pointer to TDI request
 *     ConnInfo  = Pointer to connection information
 *     Buffer    = Pointer to NDIS buffer with data
 *     DataSize  = Size in bytes of data to be sent
 * RETURNS:
 *     Status of operation
 */
{
    IP_PACKET Packet;
    PTA_IP_ADDRESS RemoteAddressTa = (PTA_IP_ADDRESS)ConnInfo->RemoteAddress;
    IP_ADDRESS RemoteAddress,  LocalAddress;
    NTSTATUS Status;
    PNEIGHBOR_CACHE_ENTRY NCE;
    KIRQL OldIrql;

    FUNC7(MID_TRACE,("Sending Datagram(%x %x %x %d)\n",
			   AddrFile, ConnInfo, BufferData, DataSize));
    FUNC7(MID_TRACE,("RemoteAddressTa: %x\n", RemoteAddressTa));

    switch( RemoteAddressTa->Address[0].AddressType ) {
        case TDI_ADDRESS_TYPE_IP:
            RemoteAddress.Type = IP_ADDRESS_V4;
            RemoteAddress.Address.IPv4Address =
                RemoteAddressTa->Address[0].Address[0].in_addr;
            break;

        default:
            return STATUS_UNSUCCESSFUL;
    }

    FUNC7(MID_TRACE,("About to get route to destination\n"));

    FUNC2(AddrFile, &OldIrql);

    LocalAddress = AddrFile->Address;
    if (FUNC0(&LocalAddress))
    {
        /* If the local address is unspecified (0),
         * then use the unicast address of the
         * interface we're sending over
         */
        if(!(NCE = FUNC6( &RemoteAddress )))
        {
            FUNC8(AddrFile, OldIrql);
            return STATUS_NETWORK_UNREACHABLE;
        }

        LocalAddress = NCE->Interface->Unicast;
    }
    else
    {
        if(!(NCE = FUNC3( &LocalAddress, NULL )))
        {
            FUNC8(AddrFile, OldIrql);
            return STATUS_INVALID_PARAMETER;
        }
    }

    Status = FUNC5( AddrFile,
                                NCE->Interface,
                                &Packet,
                                &RemoteAddress,
                                BufferData,
                                DataSize );

    FUNC8(AddrFile, OldIrql);

    if( !FUNC4(Status) )
        return Status;

    FUNC7(MID_TRACE,("About to send datagram\n"));

    Status = FUNC1(&Packet, NCE);
    if (!FUNC4(Status))
        return Status;
    
    *DataUsed = DataSize;

    FUNC7(MID_TRACE,("Leaving\n"));

    return STATUS_SUCCESS;
}