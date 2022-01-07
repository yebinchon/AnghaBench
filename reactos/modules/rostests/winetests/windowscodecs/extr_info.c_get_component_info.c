
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWICImagingFactory ;
typedef int IWICComponentInfo ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WICImagingFactory ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IWICImagingFactory ;
 scalar_t__ IWICImagingFactory_CreateComponentInfo (int *,int const*,int **) ;
 int IWICImagingFactory_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static HRESULT get_component_info(const GUID *clsid, IWICComponentInfo **result)
{
    IWICImagingFactory *factory;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_WICImagingFactory, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IWICImagingFactory, (void**)&factory);
    ok(hr == S_OK, "CoCreateInstance failed, hr=%x\n", hr);
    if (FAILED(hr)) return hr;

    hr = IWICImagingFactory_CreateComponentInfo(factory, clsid, result);

    IWICImagingFactory_Release(factory);

    return hr;
}
