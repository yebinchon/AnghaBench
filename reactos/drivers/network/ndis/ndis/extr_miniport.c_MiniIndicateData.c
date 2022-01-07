
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_13__ {int ProtocolBindingContext; } ;
struct TYPE_17__ {TYPE_3__ NdisOpenBlock; TYPE_2__* ProtocolBinding; } ;
struct TYPE_16__ {struct TYPE_16__* Flink; } ;
struct TYPE_14__ {int Lock; } ;
struct TYPE_15__ {TYPE_4__ NdisMiniportBlock; TYPE_6__ ProtocolListHead; } ;
struct TYPE_11__ {int (* ReceiveHandler ) (int ,int ,int ,int ,int ,int ,int ) ;} ;
struct TYPE_12__ {TYPE_1__ Chars; } ;
typedef int PVOID ;
typedef TYPE_5__* PLOGICAL_ADAPTER ;
typedef TYPE_6__* PLIST_ENTRY ;
typedef TYPE_7__* PADAPTER_BINDING ;
typedef int NDIS_HANDLE ;
typedef int KIRQL ;


 int ADAPTER_BINDING ;
 int AdapterListEntry ;
 TYPE_7__* CONTAINING_RECORD (TYPE_6__*,int ,int ) ;
 int DEBUG_MINIPORT ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int MiniDisplayPacket2 (int ,int ,int ,int ) ;
 int NDIS_DbgPrint (int ,char*) ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ) ;

VOID
MiniIndicateData(
    PLOGICAL_ADAPTER Adapter,
    NDIS_HANDLE MacReceiveContext,
    PVOID HeaderBuffer,
    UINT HeaderBufferSize,
    PVOID LookaheadBuffer,
    UINT LookaheadBufferSize,
    UINT PacketSize)
{
  KIRQL OldIrql;
  PLIST_ENTRY CurrentEntry;
  PADAPTER_BINDING AdapterBinding;

  NDIS_DbgPrint(DEBUG_MINIPORT, ("Called. Adapter (0x%X)  HeaderBuffer (0x%X)  "
      "HeaderBufferSize (0x%X)  LookaheadBuffer (0x%X)  LookaheadBufferSize (0x%X).\n",
      Adapter, HeaderBuffer, HeaderBufferSize, LookaheadBuffer, LookaheadBufferSize));





  NDIS_DbgPrint(MAX_TRACE, ("acquiring miniport block lock\n"));
  KeAcquireSpinLock(&Adapter->NdisMiniportBlock.Lock, &OldIrql);
    {
      CurrentEntry = Adapter->ProtocolListHead.Flink;
      NDIS_DbgPrint(DEBUG_MINIPORT, ("CurrentEntry = %x\n", CurrentEntry));

      if (CurrentEntry == &Adapter->ProtocolListHead)
        {
          NDIS_DbgPrint(MIN_TRACE, ("WARNING: No upper protocol layer.\n"));
        }

      while (CurrentEntry != &Adapter->ProtocolListHead)
        {
          AdapterBinding = CONTAINING_RECORD(CurrentEntry, ADAPTER_BINDING, AdapterListEntry);
   NDIS_DbgPrint(DEBUG_MINIPORT, ("AdapterBinding = %x\n", AdapterBinding));

   NDIS_DbgPrint
       (MID_TRACE,
        ("XXX (%x) %x %x %x %x %x %x %x XXX\n",
  *AdapterBinding->ProtocolBinding->Chars.ReceiveHandler,
  AdapterBinding->NdisOpenBlock.ProtocolBindingContext,
  MacReceiveContext,
  HeaderBuffer,
  HeaderBufferSize,
  LookaheadBuffer,
  LookaheadBufferSize,
  PacketSize));


          (*AdapterBinding->ProtocolBinding->Chars.ReceiveHandler)(
              AdapterBinding->NdisOpenBlock.ProtocolBindingContext,
              MacReceiveContext,
              HeaderBuffer,
              HeaderBufferSize,
              LookaheadBuffer,
              LookaheadBufferSize,
              PacketSize);

          CurrentEntry = CurrentEntry->Flink;
        }
    }
  KeReleaseSpinLock(&Adapter->NdisMiniportBlock.Lock, OldIrql);

  NDIS_DbgPrint(MAX_TRACE, ("Leaving.\n"));
}
