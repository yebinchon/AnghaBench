
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * manager; int connected; int ITextStoreACPSink_iface; scalar_t__ pITextStoreACP; } ;
typedef int IUnknown ;
typedef int ITfDocumentMgr ;
typedef int ITfContext ;
typedef int HRESULT ;
typedef TYPE_1__ Context ;


 int IID_ITextStoreACPSink ;
 int ITextStoreACP_AdviseSink (scalar_t__,int *,int *,int ) ;
 int S_OK ;
 int TRUE ;
 int TS_AS_ALL_SINKS ;
 TYPE_1__* impl_from_ITfContext (int *) ;

HRESULT Context_Initialize(ITfContext *iface, ITfDocumentMgr *manager)
{
    Context *This = impl_from_ITfContext(iface);

    if (This->pITextStoreACP)
        ITextStoreACP_AdviseSink(This->pITextStoreACP, &IID_ITextStoreACPSink,
            (IUnknown*)&This->ITextStoreACPSink_iface, TS_AS_ALL_SINKS);
    This->connected = TRUE;
    This->manager = manager;
    return S_OK;
}
