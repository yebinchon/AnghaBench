
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
typedef int UINT ;
struct TYPE_4__ {int IWICBitmapSource_iface; } ;
typedef int IWICPalette ;
typedef int IWICFormatConverter ;
typedef int HRESULT ;
typedef TYPE_1__ BitmapTestSrc ;
typedef scalar_t__ BYTE ;


 int CreateTestBitmap (int *,TYPE_1__**) ;
 int DeleteTestBitmap (TYPE_1__*) ;
 int E_INVALIDARG ;
 int GUID_WICPixelFormat24bppBGR ;
 int GUID_WICPixelFormat8bppIndexed ;
 int IWICFormatConverter_CopyPalette (int *,int *) ;
 int IWICFormatConverter_CopyPixels (int *,int *,int,int,scalar_t__*) ;
 int IWICFormatConverter_Initialize (int *,int *,int *,int ,int *,double,int ) ;
 int IWICFormatConverter_Release (int *) ;
 int IWICImagingFactory_CreateFormatConverter (int ,int **) ;
 int IWICImagingFactory_CreatePalette (int ,int **) ;
 int IWICPalette_GetColorCount (int *,int*) ;
 int IWICPalette_Release (int *) ;
 int S_OK ;
 int WICBitmapDitherTypeNone ;
 int WICBitmapPaletteTypeCustom ;
 int WICBitmapPaletteTypeFixedGray16 ;
 int WICBitmapPaletteTypeFixedHalftone64 ;
 int WICBitmapPaletteTypeMedianCut ;
 int WINCODEC_ERR_WRONGSTATE ;
 scalar_t__ broken (int) ;
 int factory ;
 int memset (scalar_t__*,int,int) ;
 int ok (int,char*,...) ;
 int testdata_24bppBGR ;

__attribute__((used)) static void test_converter_8bppIndexed(void)
{
    HRESULT hr;
    BitmapTestSrc *src_obj;
    IWICFormatConverter *converter;
    IWICPalette *palette;
    UINT count, i;
    BYTE buf[32 * 2 * 3];

    CreateTestBitmap(&testdata_24bppBGR, &src_obj);

    hr = IWICImagingFactory_CreatePalette(factory, &palette);
    ok(hr == S_OK, "CreatePalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 0, "expected 0, got %u\n", count);


    hr = IWICImagingFactory_CreateFormatConverter(factory, &converter);
    ok(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat24bppBGR, WICBitmapDitherTypeNone,
                                        ((void*)0), 0.0, WICBitmapPaletteTypeCustom);
    ok(hr == S_OK, "Initialize error %#x\n", hr);
    hr = IWICFormatConverter_CopyPalette(converter, palette);
    ok(hr == 0xdeadbeef, "unexpected error %#x\n", hr);
    hr = IWICFormatConverter_CopyPixels(converter, ((void*)0), 32 * 3, sizeof(buf), buf);
    ok(hr == S_OK, "CopyPixels error %#x\n", hr);
    IWICFormatConverter_Release(converter);


    hr = IWICImagingFactory_CreateFormatConverter(factory, &converter);
    ok(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        ((void*)0), 0.0, WICBitmapPaletteTypeCustom);
    ok(hr == E_INVALIDARG, "unexpected error %#x\n", hr);
    hr = IWICFormatConverter_CopyPalette(converter, palette);
    ok(hr == WINCODEC_ERR_WRONGSTATE, "unexpected error %#x\n", hr);
    hr = IWICFormatConverter_CopyPixels(converter, ((void*)0), 32, sizeof(buf), buf);
    ok(hr == WINCODEC_ERR_WRONGSTATE, "unexpected error %#x\n", hr);
    IWICFormatConverter_Release(converter);


    hr = IWICImagingFactory_CreateFormatConverter(factory, &converter);
    ok(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        palette, 0.0, WICBitmapPaletteTypeCustom);
    ok(hr == S_OK, "Initialize error %#x\n", hr);
    hr = IWICFormatConverter_CopyPalette(converter, palette);
    ok(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 0, "expected 0, got %u\n", count);
    memset(buf, 0xaa, sizeof(buf));
    hr = IWICFormatConverter_CopyPixels(converter, ((void*)0), 32, sizeof(buf), buf);
    ok(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    ok(count == 0, "expected 0\n");
    IWICFormatConverter_Release(converter);


    hr = IWICImagingFactory_CreateFormatConverter(factory, &converter);
    ok(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        ((void*)0), 0.0, WICBitmapPaletteTypeFixedGray16);
    ok(hr == S_OK, "Initialize error %#x\n", hr);
    hr = IWICFormatConverter_CopyPalette(converter, palette);
    ok(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 16, "expected 16, got %u\n", count);
    hr = IWICFormatConverter_CopyPixels(converter, ((void*)0), 32, sizeof(buf), buf);
    ok(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    ok(count != 0, "expected != 0\n");
    IWICFormatConverter_Release(converter);


    hr = IWICImagingFactory_CreateFormatConverter(factory, &converter);
    ok(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        palette, 0.0, WICBitmapPaletteTypeFixedHalftone64);
    ok(hr == S_OK, "Initialize error %#x\n", hr);
    hr = IWICFormatConverter_CopyPalette(converter, palette);
    ok(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 16, "expected 16, got %u\n", count);
    hr = IWICFormatConverter_CopyPixels(converter, ((void*)0), 32, sizeof(buf), buf);
    ok(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    ok(count != 0, "expected != 0\n");
    IWICFormatConverter_Release(converter);


    hr = IWICImagingFactory_CreateFormatConverter(factory, &converter);
    ok(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        palette, 0.0, WICBitmapPaletteTypeMedianCut);
    ok(hr == S_OK, "Initialize error %#x\n", hr);
    hr = IWICFormatConverter_CopyPalette(converter, palette);
    ok(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 16, "expected 16, got %u\n", count);
    hr = IWICFormatConverter_CopyPixels(converter, ((void*)0), 32, sizeof(buf), buf);
    ok(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    ok(count != 0, "expected != 0\n");
    IWICFormatConverter_Release(converter);


    hr = IWICImagingFactory_CreateFormatConverter(factory, &converter);
    ok(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = IWICFormatConverter_Initialize(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        ((void*)0), 0.0, WICBitmapPaletteTypeMedianCut);
    ok(hr == S_OK || broken(hr == E_INVALIDARG) , "Initialize error %#x\n", hr);
    if (hr == S_OK)
    {
        hr = IWICFormatConverter_CopyPalette(converter, palette);
        ok(hr == S_OK, "CopyPalette error %#x\n", hr);
        count = 0xdeadbeef;
        hr = IWICPalette_GetColorCount(palette, &count);
        ok(hr == S_OK, "GetColorCount error %#x\n", hr);
        ok(count == 8, "expected 8, got %u\n", count);
        hr = IWICFormatConverter_CopyPixels(converter, ((void*)0), 32, sizeof(buf), buf);
        ok(hr == S_OK, "CopyPixels error %#x\n", hr);
        count = 0;
        for (i = 0; i < 32 * 2; i++)
            if (buf[i] != 0) count++;
        ok(count != 0, "expected != 0\n");
    }
    IWICFormatConverter_Release(converter);

    IWICPalette_Release(palette);
    DeleteTestBitmap(src_obj);
}
