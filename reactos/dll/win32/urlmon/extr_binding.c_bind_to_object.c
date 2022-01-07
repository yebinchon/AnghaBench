
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hres; int bindf; int IBinding_iface; void* obj; } ;
typedef int REFIID ;
typedef int IUri ;
typedef int IMoniker ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ Binding ;


 int BINDF_ASYNCHRONOUS ;
 scalar_t__ FAILED (scalar_t__) ;
 int IBinding_Release (int *) ;
 int IUnknown_AddRef (void*) ;
 scalar_t__ MK_S_ASYNCHRONOUS ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ start_binding (int *,int *,int *,int *,int ,int ,TYPE_1__**) ;

HRESULT bind_to_object(IMoniker *mon, IUri *uri, IBindCtx *pbc, REFIID riid, void **ppv)
{
    Binding *binding;
    HRESULT hres;

    *ppv = ((void*)0);

    hres = start_binding(mon, ((void*)0), uri, pbc, TRUE, riid, &binding);
    if(FAILED(hres))
        return hres;

    if(binding->hres != S_OK) {
        hres = SUCCEEDED(binding->hres) ? S_OK : binding->hres;
    }else if(binding->bindf & BINDF_ASYNCHRONOUS) {
        hres = MK_S_ASYNCHRONOUS;
    }else {
        *ppv = binding->obj;
        IUnknown_AddRef(binding->obj);
        hres = S_OK;
    }

    IBinding_Release(&binding->IBinding_iface);

    return hres;
}
