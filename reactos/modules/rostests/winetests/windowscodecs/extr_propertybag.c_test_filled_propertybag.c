
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {TYPE_1__ member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ PROPBAG2 ;
typedef int LPOLESTR ;
typedef int IWICComponentFactory ;
typedef int IPropertyBag2 ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WICImagingFactory ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IWICComponentFactory ;
 int IPropertyBag2_Release (int *) ;
 scalar_t__ IWICComponentFactory_CreateEncoderPropertyBag (int *,TYPE_2__*,int,int **) ;
 int IWICComponentFactory_Release (int *) ;
 int PROPBAG2_TYPE_DATA ;
 scalar_t__ S_OK ;
 int VT_R4 ;
 int VT_UI1 ;
 int ok (int,char*,scalar_t__) ;
 int test_propertybag_countproperties (int *,int) ;
 int test_propertybag_getpropertyinfo (int *,int) ;
 int test_propertybag_read (int *) ;
 int test_propertybag_write (int *) ;
 int wszTestProperty1 ;
 int wszTestProperty2 ;

__attribute__((used)) static void test_filled_propertybag(void)
{
    HRESULT hr;
    IWICComponentFactory *factory;
    IPropertyBag2 *property;
    PROPBAG2 opts[2]= {
        {PROPBAG2_TYPE_DATA, VT_UI1, 0, 0, (LPOLESTR)wszTestProperty1, {0}},
        {PROPBAG2_TYPE_DATA, VT_R4, 0, 0, (LPOLESTR)wszTestProperty2, {0}}
    };

    hr = CoCreateInstance(&CLSID_WICImagingFactory, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IWICComponentFactory, (void**)&factory);
    ok(hr == S_OK, "CoCreateInstance failed, hr=%x\n", hr);

    hr = IWICComponentFactory_CreateEncoderPropertyBag(factory, opts, 2, &property);

    ok(hr == S_OK, "Creating EncoderPropertyBag failed, hr=%x\n", hr);
    if (FAILED(hr)) return;

    test_propertybag_countproperties(property, 2);

    test_propertybag_getpropertyinfo(property, 2);

    test_propertybag_write(property);

    test_propertybag_read(property);

    IPropertyBag2_Release(property);

    IWICComponentFactory_Release(factory);
}
