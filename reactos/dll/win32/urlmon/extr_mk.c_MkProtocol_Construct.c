
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_3__ IUnknown_outer; int * stream; TYPE_3__* outer; TYPE_1__ IInternetProtocolEx_iface; } ;
typedef TYPE_2__ MkProtocol ;
typedef TYPE_3__ IUnknown ;
typedef int HRESULT ;


 int MkProtocolUnkVtbl ;
 int MkProtocolVtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,void**) ;
 int URLMON_LockModule () ;
 TYPE_2__* heap_alloc (int) ;

HRESULT MkProtocol_Construct(IUnknown *outer, void **ppv)
{
    MkProtocol *ret;

    TRACE("(%p %p)\n", outer, ppv);

    URLMON_LockModule();

    ret = heap_alloc(sizeof(MkProtocol));

    ret->IUnknown_outer.lpVtbl = &MkProtocolUnkVtbl;
    ret->IInternetProtocolEx_iface.lpVtbl = &MkProtocolVtbl;
    ret->ref = 1;
    ret->outer = outer ? outer : &ret->IUnknown_outer;
    ret->stream = ((void*)0);




    *ppv = &ret->IUnknown_outer;
    return S_OK;
}
