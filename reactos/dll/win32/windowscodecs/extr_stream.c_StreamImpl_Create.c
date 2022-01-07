
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IWICStream_iface; int * pStream; } ;
typedef TYPE_1__ IWICStreamImpl ;
typedef TYPE_2__ IWICStream ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int WICStream_Vtbl ;

HRESULT StreamImpl_Create(IWICStream **stream)
{
    IWICStreamImpl *pObject;

    if( !stream ) return E_INVALIDARG;

    pObject = HeapAlloc(GetProcessHeap(), 0, sizeof(IWICStreamImpl));
    if( !pObject ) {
        *stream = ((void*)0);
        return E_OUTOFMEMORY;
    }

    pObject->IWICStream_iface.lpVtbl = &WICStream_Vtbl;
    pObject->ref = 1;
    pObject->pStream = ((void*)0);

    *stream = &pObject->IWICStream_iface;

    return S_OK;
}
