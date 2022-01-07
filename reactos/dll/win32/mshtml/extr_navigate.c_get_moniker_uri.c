
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUriContainer ;
typedef int IUri ;
typedef int IMoniker ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IID_IUriContainer ;
 int IMoniker_QueryInterface (int *,int *,void**) ;
 int IUriContainer_GetIUri (int *,int **) ;
 int IUriContainer_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static IUri *get_moniker_uri(IMoniker *mon)
{
    IUriContainer *uri_container;
    IUri *ret = ((void*)0);
    HRESULT hres;

    hres = IMoniker_QueryInterface(mon, &IID_IUriContainer, (void**)&uri_container);
    if(SUCCEEDED(hres)) {
        hres = IUriContainer_GetIUri(uri_container, &ret);
        IUriContainer_Release(uri_container);
        if(FAILED(hres))
            return ((void*)0);
    }else {
        FIXME("No IUriContainer\n");
    }

    return ret;
}
