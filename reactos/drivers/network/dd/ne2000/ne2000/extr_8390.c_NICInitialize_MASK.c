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
typedef  int UCHAR ;
struct TYPE_5__ {scalar_t__ IOBase; int /*<<< orphan*/ * StationAddress; } ;
typedef  TYPE_1__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 int CR_PAGE0 ; 
 int CR_RD2 ; 
 int CR_STA ; 
 int CR_STP ; 
 int DCR_FT10 ; 
 int DCR_LS ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NDIS_STATUS_ADAPTER_NOT_FOUND ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ NIC_RESET ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ PG0_CR ; 
 scalar_t__ PG0_DCR ; 
 scalar_t__ PG0_ISR ; 
 scalar_t__ PG0_RBCR0 ; 
 scalar_t__ PG0_RBCR1 ; 
 scalar_t__ PG0_RCR ; 
 scalar_t__ PG0_TCR ; 
 int RCR_MON ; 
 int TCR_LOOP ; 

NDIS_STATUS FUNC6(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Initializes a NIC
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 * RETURNS:
 *     Status of NIC initialization
 * NOTES:
 *     The NIC is put into loopback mode
 */
{
    UCHAR Tmp;

    FUNC0(MID_TRACE, ("Called.\n"));

    /* Reset the NIC */
    FUNC3(Adapter->IOBase + NIC_RESET, &Tmp);

    /* Wait for 1.6ms */
    FUNC5(1600);

    /* Write the value back  */
    FUNC4(Adapter->IOBase + NIC_RESET, Tmp);

    /* Select page 0 and stop NIC */
    FUNC4(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);

    /* Initialize DCR - Data Configuration Register (byte mode/8 bytes FIFO) */
    FUNC4(Adapter->IOBase + PG0_DCR, DCR_LS | DCR_FT10);

    /* Clear RBCR0 and RBCR1 - Remote Byte Count Registers */
    FUNC4(Adapter->IOBase + PG0_RBCR0, 0x00);
    FUNC4(Adapter->IOBase + PG0_RBCR1, 0x00);

    /* Initialize RCR - Receive Configuration Register (monitor mode) */
    FUNC4(Adapter->IOBase + PG0_RCR, RCR_MON);

    /* Enter loopback mode (internal NIC module loopback) */
    FUNC4(Adapter->IOBase + PG0_TCR, TCR_LOOP);

    /* Read the Station Address PROM */
    if (!FUNC1(Adapter))
        return NDIS_STATUS_ADAPTER_NOT_FOUND;

    FUNC0(MID_TRACE, ("Station address is (%02X %02X %02X %02X %02X %02X).\n",
        Adapter->StationAddress[0], Adapter->StationAddress[1],
        Adapter->StationAddress[2], Adapter->StationAddress[3],
        Adapter->StationAddress[4], Adapter->StationAddress[5]));

    /* Select page 0 and start NIC */
    FUNC4(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2 | CR_PAGE0);

    /* Clear ISR - Interrupt Status Register */
    FUNC4(Adapter->IOBase + PG0_ISR, 0xFF);

    /* Find NIC RAM size */
    FUNC2(Adapter);

    return NDIS_STATUS_SUCCESS;
}