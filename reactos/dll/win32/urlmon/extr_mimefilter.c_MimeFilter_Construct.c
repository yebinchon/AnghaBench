
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_3__ IInternetProtocol_iface; TYPE_1__ IInternetProtocolSink_iface; } ;
typedef TYPE_2__ MimeFilter ;
typedef TYPE_3__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int InternetProtocolSinkVtbl ;
 int MimeFilterProtocolVtbl ;
 int S_OK ;
 int TRACE (char*,int *,TYPE_3__**) ;
 int URLMON_LockModule () ;
 TYPE_2__* heap_alloc_zero (int) ;

HRESULT MimeFilter_Construct(IUnknown *pUnkOuter, LPVOID *ppobj)
{
    MimeFilter *ret;

    TRACE("(%p %p)\n", pUnkOuter, ppobj);

    URLMON_LockModule();

    ret = heap_alloc_zero(sizeof(MimeFilter));

    ret->IInternetProtocol_iface.lpVtbl = &MimeFilterProtocolVtbl;
    ret->IInternetProtocolSink_iface.lpVtbl = &InternetProtocolSinkVtbl;
    ret->ref = 1;

    *ppobj = &ret->IInternetProtocol_iface;
    return S_OK;
}
