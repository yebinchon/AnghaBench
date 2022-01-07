
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * window; int mon; int IBindStatusCallback_iface; } ;
typedef int IStream ;
typedef int IBindCtx ;
typedef int HTMLInnerWindow ;
typedef int HRESULT ;
typedef TYPE_1__ BSCallback ;


 int CreateAsyncBindCtx (int ,int *,int *,int **) ;
 scalar_t__ FAILED (int ) ;
 int IBindCtx_AddRef (int *) ;
 int IBindCtx_Release (int *) ;
 int IID_IStream ;
 int IMoniker_BindToStorage (int ,int *,int *,int *,void**) ;
 int IStream_Release (int *) ;
 int RegisterBindStatusCallback (int *,int *,int *,int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,int *,TYPE_1__*,int *) ;
 int WARN (char*,int ) ;

HRESULT start_binding(HTMLInnerWindow *inner_window, BSCallback *bscallback, IBindCtx *bctx)
{
    IStream *str = ((void*)0);
    HRESULT hres;

    TRACE("(%p %p %p)\n", inner_window, bscallback, bctx);

    bscallback->window = inner_window;



    if(bctx) {
        hres = RegisterBindStatusCallback(bctx, &bscallback->IBindStatusCallback_iface, ((void*)0), 0);
        if(SUCCEEDED(hres))
            IBindCtx_AddRef(bctx);
    }else {
        hres = CreateAsyncBindCtx(0, &bscallback->IBindStatusCallback_iface, ((void*)0), &bctx);
    }

    if(FAILED(hres)) {
        bscallback->window = ((void*)0);
        return hres;
    }

    hres = IMoniker_BindToStorage(bscallback->mon, bctx, ((void*)0), &IID_IStream, (void**)&str);
    IBindCtx_Release(bctx);
    if(FAILED(hres)) {
        WARN("BindToStorage failed: %08x\n", hres);
        bscallback->window = ((void*)0);
        return hres;
    }

    if(str)
        IStream_Release(str);

    return S_OK;
}
