
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int TfEditCookie ;
typedef int TfClientId ;
struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_18__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_21__ {int refCount; TYPE_7__ ITfContext_iface; int pTextLayoutSink; int pTextEditSink; int pStatusSink; int pEditTransactionSink; int pContextKeyEventSink; int defaultCookie; int pITfContextOwnerCompositionSink; int pITextStoreACP; int CompartmentMgr; int * manager; int connected; int tidOwner; TYPE_6__ ITextStoreACPServices_iface; TYPE_5__ ITextStoreACPSink_iface; TYPE_4__ ITfSourceSingle_iface; TYPE_3__ ITfInsertAtSelection_iface; TYPE_2__ ITfContextOwnerCompositionServices_iface; TYPE_1__ ITfSource_iface; } ;
struct TYPE_20__ {TYPE_9__* pOwningContext; int lockType; } ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int ITfDocumentMgr ;
typedef TYPE_7__ ITfContext ;
typedef int HRESULT ;
typedef TYPE_8__ EditCookie ;
typedef TYPE_9__ Context ;


 int COOKIE_MAGIC_EDITCOOKIE ;
 int CompartmentMgr_Constructor (int *,int *,int **) ;
 int ContextOwnerCompositionServicesVtbl ;
 int ContextSourceSingleVtbl ;
 int ContextSourceVtbl ;
 int ContextVtbl ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_9__*) ;
 int IID_ITextStoreACP ;
 int IID_ITfContextOwnerCompositionSink ;
 int IID_IUnknown ;
 int IUnknown_QueryInterface (int *,int *,int *) ;
 int InsertAtSelectionVtbl ;
 int S_OK ;
 int TF_ES_READ ;
 int TRACE (char*,...) ;
 int TextStoreACPServicesVtbl ;
 int TextStoreACPSinkVtbl ;
 int generate_Cookie (int ,TYPE_8__*) ;
 int list_init (int *) ;

HRESULT Context_Constructor(TfClientId tidOwner, IUnknown *punk, ITfDocumentMgr *mgr, ITfContext **ppOut, TfEditCookie *pecTextStore)
{
    Context *This;
    EditCookie *cookie;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(Context));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    cookie = HeapAlloc(GetProcessHeap(),0,sizeof(EditCookie));
    if (cookie == ((void*)0))
    {
        HeapFree(GetProcessHeap(),0,This);
        return E_OUTOFMEMORY;
    }

    TRACE("(%p) %x %p %p %p\n",This, tidOwner, punk, ppOut, pecTextStore);

    This->ITfContext_iface.lpVtbl= &ContextVtbl;
    This->ITfSource_iface.lpVtbl = &ContextSourceVtbl;
    This->ITfContextOwnerCompositionServices_iface.lpVtbl = &ContextOwnerCompositionServicesVtbl;
    This->ITfInsertAtSelection_iface.lpVtbl = &InsertAtSelectionVtbl;
    This->ITfSourceSingle_iface.lpVtbl = &ContextSourceSingleVtbl;
    This->ITextStoreACPSink_iface.lpVtbl = &TextStoreACPSinkVtbl;
    This->ITextStoreACPServices_iface.lpVtbl = &TextStoreACPServicesVtbl;
    This->refCount = 1;
    This->tidOwner = tidOwner;
    This->connected = FALSE;
    This->manager = mgr;

    CompartmentMgr_Constructor((IUnknown*)&This->ITfContext_iface, &IID_IUnknown, (IUnknown**)&This->CompartmentMgr);

    cookie->lockType = TF_ES_READ;
    cookie->pOwningContext = This;

    if (punk)
    {
        IUnknown_QueryInterface(punk, &IID_ITextStoreACP,
                          (LPVOID*)&This->pITextStoreACP);

        IUnknown_QueryInterface(punk, &IID_ITfContextOwnerCompositionSink,
                                (LPVOID*)&This->pITfContextOwnerCompositionSink);

        if (!This->pITextStoreACP && !This->pITfContextOwnerCompositionSink)
            FIXME("Unhandled pUnk\n");
    }

    This->defaultCookie = generate_Cookie(COOKIE_MAGIC_EDITCOOKIE,cookie);
    *pecTextStore = This->defaultCookie;

    list_init(&This->pContextKeyEventSink);
    list_init(&This->pEditTransactionSink);
    list_init(&This->pStatusSink);
    list_init(&This->pTextEditSink);
    list_init(&This->pTextLayoutSink);

    *ppOut = &This->ITfContext_iface;
    TRACE("returning %p\n", *ppOut);

    return S_OK;
}
