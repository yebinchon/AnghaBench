#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_21__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_20__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_19__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_18__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_17__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_22__ {int refCount; TYPE_11__ ITfThreadMgrEx_iface; int /*<<< orphan*/  InputProcessorProfileActivationSink; int /*<<< orphan*/  UIElementSink; int /*<<< orphan*/  ThreadMgrEventSink; int /*<<< orphan*/  ThreadFocusSink; int /*<<< orphan*/  PreservedKeyNotifySink; int /*<<< orphan*/  KeyTraceEventSink; int /*<<< orphan*/  DisplayAttributeNotifySink; int /*<<< orphan*/  ActiveLanguageProfileNotifySink; int /*<<< orphan*/  AssociatedFocusWindows; int /*<<< orphan*/  CreatedDocumentMgrs; int /*<<< orphan*/  CurrentPreservedKeys; int /*<<< orphan*/  CompartmentMgr; TYPE_7__ ITfSourceSingle_iface; TYPE_6__ ITfUIElementMgr_iface; TYPE_5__ ITfThreadMgrEventSink_iface; TYPE_4__ ITfClientId_iface; TYPE_3__ ITfMessagePump_iface; TYPE_2__ ITfKeystrokeMgr_iface; TYPE_1__ ITfSource_iface; } ;
typedef  TYPE_8__ ThreadMgr ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  ClientIdVtbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_8__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  KeystrokeMgrVtbl ; 
 int /*<<< orphan*/  MessagePumpVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  SourceSingleVtbl ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_8__*) ; 
 int /*<<< orphan*/  ThreadMgrEventSinkVtbl ; 
 int /*<<< orphan*/  ThreadMgrExVtbl ; 
 int /*<<< orphan*/  ThreadMgrSourceVtbl ; 
 int /*<<< orphan*/  ThreadMgrUIElementMgrVtbl ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tlsIndex ; 

HRESULT FUNC8(IUnknown *pUnkOuter, IUnknown **ppOut)
{
    ThreadMgr *This;
    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    /* Only 1 ThreadMgr is created per thread */
    This = FUNC5(tlsIndex);
    if (This)
    {
        FUNC4(&This->ITfThreadMgrEx_iface);
        *ppOut = (IUnknown*)&This->ITfThreadMgrEx_iface;
        return S_OK;
    }

    This = FUNC2(FUNC1(),HEAP_ZERO_MEMORY,sizeof(ThreadMgr));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->ITfThreadMgrEx_iface.lpVtbl = &ThreadMgrExVtbl;
    This->ITfSource_iface.lpVtbl = &ThreadMgrSourceVtbl;
    This->ITfKeystrokeMgr_iface.lpVtbl = &KeystrokeMgrVtbl;
    This->ITfMessagePump_iface.lpVtbl = &MessagePumpVtbl;
    This->ITfClientId_iface.lpVtbl = &ClientIdVtbl;
    This->ITfThreadMgrEventSink_iface.lpVtbl = &ThreadMgrEventSinkVtbl;
    This->ITfUIElementMgr_iface.lpVtbl = &ThreadMgrUIElementMgrVtbl;
    This->ITfSourceSingle_iface.lpVtbl = &SourceSingleVtbl;
    This->refCount = 1;
    FUNC6(tlsIndex,This);

    FUNC0((IUnknown*)&This->ITfThreadMgrEx_iface, &IID_IUnknown, (IUnknown**)&This->CompartmentMgr);

    FUNC7(&This->CurrentPreservedKeys);
    FUNC7(&This->CreatedDocumentMgrs);
    FUNC7(&This->AssociatedFocusWindows);

    FUNC7(&This->ActiveLanguageProfileNotifySink);
    FUNC7(&This->DisplayAttributeNotifySink);
    FUNC7(&This->KeyTraceEventSink);
    FUNC7(&This->PreservedKeyNotifySink);
    FUNC7(&This->ThreadFocusSink);
    FUNC7(&This->ThreadMgrEventSink);
    FUNC7(&This->UIElementSink);
    FUNC7(&This->InputProcessorProfileActivationSink);

    FUNC3("returning %p\n", This);
    *ppOut = (IUnknown *)&This->ITfThreadMgrEx_iface;
    return S_OK;
}