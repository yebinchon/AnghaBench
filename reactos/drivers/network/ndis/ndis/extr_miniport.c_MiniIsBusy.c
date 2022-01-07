
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ResetStatus; int Lock; scalar_t__ FirstPendingPacket; scalar_t__ PendingRequest; } ;
struct TYPE_6__ {TYPE_1__ NdisMiniportBlock; } ;
typedef TYPE_2__* PLOGICAL_ADAPTER ;
typedef scalar_t__ NDIS_WORK_ITEM_TYPE ;
typedef int KIRQL ;
typedef int BOOLEAN ;


 int FALSE ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 scalar_t__ MiniGetFirstWorkItem (TYPE_2__*,scalar_t__) ;
 scalar_t__ NDIS_STATUS_PENDING ;
 scalar_t__ NdisWorkItemRequest ;
 scalar_t__ NdisWorkItemResetRequested ;
 scalar_t__ NdisWorkItemSend ;
 int TRUE ;

BOOLEAN
MiniIsBusy(
    PLOGICAL_ADAPTER Adapter,
    NDIS_WORK_ITEM_TYPE Type)
{
    BOOLEAN Busy = FALSE;
    KIRQL OldIrql;

    KeAcquireSpinLock(&Adapter->NdisMiniportBlock.Lock, &OldIrql);

    if (MiniGetFirstWorkItem(Adapter, Type))
    {
        Busy = TRUE;
    }
    else if (Type == NdisWorkItemRequest && Adapter->NdisMiniportBlock.PendingRequest)
    {
       Busy = TRUE;
    }
    else if (Type == NdisWorkItemSend && Adapter->NdisMiniportBlock.FirstPendingPacket)
    {
       Busy = TRUE;
    }
    else if (Type == NdisWorkItemResetRequested &&
             Adapter->NdisMiniportBlock.ResetStatus == NDIS_STATUS_PENDING)
    {
       Busy = TRUE;
    }

    KeReleaseSpinLock(&Adapter->NdisMiniportBlock.Lock, OldIrql);

    return Busy;
}
