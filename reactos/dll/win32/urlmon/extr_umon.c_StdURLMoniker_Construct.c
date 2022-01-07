
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IMoniker_iface; } ;
typedef TYPE_1__ URLMoniker ;
typedef int IUnknown ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,int *,void**) ;
 int create_moniker (int *,TYPE_1__**) ;

HRESULT StdURLMoniker_Construct(IUnknown *outer, void **ppv)
{
    URLMoniker *mon;
    HRESULT hres;

    TRACE("(%p %p)\n", outer, ppv);

    hres = create_moniker(((void*)0), &mon);
    if(FAILED(hres))
        return hres;

    *ppv = &mon->IMoniker_iface;
    return S_OK;
}
