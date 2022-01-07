
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* WorkQueueHead; } ;
struct TYPE_6__ {scalar_t__ Next; } ;
struct TYPE_7__ {scalar_t__ WorkItemType; TYPE_1__ Link; } ;
typedef TYPE_2__* PNDIS_MINIPORT_WORK_ITEM ;
typedef TYPE_3__* PLOGICAL_ADAPTER ;
typedef scalar_t__ NDIS_WORK_ITEM_TYPE ;


 scalar_t__ NdisMaxWorkItems ;

PNDIS_MINIPORT_WORK_ITEM
MiniGetFirstWorkItem(
    PLOGICAL_ADAPTER Adapter,
    NDIS_WORK_ITEM_TYPE Type)
{
    PNDIS_MINIPORT_WORK_ITEM CurrentEntry = Adapter->WorkQueueHead;

    while (CurrentEntry)
    {
      if (CurrentEntry->WorkItemType == Type || Type == NdisMaxWorkItems)
          return CurrentEntry;

      CurrentEntry = (PNDIS_MINIPORT_WORK_ITEM)CurrentEntry->Link.Next;
    }

    return ((void*)0);
}
