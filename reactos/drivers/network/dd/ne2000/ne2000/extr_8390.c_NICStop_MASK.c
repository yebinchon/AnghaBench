#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_3__ {scalar_t__ IOBase; } ;
typedef  TYPE_1__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 int CR_PAGE0 ; 
 int CR_RD2 ; 
 int CR_STA ; 
 int CR_STP ; 
 int ISR_RST ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ PG0_CR ; 
 scalar_t__ PG0_ISR ; 
 scalar_t__ PG0_RBCR0 ; 
 scalar_t__ PG0_RCR ; 
 scalar_t__ PG0_TCR ; 
 int RCR_MON ; 
 int TCR_LOOP ; 

NDIS_STATUS FUNC4(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Stops a NIC
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 * RETURNS:
 *     Status of operation
 */
{
    UCHAR Tmp;
    UINT i;

    FUNC0(MAX_TRACE, ("Called.\n"));

    /* Select page 0 and stop NIC */
    FUNC2(Adapter->IOBase + PG0_CR, CR_STP | CR_RD2 | CR_PAGE0);

    /* Clear Remote Byte Count Register so ISR_RST will be set */
    FUNC2( Adapter->IOBase + PG0_RBCR0, 0x00);
    FUNC2( Adapter->IOBase + PG0_RBCR0, 0x00);

    /* Wait for ISR_RST to be set, but timeout after 2ms */
    for (i = 0; i < 4; i++) {
        FUNC1(Adapter->IOBase + PG0_ISR, &Tmp);
        if (Tmp & ISR_RST)
            break;

        FUNC3(500);
    }

#if DBG
    if (i == 4)
        NDIS_DbgPrint(MIN_TRACE, ("NIC was not reset after 2ms.\n"));
#endif

    /* Initialize RCR - Receive Configuration Register (monitor mode) */
    FUNC2(Adapter->IOBase + PG0_RCR, RCR_MON);

    /* Initialize TCR - Transmit Configuration Register (loopback mode) */
    FUNC2(Adapter->IOBase + PG0_TCR, TCR_LOOP);

    /* Start NIC */
    FUNC2(Adapter->IOBase + PG0_CR, CR_STA | CR_RD2);

    return NDIS_STATUS_SUCCESS;
}