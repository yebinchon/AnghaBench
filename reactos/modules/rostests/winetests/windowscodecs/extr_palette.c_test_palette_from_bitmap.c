
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int color ;
typedef int WICColor ;
typedef int WICBitmapPaletteType ;
typedef int UINT ;
typedef int IWICPalette ;
typedef int IWICBitmapSource ;
typedef int IWICBitmap ;
typedef int HRESULT ;
typedef int BYTE ;


 int E_INVALIDARG ;
 int FALSE ;
 int GUID_WICPixelFormat24bppRGB ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IWICBitmap_Release (int *) ;
 int IWICImagingFactory_CreateBitmapFromMemory (int ,int,int,int *,int,int,int *,int **) ;
 int IWICImagingFactory_CreatePalette (int ,int **) ;
 int IWICPalette_GetColorCount (int *,int*) ;
 int IWICPalette_GetColors (int *,int,int*,int*) ;
 int IWICPalette_GetType (int *,int*) ;
 int IWICPalette_InitializeFromBitmap (int *,int *,int,int ) ;
 int IWICPalette_Release (int *) ;
 int S_OK ;
 int TRUE ;
 int WICBitmapPaletteTypeCustom ;
 int factory ;
 int * init_bitmap (int*,int*,int*) ;
 int memset (int*,int,int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_palette_from_bitmap(void)
{
    HRESULT hr;
    BYTE *data;
    IWICBitmap *bitmap;
    IWICPalette *palette;
    WICBitmapPaletteType type;
    UINT width, height, stride, count, ret;
    WICColor color[257];

    data = init_bitmap(&width, &height, &stride);

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, width, height, &GUID_WICPixelFormat24bppRGB,
                                                   stride, stride * height, data, &bitmap);
    ok(hr == S_OK, "CreateBitmapFromMemory error %#x\n", hr);

    hr = IWICImagingFactory_CreatePalette(factory, &palette);
    ok(hr == S_OK, "CreatePalette error %#x\n", hr);

    hr = IWICPalette_InitializeFromBitmap(palette, (IWICBitmapSource *)bitmap, 0, FALSE);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICPalette_InitializeFromBitmap(palette, (IWICBitmapSource *)bitmap, 1, FALSE);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICPalette_InitializeFromBitmap(palette, (IWICBitmapSource *)bitmap, 257, FALSE);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICPalette_InitializeFromBitmap(palette, ((void*)0), 16, FALSE);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICPalette_InitializeFromBitmap(palette, (IWICBitmapSource *)bitmap, 2, FALSE);
    ok(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    count = 0;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 2, "expected 2, got %u\n", count);

    hr = IWICPalette_InitializeFromBitmap(palette, (IWICBitmapSource *)bitmap, 2, TRUE);
    ok(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    count = 0;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 2, "expected 2, got %u\n", count);


    hr = IWICPalette_InitializeFromBitmap(palette, (IWICBitmapSource *)bitmap, 16, FALSE);
    ok(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    type = -1;
    hr = IWICPalette_GetType(palette, &type);
    ok(hr == S_OK, "GetType error %#x\n", hr);
    ok(type == WICBitmapPaletteTypeCustom, "expected WICBitmapPaletteTypeCustom, got %#x\n", type);
    count = 0;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 16, "expected 16, got %u\n", count);
    memset(color, 0, sizeof(color));
    hr = IWICPalette_GetColors(palette, count, color, &ret);
    ok(hr == S_OK, "GetColors error %#x\n", hr);
    ok(ret == count, "expected %u, got %u\n", count, ret);
    ok(color[count - 1] != 0, "expected !0, got %08x\n", color[count - 1]);


    hr = IWICPalette_InitializeFromBitmap(palette, (IWICBitmapSource *)bitmap, 16, TRUE);
    ok(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    type = -1;
    hr = IWICPalette_GetType(palette, &type);
    ok(hr == S_OK, "GetType error %#x\n", hr);
    ok(type == WICBitmapPaletteTypeCustom, "expected WICBitmapPaletteTypeCustom, got %#x\n", type);
    count = 0;
    hr = IWICPalette_GetColorCount(palette, &count);
    ok(hr == S_OK, "GetColorCount error %#x\n", hr);
    ok(count == 16, "expected 16, got %u\n", count);
    memset(color, 0xff, sizeof(color));
    hr = IWICPalette_GetColors(palette, count, color, &ret);
    ok(hr == S_OK, "GetColors error %#x\n", hr);
    ok(ret == count, "expected %u, got %u\n", count, ret);
    ok(color[count - 1] == 0, "expected 0, got %08x\n", color[count - 1]);

    IWICPalette_Release(palette);
    IWICBitmap_Release(bitmap);

    HeapFree(GetProcessHeap(), 0, data);
}
