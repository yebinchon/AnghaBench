
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* ULONG_PTR ;
struct TYPE_16__ {int ProtocolBindingContext; } ;
struct TYPE_20__ {TYPE_3__ NdisOpenBlock; TYPE_2__* ProtocolBinding; } ;
struct TYPE_19__ {struct TYPE_19__* Flink; } ;
struct TYPE_18__ {TYPE_6__ ProtocolListHead; } ;
struct TYPE_17__ {struct TYPE_17__* Buffer; void** NdisReserved; } ;
struct TYPE_14__ {scalar_t__ (* PnPEventHandler ) (int ,TYPE_4__*) ;} ;
struct TYPE_15__ {TYPE_1__ Chars; } ;
typedef TYPE_4__* PNET_PNP_EVENT ;
typedef TYPE_5__* PLOGICAL_ADAPTER ;
typedef TYPE_6__* PLIST_ENTRY ;
typedef scalar_t__ PIRP ;
typedef TYPE_7__* PADAPTER_BINDING ;
typedef scalar_t__ NDIS_STATUS ;


 int ADAPTER_BINDING ;
 int AdapterListEntry ;
 TYPE_7__* CONTAINING_RECORD (TYPE_6__*,int ,int ) ;
 int ExFreePool (TYPE_4__*) ;
 int IoMarkIrpPending (scalar_t__) ;
 scalar_t__ NDIS_STATUS_PENDING ;
 scalar_t__ NDIS_STATUS_SUCCESS ;
 scalar_t__ stub1 (int ,TYPE_4__*) ;

NDIS_STATUS
ProSendAndFreePnPEvent(
   PLOGICAL_ADAPTER Adapter,
   PNET_PNP_EVENT PnPEvent,
   PIRP Irp)
{
  PLIST_ENTRY CurrentEntry;
  NDIS_STATUS Status;
  PADAPTER_BINDING AdapterBinding;

  CurrentEntry = Adapter->ProtocolListHead.Flink;

  while (CurrentEntry != &Adapter->ProtocolListHead)
  {
     AdapterBinding = CONTAINING_RECORD(CurrentEntry, ADAPTER_BINDING, AdapterListEntry);

     Status = (*AdapterBinding->ProtocolBinding->Chars.PnPEventHandler)(
      AdapterBinding->NdisOpenBlock.ProtocolBindingContext,
      PnPEvent);

     if (Status == NDIS_STATUS_PENDING)
     {
         IoMarkIrpPending(Irp);

         PnPEvent->NdisReserved[0] = (ULONG_PTR)Irp;
         PnPEvent->NdisReserved[1] = (ULONG_PTR)CurrentEntry->Flink;
         return NDIS_STATUS_PENDING;
     }
     else if (Status != NDIS_STATUS_SUCCESS)
     {
         if (PnPEvent->Buffer) ExFreePool(PnPEvent->Buffer);
         ExFreePool(PnPEvent);
         return Status;
     }

     CurrentEntry = CurrentEntry->Flink;
  }

  if (PnPEvent->Buffer) ExFreePool(PnPEvent->Buffer);
  ExFreePool(PnPEvent);

  return NDIS_STATUS_SUCCESS;
}
