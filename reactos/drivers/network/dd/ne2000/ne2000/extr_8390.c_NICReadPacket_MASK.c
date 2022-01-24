#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int NextPacket; int PacketLength; int /*<<< orphan*/  Status; } ;
struct TYPE_8__ {int PacketOffset; int NextPacket; int CurrentPage; TYPE_1__ PacketHeader; int /*<<< orphan*/  MiniportAdapterHandle; } ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_2__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/  PACKET_HEADER ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static VOID FUNC4(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Reads a full packet from the receive buffer ring
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 */
{
    BOOLEAN SkipPacket = FALSE;

    FUNC0(MAX_TRACE, ("Called.\n"));

    /* Get the header of the next packet in the receive ring */
    Adapter->PacketOffset = Adapter->NextPacket << 8;
    FUNC2(Adapter,
                (PUCHAR)&Adapter->PacketHeader,
                Adapter->PacketOffset,
                sizeof(PACKET_HEADER));

    FUNC0(MAX_TRACE, ("HEADER: (Status)       (0x%X)\n", Adapter->PacketHeader.Status));
    FUNC0(MAX_TRACE, ("HEADER: (NextPacket)   (0x%X)\n", Adapter->PacketHeader.NextPacket));
    FUNC0(MAX_TRACE, ("HEADER: (PacketLength) (0x%X)\n", Adapter->PacketHeader.PacketLength));

    if (Adapter->PacketHeader.PacketLength < 64  ||
        Adapter->PacketHeader.PacketLength > 1518) {	/* XXX I don't think the CRC will show up... should be 1514 */
        FUNC0(MAX_TRACE, ("Bogus packet size (%d).\n",
            Adapter->PacketHeader.PacketLength));
        SkipPacket = TRUE;
    }

    if (SkipPacket) {
        /* Skip packet */
        Adapter->NextPacket = Adapter->CurrentPage;
    } else {
	FUNC0(MAX_TRACE,("Adapter->MiniportAdapterHandle: %x\n",
				 Adapter->MiniportAdapterHandle));
        FUNC1(Adapter);

        /* Go to the next free buffer in receive ring */
        Adapter->NextPacket = Adapter->PacketHeader.NextPacket;
    }

    /* Update boundary page */
    FUNC3(Adapter);
}