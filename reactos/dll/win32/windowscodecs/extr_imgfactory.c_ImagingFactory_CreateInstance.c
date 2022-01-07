
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ IWICImagingFactory2_iface; TYPE_1__ IWICComponentFactory_iface; } ;
typedef int REFIID ;
typedef TYPE_2__ ImagingFactory ;
typedef int HRESULT ;


 int ComponentFactory_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IWICImagingFactory2_QueryInterface (TYPE_3__*,int ,void**) ;
 int IWICImagingFactory2_Release (TYPE_3__*) ;
 int ImagingFactory_Vtbl ;
 int TRACE (char*,int ,void**) ;
 int debugstr_guid (int ) ;

HRESULT ImagingFactory_CreateInstance(REFIID iid, void** ppv)
{
    ImagingFactory *This;
    HRESULT ret;

    TRACE("(%s,%p)\n", debugstr_guid(iid), ppv);

    *ppv = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IWICImagingFactory2_iface.lpVtbl = &ImagingFactory_Vtbl;
    This->IWICComponentFactory_iface.lpVtbl = &ComponentFactory_Vtbl;
    This->ref = 1;

    ret = IWICImagingFactory2_QueryInterface(&This->IWICImagingFactory2_iface, iid, ppv);
    IWICImagingFactory2_Release(&This->IWICImagingFactory2_iface);

    return ret;
}
