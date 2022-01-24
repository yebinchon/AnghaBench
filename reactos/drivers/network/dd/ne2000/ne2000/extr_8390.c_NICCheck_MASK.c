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
struct TYPE_3__ {scalar_t__ IoBaseAddress; } ;
typedef  TYPE_1__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__* ProbeAddressList ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC2(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Tests for a NIC
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 * RETURNS:
 *     TRUE if NIC is believed to be present, FALSE if not
 */
{
    int i;

    FUNC0(MAX_TRACE, ("Called\n"));

    /* first try the supplied value */
    if(FUNC1(Adapter->IoBaseAddress))
    {
        FUNC0(MID_TRACE, ("Found adapter at 0x%x\n", Adapter->IoBaseAddress));
        return TRUE;
    }

    /* ok, no dice, time to probe */
    for(i = 0; ProbeAddressList[i]; i++)
    {
        if(FUNC1(ProbeAddressList[i]))
        {
            FUNC0(MID_TRACE, ("Found adapter at address 0x%x\n", ProbeAddressList[i]));
            Adapter->IoBaseAddress = ProbeAddressList[i];
            return TRUE;
        }
    }

    FUNC0(MIN_TRACE,("Adapter NOT found!\n"));
    return FALSE;
}