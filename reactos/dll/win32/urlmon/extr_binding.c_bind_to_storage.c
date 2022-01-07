
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* vtbl; } ;
struct TYPE_10__ {scalar_t__ hres; scalar_t__ download_state; int state; int bindf; int IBinding_iface; TYPE_4__* stgmed_obj; TYPE_1__* protocol; } ;
struct TYPE_9__ {scalar_t__ (* get_result ) (TYPE_4__*,int,void**) ;} ;
struct TYPE_8__ {int IInternetProtocolEx_iface; } ;
typedef int REFIID ;
typedef int IUri ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;
typedef TYPE_3__ Binding ;


 scalar_t__ BEFORE_DOWNLOAD ;
 int BINDF_ASYNCHRONOUS ;
 int BINDING_LOCKED ;
 int BINDING_STOPPED ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IBinding_Release (int *) ;
 int IInternetProtocolEx_UnlockRequest (int *) ;
 scalar_t__ MK_S_ASYNCHRONOUS ;
 scalar_t__ S_OK ;
 TYPE_3__* get_bctx_binding (int *) ;
 scalar_t__ start_binding (int *,TYPE_3__*,int *,int *,int ,int ,TYPE_3__**) ;
 scalar_t__ stub1 (TYPE_4__*,int,void**) ;

HRESULT bind_to_storage(IUri *uri, IBindCtx *pbc, REFIID riid, void **ppv)
{
    Binding *binding = ((void*)0), *binding_ctx;
    HRESULT hres;

    binding_ctx = get_bctx_binding(pbc);

    hres = start_binding(((void*)0), binding_ctx, uri, pbc, FALSE, riid, &binding);
    if(binding_ctx)
        IBinding_Release(&binding_ctx->IBinding_iface);
    if(FAILED(hres))
        return hres;

    if(binding->hres == S_OK && binding->download_state != BEFORE_DOWNLOAD ) {
        if((binding->state & BINDING_STOPPED) && (binding->state & BINDING_LOCKED))
            IInternetProtocolEx_UnlockRequest(&binding->protocol->IInternetProtocolEx_iface);

        hres = binding->stgmed_obj->vtbl->get_result(binding->stgmed_obj, binding->bindf, ppv);
    }else if(binding->bindf & BINDF_ASYNCHRONOUS) {
        hres = MK_S_ASYNCHRONOUS;
    }else {
        hres = FAILED(binding->hres) ? binding->hres : S_OK;
    }

    IBinding_Release(&binding->IBinding_iface);

    return hres;
}
