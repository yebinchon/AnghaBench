#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TfEditCookie ;
typedef  int /*<<< orphan*/  TfClientId ;
struct TYPE_19__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_18__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_17__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_13__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_21__ {int refCount; TYPE_7__ ITfContext_iface; int /*<<< orphan*/  pTextLayoutSink; int /*<<< orphan*/  pTextEditSink; int /*<<< orphan*/  pStatusSink; int /*<<< orphan*/  pEditTransactionSink; int /*<<< orphan*/  pContextKeyEventSink; int /*<<< orphan*/  defaultCookie; int /*<<< orphan*/  pITfContextOwnerCompositionSink; int /*<<< orphan*/  pITextStoreACP; int /*<<< orphan*/  CompartmentMgr; int /*<<< orphan*/ * manager; int /*<<< orphan*/  connected; int /*<<< orphan*/  tidOwner; TYPE_6__ ITextStoreACPServices_iface; TYPE_5__ ITextStoreACPSink_iface; TYPE_4__ ITfSourceSingle_iface; TYPE_3__ ITfInsertAtSelection_iface; TYPE_2__ ITfContextOwnerCompositionServices_iface; TYPE_1__ ITfSource_iface; } ;
struct TYPE_20__ {TYPE_9__* pOwningContext; int /*<<< orphan*/  lockType; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITfDocumentMgr ;
typedef  TYPE_7__ ITfContext ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_8__ EditCookie ;
typedef  TYPE_9__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  COOKIE_MAGIC_EDITCOOKIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ContextOwnerCompositionServicesVtbl ; 
 int /*<<< orphan*/  ContextSourceSingleVtbl ; 
 int /*<<< orphan*/  ContextSourceVtbl ; 
 int /*<<< orphan*/  ContextVtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  IID_ITextStoreACP ; 
 int /*<<< orphan*/  IID_ITfContextOwnerCompositionSink ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InsertAtSelectionVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TF_ES_READ ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  TextStoreACPServicesVtbl ; 
 int /*<<< orphan*/  TextStoreACPSinkVtbl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

HRESULT FUNC9(TfClientId tidOwner, IUnknown *punk, ITfDocumentMgr *mgr, ITfContext **ppOut, TfEditCookie *pecTextStore)
{
    Context *This;
    EditCookie *cookie;

    This = FUNC3(FUNC2(),HEAP_ZERO_MEMORY,sizeof(Context));
    if (This == NULL)
        return E_OUTOFMEMORY;

    cookie = FUNC3(FUNC2(),0,sizeof(EditCookie));
    if (cookie == NULL)
    {
        FUNC4(FUNC2(),0,This);
        return E_OUTOFMEMORY;
    }

    FUNC6("(%p) %x %p %p %p\n",This, tidOwner, punk, ppOut, pecTextStore);

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

    FUNC0((IUnknown*)&This->ITfContext_iface, &IID_IUnknown, (IUnknown**)&This->CompartmentMgr);

    cookie->lockType = TF_ES_READ;
    cookie->pOwningContext = This;

    if (punk)
    {
        FUNC5(punk, &IID_ITextStoreACP,
                          (LPVOID*)&This->pITextStoreACP);

        FUNC5(punk, &IID_ITfContextOwnerCompositionSink,
                                (LPVOID*)&This->pITfContextOwnerCompositionSink);

        if (!This->pITextStoreACP && !This->pITfContextOwnerCompositionSink)
            FUNC1("Unhandled pUnk\n");
    }

    This->defaultCookie = FUNC7(COOKIE_MAGIC_EDITCOOKIE,cookie);
    *pecTextStore = This->defaultCookie;

    FUNC8(&This->pContextKeyEventSink);
    FUNC8(&This->pEditTransactionSink);
    FUNC8(&This->pStatusSink);
    FUNC8(&This->pTextEditSink);
    FUNC8(&This->pTextLayoutSink);

    *ppOut = &This->ITfContext_iface;
    FUNC6("returning %p\n", *ppOut);

    return S_OK;
}