#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int NextPacket; int PageStart; int PageStop; int InterruptMask; int CurrentPage; void* TransmitError; void* ReceiveError; void* BufferOverflow; scalar_t__ IOBase; scalar_t__ WordMode; } ;
typedef  TYPE_1__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 int CR_PAGE0 ; 
 int CR_PAGE1 ; 
 int CR_RD2 ; 
 int CR_STA ; 
 int CR_STP ; 
 int DCR_FT10 ; 
 int DCR_LS ; 
 int DCR_WTS ; 
 void* FALSE ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ PG0_BNRY ; 
 scalar_t__ PG0_CR ; 
 scalar_t__ PG0_DCR ; 
 scalar_t__ PG0_IMR ; 
 scalar_t__ PG0_ISR ; 
 scalar_t__ PG0_PSTART ; 
 scalar_t__ PG0_PSTOP ; 
 scalar_t__ PG0_RBCR0 ; 
 scalar_t__ PG0_RBCR1 ; 
 scalar_t__ PG0_RCR ; 
 scalar_t__ PG0_TCR ; 
 scalar_t__ PG1_CURR ; 
 int RCR_MON ; 
 int TCR_LOOP ; 

NDIS_STATUS FUNC4(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Sets up a NIC
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 * RETURNS:
 *     Status of operation
 * NOTES:
 *     The NIC is put into loopback mode
 */
{
    FUNC0(MAX_TRACE, ("Called.\n"));

    if (Adapter->WordMode ) {
        /* Initialize DCR - Data Configuration Register (word mode/4 words FIFO) */
        FUNC3(Adapter->IOBase + PG0_DCR, DCR_WTS | DCR_LS | DCR_FT10);
    } else {
        /* Initialize DCR - Data Configuration Register (byte mode/8 bytes FIFO) */
        FUNC3(Adapter->IOBase + PG0_DCR, DCR_LS | DCR_FT10);
    }

    /* Clear RBCR0 and RBCR1 - Remote Byte Count Registers */
    FUNC3(Adapter->IOBase + PG0_RBCR0, 0x00);
    FUNC3(Adapter->IOBase + PG0_RBCR1, 0x00);

    /* Initialize RCR - Receive Configuration Register (monitor mode) */
    FUNC3(Adapter->IOBase + PG0_RCR, RCR_MON);

    /* Enter loopback mode (internal NIC module loopback) */
    FUNC3(Adapter->IOBase + PG0_TCR, TCR_LOOP);

    /* Set boundary page */
    FUNC3(Adapter->IOBase + PG0_BNRY, Adapter->NextPacket);

    /* Set start page */
    FUNC3(Adapter->IOBase + PG0_PSTART, Adapter->PageStart);

    /* Set stop page */
    FUNC3(Adapter->IOBase + PG0_PSTOP, Adapter->PageStop);

    /* Program our address on the NIC */
    FUNC2(Adapter);

    /* Program the multicast address mask on the NIC */
    FUNC1(Adapter);

    /* Select page 1 and stop NIC */
    FUNC3(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE1);

    /* Initialize current page register */
    FUNC3(Adapter->IOBase + PG1_CURR, Adapter->PageStart + 1);

    /* Select page 0 and stop NIC */
    FUNC3(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);

    /* Clear ISR - Interrupt Status Register */
    FUNC3(Adapter->IOBase + PG0_ISR, 0xFF);

    /* Initialize IMR - Interrupt Mask Register */
    FUNC3(Adapter->IOBase + PG0_IMR, Adapter->InterruptMask);

    /* Select page 0 and start NIC */
    FUNC3(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2 | CR_PAGE0);

    Adapter->CurrentPage            = Adapter->PageStart + 1;
    Adapter->NextPacket             = Adapter->PageStart + 1;
    Adapter->BufferOverflow         = FALSE;
    Adapter->ReceiveError           = FALSE;
    Adapter->TransmitError          = FALSE;

    FUNC0(MAX_TRACE, ("Leaving.\n"));

    return NDIS_STATUS_SUCCESS;
}