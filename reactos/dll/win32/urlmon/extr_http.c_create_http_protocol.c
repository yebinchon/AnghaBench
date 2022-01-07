
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * vtbl; } ;
struct TYPE_14__ {int ref; TYPE_5__ IUnknown_outer; TYPE_5__* outer; int https; TYPE_4__ IWinInetHttpInfo_iface; TYPE_3__ IInternetPriority_iface; TYPE_2__ IInternetProtocolEx_iface; TYPE_1__ base; } ;
typedef TYPE_5__ IUnknown ;
typedef TYPE_6__ HttpProtocol ;
typedef int HRESULT ;
typedef int BOOL ;


 int AsyncProtocolVtbl ;
 int E_OUTOFMEMORY ;
 int HttpPriorityVtbl ;
 int HttpProtocolUnkVtbl ;
 int HttpProtocolVtbl ;
 int S_OK ;
 int URLMON_LockModule () ;
 int WinInetHttpInfoVtbl ;
 TYPE_6__* heap_alloc_zero (int) ;

__attribute__((used)) static HRESULT create_http_protocol(BOOL https, IUnknown *outer, void **ppobj)
{
    HttpProtocol *ret;

    ret = heap_alloc_zero(sizeof(HttpProtocol));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->base.vtbl = &AsyncProtocolVtbl;
    ret->IUnknown_outer.lpVtbl = &HttpProtocolUnkVtbl;
    ret->IInternetProtocolEx_iface.lpVtbl = &HttpProtocolVtbl;
    ret->IInternetPriority_iface.lpVtbl = &HttpPriorityVtbl;
    ret->IWinInetHttpInfo_iface.lpVtbl = &WinInetHttpInfoVtbl;

    ret->https = https;
    ret->ref = 1;
    ret->outer = outer ? outer : &ret->IUnknown_outer;

    *ppobj = &ret->IUnknown_outer;

    URLMON_LockModule();
    return S_OK;
}
