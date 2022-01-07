
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ download_state; int mon; int IBinding_iface; int bctx; } ;
typedef int IUnknown ;
typedef int IPersistMoniker ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef TYPE_1__ Binding ;


 int CreateAsyncBindCtxEx (int ,int ,int *,int *,int **,int ) ;
 scalar_t__ END_DOWNLOAD ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int IBindCtx_RegisterObjectParam (int *,int ,int *) ;
 int IBindCtx_Release (int *) ;
 int IBindCtx_RevokeObjectParam (int *,int ) ;
 int IPersistMoniker_Load (int *,int,int ,int *,int) ;
 int WARN (char*,int ) ;
 int bscb_holderW ;
 int cbinding_contextW ;

__attribute__((used)) static void load_doc_mon(Binding *binding, IPersistMoniker *persist)
{
    IBindCtx *bctx;
    HRESULT hres;

    hres = CreateAsyncBindCtxEx(binding->bctx, 0, ((void*)0), ((void*)0), &bctx, 0);
    if(FAILED(hres)) {
        WARN("CreateAsyncBindCtxEx failed: %08x\n", hres);
        return;
    }

    IBindCtx_RevokeObjectParam(bctx, bscb_holderW);
    IBindCtx_RegisterObjectParam(bctx, cbinding_contextW, (IUnknown*)&binding->IBinding_iface);

    hres = IPersistMoniker_Load(persist, binding->download_state == END_DOWNLOAD, binding->mon, bctx, 0x12);
    IBindCtx_RevokeObjectParam(bctx, cbinding_contextW);
    IBindCtx_Release(bctx);
    if(FAILED(hres))
        FIXME("Load failed: %08x\n", hres);
}
