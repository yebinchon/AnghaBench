
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_3__ IHtmlLoadOptions_iface; int * opts; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_1__ HTMLLoadOptions ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HtmlLoadOptionsVtbl ;
 int IHtmlLoadOptions_QueryInterface (TYPE_3__*,int ,void**) ;
 int IHtmlLoadOptions_Release (TYPE_3__*) ;
 int TRACE (char*,int *,int ,void**) ;
 int debugstr_mshtml_guid (int ) ;
 TYPE_1__* heap_alloc (int) ;

HRESULT HTMLLoadOptions_Create(IUnknown *pUnkOuter, REFIID riid, void** ppv)
{
    HTMLLoadOptions *ret;
    HRESULT hres;

    TRACE("(%p %s %p)\n", pUnkOuter, debugstr_mshtml_guid(riid), ppv);

    ret = heap_alloc(sizeof(HTMLLoadOptions));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHtmlLoadOptions_iface.lpVtbl = &HtmlLoadOptionsVtbl;
    ret->ref = 1;
    ret->opts = ((void*)0);

    hres = IHtmlLoadOptions_QueryInterface(&ret->IHtmlLoadOptions_iface, riid, ppv);
    IHtmlLoadOptions_Release(&ret->IHtmlLoadOptions_iface);
    return hres;
}
