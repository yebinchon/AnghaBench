
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stop_cache_binding_proc_t ;
struct TYPE_3__ {int IBindStatusCallback_iface; int bindf; void* ctx; int onstop_proc; } ;
typedef int IUri ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef TYPE_1__ DownloadBSC ;


 int BINDF_ASYNCHRONOUS ;
 int CreateAsyncBindCtx (int ,int *,int *,int **) ;
 int CreateURLMonikerEx2 (int *,int *,int **,int ) ;
 int DownloadBSC_Create (int *,int *,TYPE_1__**) ;
 scalar_t__ FAILED (int ) ;
 int IBindCtx_Release (int *) ;
 int IBindStatusCallback_Release (int *) ;
 int IID_IUnknown ;
 int IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;

HRESULT download_to_cache(IUri *uri, stop_cache_binding_proc_t proc, void *ctx, IBindStatusCallback *callback)
{
    DownloadBSC *dwl_bsc;
    IBindCtx *bindctx;
    IMoniker *mon;
    IUnknown *unk;
    HRESULT hres;

    hres = DownloadBSC_Create(callback, ((void*)0), &dwl_bsc);
    if(FAILED(hres))
        return hres;

    dwl_bsc->onstop_proc = proc;
    dwl_bsc->ctx = ctx;
    dwl_bsc->bindf = BINDF_ASYNCHRONOUS;

    hres = CreateAsyncBindCtx(0, &dwl_bsc->IBindStatusCallback_iface, ((void*)0), &bindctx);
    IBindStatusCallback_Release(&dwl_bsc->IBindStatusCallback_iface);
    if(FAILED(hres))
        return hres;

    hres = CreateURLMonikerEx2(((void*)0), uri, &mon, 0);
    if(FAILED(hres)) {
        IBindCtx_Release(bindctx);
        return hres;
    }

    hres = IMoniker_BindToStorage(mon, bindctx, ((void*)0), &IID_IUnknown, (void**)&unk);
    IMoniker_Release(mon);
    IBindCtx_Release(bindctx);
    if(SUCCEEDED(hres) && unk)
        IUnknown_Release(unk);
    return hres;

}
