
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int BufferLength; void* Buffer; int NetEvent; } ;
typedef int * PVOID ;
typedef TYPE_1__* PNET_PNP_EVENT ;
typedef int NET_PNP_EVENT_CODE ;
typedef int NET_PNP_EVENT ;


 void* ExAllocatePool (int ,int) ;
 int ExFreePool (TYPE_1__*) ;
 int MIN_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 int PagedPool ;
 int RtlCopyMemory (void*,int *,int) ;
 int RtlZeroMemory (TYPE_1__*,int) ;

PNET_PNP_EVENT
ProSetupPnPEvent(
    NET_PNP_EVENT_CODE EventCode,
    PVOID EventBuffer,
    ULONG EventBufferLength)
{
    PNET_PNP_EVENT PnPEvent;

    PnPEvent = ExAllocatePool(PagedPool, sizeof(NET_PNP_EVENT));
    if (!PnPEvent) {
        NDIS_DbgPrint(MIN_TRACE, ("Insufficient resources\n"));
        return ((void*)0);
    }

    RtlZeroMemory(PnPEvent, sizeof(NET_PNP_EVENT));

    PnPEvent->NetEvent = EventCode;

    if (EventBuffer != ((void*)0))
    {
        PnPEvent->Buffer = ExAllocatePool(PagedPool, EventBufferLength);
        if (!PnPEvent->Buffer)
        {
            NDIS_DbgPrint(MIN_TRACE, ("Insufficient resources\n"));
            ExFreePool(PnPEvent);
            return ((void*)0);
        }

        PnPEvent->BufferLength = EventBufferLength;

        RtlCopyMemory(PnPEvent->Buffer, EventBuffer, PnPEvent->BufferLength);
    }

    return PnPEvent;
}
