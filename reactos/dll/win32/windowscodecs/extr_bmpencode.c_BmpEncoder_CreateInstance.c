
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IWICBitmapEncoder_iface; int * frame; int * stream; } ;
typedef int REFIID ;
typedef int HRESULT ;
typedef TYPE_1__ BmpEncoder ;


 int BmpEncoder_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IWICBitmapEncoder_QueryInterface (TYPE_2__*,int ,void**) ;
 int IWICBitmapEncoder_Release (TYPE_2__*) ;
 int TRACE (char*,int ,void**) ;
 int debugstr_guid (int ) ;

HRESULT BmpEncoder_CreateInstance(REFIID iid, void** ppv)
{
    BmpEncoder *This;
    HRESULT ret;

    TRACE("(%s,%p)\n", debugstr_guid(iid), ppv);

    *ppv = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(BmpEncoder));
    if (!This) return E_OUTOFMEMORY;

    This->IWICBitmapEncoder_iface.lpVtbl = &BmpEncoder_Vtbl;
    This->ref = 1;
    This->stream = ((void*)0);
    This->frame = ((void*)0);

    ret = IWICBitmapEncoder_QueryInterface(&This->IWICBitmapEncoder_iface, iid, ppv);
    IWICBitmapEncoder_Release(&This->IWICBitmapEncoder_iface);

    return ret;
}
