
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * manager; int connected; int ITextStoreACPSink_iface; scalar_t__ pITextStoreACP; } ;
typedef int IUnknown ;
typedef int ITfContext ;
typedef int HRESULT ;
typedef TYPE_1__ Context ;


 int FALSE ;
 int ITextStoreACP_UnadviseSink (scalar_t__,int *) ;
 int S_OK ;
 TYPE_1__* impl_from_ITfContext (int *) ;

HRESULT Context_Uninitialize(ITfContext *iface)
{
    Context *This = impl_from_ITfContext(iface);

    if (This->pITextStoreACP)
        ITextStoreACP_UnadviseSink(This->pITextStoreACP, (IUnknown*)&This->ITextStoreACPSink_iface);
    This->connected = FALSE;
    This->manager = ((void*)0);
    return S_OK;
}
