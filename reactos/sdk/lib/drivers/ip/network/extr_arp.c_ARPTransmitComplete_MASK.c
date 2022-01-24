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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PNDIS_PACKET ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ARP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

VOID FUNC2(
    PVOID Context,
    PNDIS_PACKET NdisPacket,
    NDIS_STATUS NdisStatus)
/*
 * FUNCTION: ARP request transmit completion handler
 * ARGUMENTS:
 *     Context    = Pointer to context information (IP_INTERFACE)
 *     Packet     = Pointer to NDIS packet that was sent
 *     NdisStatus = NDIS status of operation
 * NOTES:
 *    This routine is called when an ARP request has been sent
 */
{
    FUNC1(DEBUG_ARP, ("Called.\n"));
    FUNC0(NdisPacket);
}