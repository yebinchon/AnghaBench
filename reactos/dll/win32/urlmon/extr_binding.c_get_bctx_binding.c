
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
typedef int IUnknown ;
typedef TYPE_1__ IBinding ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef int Binding ;


 int BindingVtbl ;
 scalar_t__ FAILED (int ) ;
 int IBindCtx_GetObjectParam (int *,int ,int **) ;
 int IID_IBinding ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int cbinding_contextW ;
 int * impl_from_IBinding (TYPE_1__*) ;

__attribute__((used)) static Binding *get_bctx_binding(IBindCtx *bctx)
{
    IBinding *binding;
    IUnknown *unk;
    HRESULT hres;

    hres = IBindCtx_GetObjectParam(bctx, cbinding_contextW, &unk);
    if(FAILED(hres))
        return ((void*)0);

    hres = IUnknown_QueryInterface(unk, &IID_IBinding, (void**)&binding);
    IUnknown_Release(unk);
    if(FAILED(hres))
        return ((void*)0);

    if (binding->lpVtbl != &BindingVtbl)
        return ((void*)0);
    return impl_from_IBinding(binding);
}
