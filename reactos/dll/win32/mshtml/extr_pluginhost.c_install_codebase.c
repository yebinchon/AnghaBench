
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_4__ IBindStatusCallback_iface; TYPE_1__ IWindowForBindingUI_iface; } ;
typedef TYPE_2__ InstallCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;


 int AsyncInstallDistributionUnit (int *,int *,int *,int ,int ,int const*,int *,int *,int ) ;
 int CreateAsyncBindCtx (int ,TYPE_4__*,int *,int **) ;
 scalar_t__ FAILED (int ) ;
 int IBindCtx_Release (int *) ;
 int IBindStatusCallback_Release (TYPE_4__*) ;
 int InstallCallbackVtbl ;
 int WARN (char*,int ) ;
 int WindowForBindingUIVtbl ;
 TYPE_2__* heap_alloc (int) ;

__attribute__((used)) static void install_codebase(const WCHAR *url)
{
    InstallCallback *callback;
    IBindCtx *bctx;
    HRESULT hres;

    callback = heap_alloc(sizeof(*callback));
    if(!callback)
        return;

    callback->IBindStatusCallback_iface.lpVtbl = &InstallCallbackVtbl;
    callback->IWindowForBindingUI_iface.lpVtbl = &WindowForBindingUIVtbl;
    callback->ref = 1;

    hres = CreateAsyncBindCtx(0, &callback->IBindStatusCallback_iface, ((void*)0), &bctx);
    IBindStatusCallback_Release(&callback->IBindStatusCallback_iface);
    if(FAILED(hres))
        return;

    hres = AsyncInstallDistributionUnit(((void*)0), ((void*)0), ((void*)0), 0, 0, url, bctx, ((void*)0), 0);
    IBindCtx_Release(bctx);
    if(FAILED(hres))
        WARN("FAILED: %08x\n", hres);
}
