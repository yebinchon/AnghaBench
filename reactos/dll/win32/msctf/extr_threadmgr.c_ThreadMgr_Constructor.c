
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_21__ {int * lpVtbl; } ;
struct TYPE_20__ {int * lpVtbl; } ;
struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_18__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_22__ {int refCount; TYPE_11__ ITfThreadMgrEx_iface; int InputProcessorProfileActivationSink; int UIElementSink; int ThreadMgrEventSink; int ThreadFocusSink; int PreservedKeyNotifySink; int KeyTraceEventSink; int DisplayAttributeNotifySink; int ActiveLanguageProfileNotifySink; int AssociatedFocusWindows; int CreatedDocumentMgrs; int CurrentPreservedKeys; int CompartmentMgr; TYPE_7__ ITfSourceSingle_iface; TYPE_6__ ITfUIElementMgr_iface; TYPE_5__ ITfThreadMgrEventSink_iface; TYPE_4__ ITfClientId_iface; TYPE_3__ ITfMessagePump_iface; TYPE_2__ ITfKeystrokeMgr_iface; TYPE_1__ ITfSource_iface; } ;
typedef TYPE_8__ ThreadMgr ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int ClientIdVtbl ;
 int CompartmentMgr_Constructor (int *,int *,int **) ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_8__* HeapAlloc (int ,int ,int) ;
 int IID_IUnknown ;
 int KeystrokeMgrVtbl ;
 int MessagePumpVtbl ;
 int S_OK ;
 int SourceSingleVtbl ;
 int TRACE (char*,TYPE_8__*) ;
 int ThreadMgrEventSinkVtbl ;
 int ThreadMgrExVtbl ;
 int ThreadMgrSourceVtbl ;
 int ThreadMgrUIElementMgrVtbl ;
 int ThreadMgr_AddRef (TYPE_11__*) ;
 TYPE_8__* TlsGetValue (int ) ;
 int TlsSetValue (int ,TYPE_8__*) ;
 int list_init (int *) ;
 int tlsIndex ;

HRESULT ThreadMgr_Constructor(IUnknown *pUnkOuter, IUnknown **ppOut)
{
    ThreadMgr *This;
    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;


    This = TlsGetValue(tlsIndex);
    if (This)
    {
        ThreadMgr_AddRef(&This->ITfThreadMgrEx_iface);
        *ppOut = (IUnknown*)&This->ITfThreadMgrEx_iface;
        return S_OK;
    }

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(ThreadMgr));
    if (This == ((void*)0))
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
    TlsSetValue(tlsIndex,This);

    CompartmentMgr_Constructor((IUnknown*)&This->ITfThreadMgrEx_iface, &IID_IUnknown, (IUnknown**)&This->CompartmentMgr);

    list_init(&This->CurrentPreservedKeys);
    list_init(&This->CreatedDocumentMgrs);
    list_init(&This->AssociatedFocusWindows);

    list_init(&This->ActiveLanguageProfileNotifySink);
    list_init(&This->DisplayAttributeNotifySink);
    list_init(&This->KeyTraceEventSink);
    list_init(&This->PreservedKeyNotifySink);
    list_init(&This->ThreadFocusSink);
    list_init(&This->ThreadMgrEventSink);
    list_init(&This->UIElementSink);
    list_init(&This->InputProcessorProfileActivationSink);

    TRACE("returning %p\n", This);
    *ppOut = (IUnknown *)&This->ITfThreadMgrEx_iface;
    return S_OK;
}
