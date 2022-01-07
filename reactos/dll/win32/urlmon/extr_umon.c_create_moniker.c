
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; int * uri; int * URLName; TYPE_1__ IUriContainer_iface; TYPE_2__ IMoniker_iface; } ;
typedef TYPE_3__ URLMoniker ;
typedef int IUri ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IUri_AddRef (int *) ;
 int IUri_GetDisplayUri (int *,int **) ;
 int S_OK ;
 int URLMON_LockModule () ;
 int URLMonikerVtbl ;
 int UriContainerVtbl ;
 TYPE_3__* heap_alloc (int) ;
 int heap_free (TYPE_3__*) ;

__attribute__((used)) static HRESULT create_moniker(IUri *uri, URLMoniker **ret)
{
    URLMoniker *mon;
    HRESULT hres;

    mon = heap_alloc(sizeof(*mon));
    if(!mon)
        return E_OUTOFMEMORY;

    mon->IMoniker_iface.lpVtbl = &URLMonikerVtbl;
    mon->IUriContainer_iface.lpVtbl = &UriContainerVtbl;
    mon->ref = 1;

    if(uri) {

        hres = IUri_GetDisplayUri(uri, &mon->URLName);
        if(FAILED(hres)) {
            heap_free(mon);
            return hres;
        }

        IUri_AddRef(uri);
        mon->uri = uri;
    }else {
        mon->URLName = ((void*)0);
        mon->uri = ((void*)0);
    }

    URLMON_LockModule();
    *ret = mon;
    return S_OK;
}
