
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IWICBitmapSource_iface; } ;
typedef int IWICFormatConverter ;
typedef int IWICBitmapSource ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ BitmapTestSrc ;
typedef scalar_t__ BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WICDefaultFormatConverter ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CreateTestBitmap (int *,TYPE_1__**) ;
 int DeleteTestBitmap (TYPE_1__*) ;
 int GUID_WICPixelFormat32bppBGR ;
 int GUID_WICPixelFormat32bppBGRA ;
 int IID_IWICFormatConverter ;
 scalar_t__ IWICFormatConverter_CanConvert (int *,int *,int *,scalar_t__*) ;
 scalar_t__ IWICFormatConverter_Initialize (int *,int *,int *,int ,int *,double,int ) ;
 int IWICFormatConverter_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ TRUE ;
 int WICBitmapDitherTypeNone ;
 int WICBitmapPaletteTypeCustom ;
 int compare_bitmap_data (int *,int *,int *,char*) ;
 int ok (scalar_t__,char*,scalar_t__) ;
 int testdata_32bppBGR ;
 int testdata_32bppBGRA ;

__attribute__((used)) static void test_default_converter(void)
{
    BitmapTestSrc *src_obj;
    IWICFormatConverter *converter;
    BOOL can_convert = TRUE;
    HRESULT hr;

    CreateTestBitmap(&testdata_32bppBGRA, &src_obj);

    hr = CoCreateInstance(&CLSID_WICDefaultFormatConverter, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IWICFormatConverter, (void**)&converter);
    ok(SUCCEEDED(hr), "CoCreateInstance failed, hr=%x\n", hr);
    if (SUCCEEDED(hr))
    {
        hr = IWICFormatConverter_CanConvert(converter, &GUID_WICPixelFormat32bppBGRA,
            &GUID_WICPixelFormat32bppBGR, &can_convert);
        ok(SUCCEEDED(hr), "CanConvert returned %x\n", hr);
        ok(can_convert, "expected TRUE, got %i\n", can_convert);

        hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
            &GUID_WICPixelFormat32bppBGR, WICBitmapDitherTypeNone, ((void*)0), 0.0,
            WICBitmapPaletteTypeCustom);
        ok(SUCCEEDED(hr), "Initialize returned %x\n", hr);

        if (SUCCEEDED(hr))
            compare_bitmap_data(&testdata_32bppBGRA, &testdata_32bppBGR, (IWICBitmapSource*)converter, "default converter");

        IWICFormatConverter_Release(converter);
    }

    DeleteTestBitmap(src_obj);
}
