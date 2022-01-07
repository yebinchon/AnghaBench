
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_2__ IInternetZoneManagerEx2_iface; } ;
typedef TYPE_1__ ZoneMgrImpl ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int *,TYPE_2__**) ;
 int URLMON_LockModule () ;
 int ZoneMgrImplVtbl ;
 TYPE_1__* heap_alloc_zero (int) ;

HRESULT ZoneMgrImpl_Construct(IUnknown *pUnkOuter, LPVOID *ppobj)
{
    ZoneMgrImpl* ret = heap_alloc_zero(sizeof(ZoneMgrImpl));

    TRACE("(%p %p)\n", pUnkOuter, ppobj);
    ret->IInternetZoneManagerEx2_iface.lpVtbl = &ZoneMgrImplVtbl;
    ret->ref = 1;
    *ppobj = &ret->IInternetZoneManagerEx2_iface;

    URLMON_LockModule();

    return S_OK;
}
