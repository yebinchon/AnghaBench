
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int orig_data3x3 ;
typedef int data3x3 ;
typedef int data ;
typedef int UINT ;
typedef int IWICBitmap ;
typedef int HRESULT ;
typedef int BYTE ;


 int E_INVALIDARG ;
 int GUID_WICPixelFormat24bppBGR ;
 int IWICBitmap_CopyPixels (int *,int *,int,int,int*) ;
 int IWICBitmap_GetSize (int *,int*,int*) ;
 int IWICBitmap_Release (int *) ;
 int IWICImagingFactory_CreateBitmapFromMemory (int ,int,int,int *,int,int,int*,int **) ;
 int S_OK ;
 int WINCODEC_ERR_INSUFFICIENTBUFFER ;
 int factory ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_CreateBitmapFromMemory(void)
{
    BYTE orig_data3x3[27] = {
        128,128,255, 128,128,128, 128,255,128,
        128,128,128, 128,128,128, 255,255,255,
        255,128,128, 255,255,255, 255,255,255 };
    BYTE data3x3[27];
    BYTE data3x2[27] = {
        128,128,255, 128,128,128, 128,255,128,
        0,0,0, 0,128,128, 255,255,255,
        255,128,128, 255,0,0, 0,0,0 };
    BYTE data[27];
    HRESULT hr;
    IWICBitmap *bitmap;
    UINT width, height, i;

    memcpy(data3x3, orig_data3x3, sizeof(data3x3));

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   0, 0, ((void*)0), &bitmap);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   0, sizeof(data3x3), data3x3, &bitmap);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   6, sizeof(data3x3), data3x3, &bitmap);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   12, sizeof(data3x3), data3x3, &bitmap);
    ok(hr == WINCODEC_ERR_INSUFFICIENTBUFFER, "expected WINCODEC_ERR_INSUFFICIENTBUFFER, got %#x\n", hr);

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   9, sizeof(data3x3) - 1, data3x3, &bitmap);
    ok(hr == WINCODEC_ERR_INSUFFICIENTBUFFER, "expected WINCODEC_ERR_INSUFFICIENTBUFFER, got %#x\n", hr);

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   9, sizeof(data3x3), data3x3, &bitmap);
    ok(hr == S_OK, "IWICImagingFactory_CreateBitmapFromMemory error %#x\n", hr);

    hr = IWICBitmap_GetSize(bitmap, &width, &height);
    ok(hr == S_OK, "IWICBitmap_GetSize error %#x\n", hr);
    ok(width == 3, "expected 3, got %u\n", width);
    ok(height == 3, "expected 3, got %u\n", height);

    data3x3[2] = 192;

    memset(data, 0, sizeof(data));
    hr = IWICBitmap_CopyPixels(bitmap, ((void*)0), 9, sizeof(data), data);
    ok(hr == S_OK, "IWICBitmap_CopyPixels error %#x\n", hr);
    for (i = 0; i < sizeof(data); i++)
        ok(data[i] == orig_data3x3[i], "%u: expected %u, got %u\n", i, data[i], data3x3[i]);

    IWICBitmap_Release(bitmap);

    hr = IWICImagingFactory_CreateBitmapFromMemory(factory, 3, 2, &GUID_WICPixelFormat24bppBGR,
                                                   13, sizeof(orig_data3x3), orig_data3x3, &bitmap);
    ok(hr == S_OK, "IWICImagingFactory_CreateBitmapFromMemory error %#x\n", hr);

    hr = IWICBitmap_GetSize(bitmap, &width, &height);
    ok(hr == S_OK, "IWICBitmap_GetSize error %#x\n", hr);
    ok(width == 3, "expected 3, got %u\n", width);
    ok(height == 2, "expected 2, got %u\n", height);

    memset(data, 0, sizeof(data));
    hr = IWICBitmap_CopyPixels(bitmap, ((void*)0), 13, sizeof(data), data);
    ok(hr == S_OK, "IWICBitmap_CopyPixels error %#x\n", hr);
    for (i = 0; i < sizeof(data); i++)
        ok(data[i] == data3x2[i], "%u: expected %u, got %u\n", i, data3x2[i], data[i]);

    IWICBitmap_Release(bitmap);
}
