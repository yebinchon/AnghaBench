#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int CR_RD2 ; 
 int CR_STA ; 
 int CR_STP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ PG0_CR ; 
 scalar_t__ PG0_IMR ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN FUNC4(
    ULONG_PTR address)
/*
 * FUNCTION: Probes an address for a NIC
 * ARGUMENTS:
 *     address = Base address to probe
 * RETURNS:
 *     TRUE if an NIC is found at the address
 *     FALSE otherwise
 * NOTES:
 *     If the adapter responds correctly to a
 *     stop command we assume it is present
 */
{
    UCHAR Tmp;

    FUNC0(MID_TRACE, ("Probing address 0x%x\n", address));

    /* Disable interrupts */
    FUNC2(address + PG0_IMR, 0);

    /* Stop the NIC */
    FUNC2(address + PG0_CR, CR_STP | CR_RD2);

    /* Pause for 1.6ms */
    FUNC3(1600);

    /* Read NIC response */
    FUNC1(address + PG0_CR, &Tmp);

    if ((Tmp == (CR_RD2 | CR_STP)) || (Tmp == (CR_RD2 | CR_STP | CR_STA)))
        return TRUE;
    else
        return FALSE;
}