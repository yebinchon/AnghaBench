
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int refCount; TYPE_2__ ITfDocumentMgr_iface; int CompartmentMgr; int TransitoryExtensionSink; int * ThreadMgrSink; TYPE_1__ ITfSource_iface; } ;
typedef int IUnknown ;
typedef int ITfThreadMgrEventSink ;
typedef TYPE_2__ ITfDocumentMgr ;
typedef int HRESULT ;
typedef TYPE_3__ DocumentMgr ;


 int CompartmentMgr_Constructor (int *,int *,int **) ;
 int DocumentMgrSourceVtbl ;
 int DocumentMgrVtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int IID_IUnknown ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int list_init (int *) ;

HRESULT DocumentMgr_Constructor(ITfThreadMgrEventSink *ThreadMgrSink, ITfDocumentMgr **ppOut)
{
    DocumentMgr *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(DocumentMgr));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfDocumentMgr_iface.lpVtbl = &DocumentMgrVtbl;
    This->ITfSource_iface.lpVtbl = &DocumentMgrSourceVtbl;
    This->refCount = 1;
    This->ThreadMgrSink = ThreadMgrSink;
    list_init(&This->TransitoryExtensionSink);

    CompartmentMgr_Constructor((IUnknown*)&This->ITfDocumentMgr_iface, &IID_IUnknown, (IUnknown**)&This->CompartmentMgr);

    *ppOut = &This->ITfDocumentMgr_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
