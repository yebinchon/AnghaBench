
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * vtbl; } ;
struct TYPE_15__ {int ref; TYPE_5__ IUnknown_outer; TYPE_5__* outer; TYPE_4__ IWinInetHttpInfo_iface; TYPE_3__ IInternetPriority_iface; TYPE_2__ IInternetProtocolEx_iface; TYPE_1__ base; } ;
typedef TYPE_5__ IUnknown ;
typedef int HRESULT ;
typedef TYPE_6__ FtpProtocol ;


 int AsyncProtocolVtbl ;
 int FtpPriorityVtbl ;
 int FtpProtocolUnkVtbl ;
 int FtpProtocolVtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_5__*,void**) ;
 int URLMON_LockModule () ;
 int WinInetHttpInfoVtbl ;
 TYPE_6__* heap_alloc_zero (int) ;

HRESULT FtpProtocol_Construct(IUnknown *outer, void **ppv)
{
    FtpProtocol *ret;

    TRACE("(%p %p)\n", outer, ppv);

    URLMON_LockModule();

    ret = heap_alloc_zero(sizeof(FtpProtocol));

    ret->base.vtbl = &AsyncProtocolVtbl;
    ret->IUnknown_outer.lpVtbl = &FtpProtocolUnkVtbl;
    ret->IInternetProtocolEx_iface.lpVtbl = &FtpProtocolVtbl;
    ret->IInternetPriority_iface.lpVtbl = &FtpPriorityVtbl;
    ret->IWinInetHttpInfo_iface.lpVtbl = &WinInetHttpInfoVtbl;
    ret->ref = 1;
    ret->outer = outer ? outer : &ret->IUnknown_outer;

    *ppv = &ret->IUnknown_outer;
    return S_OK;
}
