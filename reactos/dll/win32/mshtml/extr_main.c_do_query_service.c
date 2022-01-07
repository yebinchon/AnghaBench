
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int REFGUID ;
typedef int IUnknown ;
typedef int IServiceProvider ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IID_IServiceProvider ;
 int IServiceProvider_QueryService (int *,int ,int ,void**) ;
 int IServiceProvider_Release (int *) ;
 int IUnknown_QueryInterface (int *,int *,void**) ;

HRESULT do_query_service(IUnknown *unk, REFGUID guid_service, REFIID riid, void **ppv)
{
    IServiceProvider *sp;
    HRESULT hres;

    hres = IUnknown_QueryInterface(unk, &IID_IServiceProvider, (void**)&sp);
    if(FAILED(hres))
        return hres;

    hres = IServiceProvider_QueryService(sp, guid_service, riid, ppv);
    IServiceProvider_Release(sp);
    return hres;
}
