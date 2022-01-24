#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  PacketPoolHandle; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PNDIS_PACKET ;
typedef  TYPE_1__* PNDISUIO_ADAPTER_CONTEXT ;
typedef  scalar_t__ NDIS_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

PNDIS_PACKET
FUNC4(PNDISUIO_ADAPTER_CONTEXT AdapterContext,
                           PVOID Buffer,
                           ULONG BufferSize)
{
    PNDIS_PACKET Packet;
    NDIS_STATUS Status;

    /* Allocate a packet descriptor */
    FUNC2(&Status,
                       &Packet,
                       AdapterContext->PacketPoolHandle);
    if (Status != NDIS_STATUS_SUCCESS)
    {
        FUNC1("No free packet descriptors\n");
        return NULL;
    }

    /* Use the helper to chain the buffer */
    Status = FUNC0(AdapterContext, Packet,
                                    Buffer, BufferSize, TRUE);
    if (Status != NDIS_STATUS_SUCCESS)
    {
        FUNC3(Packet);
        return NULL;
    }

    /* Return the packet */
    return Packet;
}