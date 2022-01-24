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
typedef  int ULONG ;
struct TYPE_5__ {int BufferLength; void* Buffer; int /*<<< orphan*/  NetEvent; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PNET_PNP_EVENT ;
typedef  int /*<<< orphan*/  NET_PNP_EVENT_CODE ;
typedef  int /*<<< orphan*/  NET_PNP_EVENT ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

PNET_PNP_EVENT
FUNC5(
    NET_PNP_EVENT_CODE EventCode,
    PVOID              EventBuffer,
    ULONG              EventBufferLength)
{
    PNET_PNP_EVENT PnPEvent;

    PnPEvent = FUNC0(PagedPool, sizeof(NET_PNP_EVENT));
    if (!PnPEvent) {
        FUNC2(MIN_TRACE, ("Insufficient resources\n"));
        return NULL;
    }

    FUNC4(PnPEvent, sizeof(NET_PNP_EVENT));

    PnPEvent->NetEvent = EventCode;

    if (EventBuffer != NULL)
    {
        PnPEvent->Buffer = FUNC0(PagedPool, EventBufferLength);
        if (!PnPEvent->Buffer)
        {
            FUNC2(MIN_TRACE, ("Insufficient resources\n"));
            FUNC1(PnPEvent);
            return NULL;
        }

        PnPEvent->BufferLength = EventBufferLength;

        FUNC3(PnPEvent->Buffer, EventBuffer, PnPEvent->BufferLength);
    }

    return PnPEvent;
}