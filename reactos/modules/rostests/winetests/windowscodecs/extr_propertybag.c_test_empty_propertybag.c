
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWICComponentFactory ;
typedef int IPropertyBag2 ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WICImagingFactory ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IWICComponentFactory ;
 int IPropertyBag2_Release (int *) ;
 scalar_t__ IWICComponentFactory_CreateEncoderPropertyBag (int *,int *,int ,int **) ;
 int IWICComponentFactory_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_propertybag_countproperties (int *,int ) ;
 int test_propertybag_getpropertyinfo (int *,int ) ;

__attribute__((used)) static void test_empty_propertybag(void)
{
    HRESULT hr;
    IWICComponentFactory *factory;
    IPropertyBag2 *property;

    hr = CoCreateInstance(&CLSID_WICImagingFactory, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IWICComponentFactory, (void**)&factory);
    ok(hr == S_OK, "CoCreateInstance failed, hr=%x\n", hr);

    hr = IWICComponentFactory_CreateEncoderPropertyBag(factory, ((void*)0), 0, &property);

    ok(hr == S_OK, "Creating EncoderPropertyBag failed, hr=%x\n", hr);
    if (FAILED(hr)) return;

    test_propertybag_countproperties(property, 0);

    test_propertybag_getpropertyinfo(property, 0);

    IPropertyBag2_Release(property);

    IWICComponentFactory_Release(factory);
}
