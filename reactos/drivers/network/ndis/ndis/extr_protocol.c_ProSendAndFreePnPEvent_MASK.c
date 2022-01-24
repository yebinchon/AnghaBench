#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  void* ULONG_PTR ;
struct TYPE_16__ {int /*<<< orphan*/  ProtocolBindingContext; } ;
struct TYPE_20__ {TYPE_3__ NdisOpenBlock; TYPE_2__* ProtocolBinding; } ;
struct TYPE_19__ {struct TYPE_19__* Flink; } ;
struct TYPE_18__ {TYPE_6__ ProtocolListHead; } ;
struct TYPE_17__ {struct TYPE_17__* Buffer; void** NdisReserved; } ;
struct TYPE_14__ {scalar_t__ (* PnPEventHandler ) (int /*<<< orphan*/ ,TYPE_4__*) ;} ;
struct TYPE_15__ {TYPE_1__ Chars; } ;
typedef  TYPE_4__* PNET_PNP_EVENT ;
typedef  TYPE_5__* PLOGICAL_ADAPTER ;
typedef  TYPE_6__* PLIST_ENTRY ;
typedef  scalar_t__ PIRP ;
typedef  TYPE_7__* PADAPTER_BINDING ;
typedef  scalar_t__ NDIS_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_BINDING ; 
 int /*<<< orphan*/  AdapterListEntry ; 
 TYPE_7__* FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NDIS_STATUS_PENDING ; 
 scalar_t__ NDIS_STATUS_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 

NDIS_STATUS
FUNC4(
   PLOGICAL_ADAPTER Adapter,
   PNET_PNP_EVENT   PnPEvent,
   PIRP             Irp)
{
  PLIST_ENTRY CurrentEntry;
  NDIS_STATUS Status;
  PADAPTER_BINDING AdapterBinding;

  CurrentEntry = Adapter->ProtocolListHead.Flink;

  while (CurrentEntry != &Adapter->ProtocolListHead)
  {
     AdapterBinding = FUNC0(CurrentEntry, ADAPTER_BINDING, AdapterListEntry);

     Status = (*AdapterBinding->ProtocolBinding->Chars.PnPEventHandler)(
      AdapterBinding->NdisOpenBlock.ProtocolBindingContext,
      PnPEvent);

     if (Status == NDIS_STATUS_PENDING)
     {
         FUNC2(Irp);
         /* Yes, I know this is stupid */
         PnPEvent->NdisReserved[0] = (ULONG_PTR)Irp;
         PnPEvent->NdisReserved[1] = (ULONG_PTR)CurrentEntry->Flink;
         return NDIS_STATUS_PENDING;
     }
     else if (Status != NDIS_STATUS_SUCCESS)
     {
         if (PnPEvent->Buffer) FUNC1(PnPEvent->Buffer);
         FUNC1(PnPEvent);
         return Status;
     }

     CurrentEntry = CurrentEntry->Flink;
  }

  if (PnPEvent->Buffer) FUNC1(PnPEvent->Buffer);
  FUNC1(PnPEvent);

  return NDIS_STATUS_SUCCESS;
}