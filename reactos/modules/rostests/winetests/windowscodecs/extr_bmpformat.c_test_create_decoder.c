
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWICImagingFactory ;
typedef int IWICBitmapDecoder ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WICImagingFactory ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ E_INVALIDARG ;
 int GUID_ContainerFormatBmp ;
 int GUID_VendorMicrosoft ;
 int IID_IWICImagingFactory ;
 int IWICBitmapDecoder_Release (int *) ;
 scalar_t__ IWICImagingFactory_CreateDecoder (int *,int *,int *,int **) ;
 int IWICImagingFactory_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_create_decoder(void)
{
    IWICBitmapDecoder *decoder;
    IWICImagingFactory *factory;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_WICImagingFactory, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IWICImagingFactory, (void **)&factory);
    ok(hr == S_OK, "CoCreateInstance error %#x\n", hr);

    hr = IWICImagingFactory_CreateDecoder(factory, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICImagingFactory_CreateDecoder(factory, ((void*)0), ((void*)0), &decoder);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICImagingFactory_CreateDecoder(factory, &GUID_ContainerFormatBmp, ((void*)0), &decoder);
    ok(hr == S_OK, "CreateDecoder error %#x\n", hr);
    IWICBitmapDecoder_Release(decoder);

    hr = IWICImagingFactory_CreateDecoder(factory, &GUID_ContainerFormatBmp, &GUID_VendorMicrosoft, &decoder);
    ok(hr == S_OK, "CreateDecoder error %#x\n", hr);
    IWICBitmapDecoder_Release(decoder);

    IWICImagingFactory_Release(factory);
}
