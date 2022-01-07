
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_9__ {int * vtbl; } ;
struct TYPE_11__ {int ref; TYPE_3__ IInternetProtocol_iface; TYPE_1__ IInternetPriority_iface; TYPE_2__ base; } ;
typedef TYPE_3__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_4__ GopherProtocol ;


 int AsyncProtocolVtbl ;
 int GopherPriorityVtbl ;
 int GopherProtocolVtbl ;
 int S_OK ;
 int TRACE (char*,int *,TYPE_3__**) ;
 int URLMON_LockModule () ;
 TYPE_4__* heap_alloc_zero (int) ;

HRESULT GopherProtocol_Construct(IUnknown *pUnkOuter, LPVOID *ppobj)
{
    GopherProtocol *ret;

    TRACE("(%p %p)\n", pUnkOuter, ppobj);

    URLMON_LockModule();

    ret = heap_alloc_zero(sizeof(GopherProtocol));

    ret->base.vtbl = &AsyncProtocolVtbl;
    ret->IInternetProtocol_iface.lpVtbl = &GopherProtocolVtbl;
    ret->IInternetPriority_iface.lpVtbl = &GopherPriorityVtbl;
    ret->ref = 1;

    *ppobj = &ret->IInternetProtocol_iface;

    return S_OK;
}
