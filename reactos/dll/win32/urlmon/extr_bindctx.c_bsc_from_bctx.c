
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IBindStatusCallbackEx_iface; int * callback; } ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef TYPE_1__ BindStatusCallback ;


 scalar_t__ FAILED (int ) ;
 int IBindStatusCallbackEx_Release (int *) ;
 int IBindStatusCallback_AddRef (int *) ;
 int IBindStatusCallback_QueryInterface (int *,int *,void**) ;
 int IBindStatusCallback_Release (int *) ;
 int IID_IBindStatusCallbackHolder ;
 int * bsch_from_bctx (int *) ;

IBindStatusCallback *bsc_from_bctx(IBindCtx *bctx)
{
    BindStatusCallback *holder;
    IBindStatusCallback *bsc;
    HRESULT hres;

    bsc = bsch_from_bctx(bctx);
    if(!bsc)
        return ((void*)0);

    hres = IBindStatusCallback_QueryInterface(bsc, &IID_IBindStatusCallbackHolder, (void**)&holder);
    if(FAILED(hres))
        return bsc;

    if(holder->callback) {
        IBindStatusCallback_Release(bsc);
        bsc = holder->callback;
        IBindStatusCallback_AddRef(bsc);
    }

    IBindStatusCallbackEx_Release(&holder->IBindStatusCallbackEx_iface);
    return bsc;
}
