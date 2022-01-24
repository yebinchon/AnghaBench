#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_13__ {int /*<<< orphan*/  ProtocolBindingContext; } ;
struct TYPE_17__ {TYPE_3__ NdisOpenBlock; TYPE_2__* ProtocolBinding; } ;
struct TYPE_16__ {struct TYPE_16__* Flink; } ;
struct TYPE_14__ {int /*<<< orphan*/  Lock; } ;
struct TYPE_15__ {TYPE_4__ NdisMiniportBlock; TYPE_6__ ProtocolListHead; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* ReceiveHandler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {TYPE_1__ Chars; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_5__* PLOGICAL_ADAPTER ;
typedef  TYPE_6__* PLIST_ENTRY ;
typedef  TYPE_7__* PADAPTER_BINDING ;
typedef  int /*<<< orphan*/  NDIS_HANDLE ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_BINDING ; 
 int /*<<< orphan*/  AdapterListEntry ; 
 TYPE_7__* FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_MINIPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID
FUNC6(
    PLOGICAL_ADAPTER    Adapter,
    NDIS_HANDLE         MacReceiveContext,
    PVOID               HeaderBuffer,
    UINT                HeaderBufferSize,
    PVOID               LookaheadBuffer,
    UINT                LookaheadBufferSize,
    UINT                PacketSize)
/*
 * FUNCTION: Indicate received data to bound protocols
 * ARGUMENTS:
 *     Adapter             = Pointer to logical adapter
 *     MacReceiveContext   = MAC receive context handle
 *     HeaderBuffer        = Pointer to header buffer
 *     HeaderBufferSize    = Size of header buffer
 *     LookaheadBuffer     = Pointer to lookahead buffer
 *     LookaheadBufferSize = Size of lookahead buffer
 *     PacketSize          = Total size of received packet
 */
{
  KIRQL OldIrql;
  PLIST_ENTRY CurrentEntry;
  PADAPTER_BINDING AdapterBinding;

  FUNC4(DEBUG_MINIPORT, ("Called. Adapter (0x%X)  HeaderBuffer (0x%X)  "
      "HeaderBufferSize (0x%X)  LookaheadBuffer (0x%X)  LookaheadBufferSize (0x%X).\n",
      Adapter, HeaderBuffer, HeaderBufferSize, LookaheadBuffer, LookaheadBufferSize));

#if DBG
  MiniDisplayPacket2(HeaderBuffer, HeaderBufferSize, LookaheadBuffer, LookaheadBufferSize);
#endif

  FUNC4(MAX_TRACE, ("acquiring miniport block lock\n"));
  FUNC1(&Adapter->NdisMiniportBlock.Lock, &OldIrql);
    {
      CurrentEntry = Adapter->ProtocolListHead.Flink;
      FUNC4(DEBUG_MINIPORT, ("CurrentEntry = %x\n", CurrentEntry));

      if (CurrentEntry == &Adapter->ProtocolListHead)
        {
          FUNC4(MIN_TRACE, ("WARNING: No upper protocol layer.\n"));
        }

      while (CurrentEntry != &Adapter->ProtocolListHead)
        {
          AdapterBinding = FUNC0(CurrentEntry, ADAPTER_BINDING, AdapterListEntry);
	  FUNC4(DEBUG_MINIPORT, ("AdapterBinding = %x\n", AdapterBinding));

	  FUNC4
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

          /* call the receive handler */
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
  FUNC2(&Adapter->NdisMiniportBlock.Lock, OldIrql);

  FUNC4(MAX_TRACE, ("Leaving.\n"));
}