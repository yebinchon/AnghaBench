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
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_5__ {scalar_t__ IOBase; } ;
typedef  TYPE_1__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ NIC_RESET ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

NDIS_STATUS FUNC6(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Resets a NIC
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 * RETURNS:
 *     Status of operation
 */
{
    UCHAR Tmp;

    FUNC0(MAX_TRACE, ("Called.\n"));

    /* Stop the NIC */
    FUNC2(Adapter);

    /* Reset the NIC */
    FUNC3(Adapter->IOBase + NIC_RESET, &Tmp);

    /* Wait for 1.6ms */
    FUNC5(1600);

    /* Write the value back  */
    FUNC4(Adapter->IOBase + NIC_RESET, Tmp);

    /* Restart the NIC */
    FUNC1(Adapter);

    return NDIS_STATUS_SUCCESS;
}