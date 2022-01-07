
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_4__* bsc; TYPE_5__* nschannel; TYPE_2__ nsIAsyncVerifyRedirectCallback_iface; } ;
typedef TYPE_3__ nsRedirectCallback ;
struct TYPE_10__ {int IBindStatusCallback_iface; } ;
struct TYPE_13__ {TYPE_1__ bsc; } ;
typedef TYPE_4__ nsChannelBSC ;
struct TYPE_14__ {int nsIHttpChannel_iface; } ;
typedef TYPE_5__ nsChannel ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IBindStatusCallback_AddRef (int *) ;
 int S_OK ;
 TYPE_3__* heap_alloc (int) ;
 int nsAsyncVerifyRedirectCallbackVtbl ;
 int nsIHttpChannel_AddRef (int *) ;

__attribute__((used)) static HRESULT create_redirect_callback(nsChannel *nschannel, nsChannelBSC *bsc, nsRedirectCallback **ret)
{
    nsRedirectCallback *callback;

    callback = heap_alloc(sizeof(*callback));
    if(!callback)
        return E_OUTOFMEMORY;

    callback->nsIAsyncVerifyRedirectCallback_iface.lpVtbl = &nsAsyncVerifyRedirectCallbackVtbl;
    callback->ref = 1;

    nsIHttpChannel_AddRef(&nschannel->nsIHttpChannel_iface);
    callback->nschannel = nschannel;

    IBindStatusCallback_AddRef(&bsc->bsc.IBindStatusCallback_iface);
    callback->bsc = bsc;

    *ret = callback;
    return S_OK;
}
