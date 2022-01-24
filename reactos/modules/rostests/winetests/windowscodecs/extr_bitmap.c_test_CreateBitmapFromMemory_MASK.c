#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  orig_data3x3 ;
typedef  int /*<<< orphan*/  data3x3 ;
typedef  int /*<<< orphan*/  data ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IWICBitmap ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_WICPixelFormat24bppBGR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WINCODEC_ERR_INSUFFICIENTBUFFER ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC7(void)
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

    FUNC4(data3x3, orig_data3x3, sizeof(data3x3));

    hr = FUNC3(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   0, 0, NULL, &bitmap);
    FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC3(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   0, sizeof(data3x3), data3x3, &bitmap);
    FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC3(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   6, sizeof(data3x3), data3x3, &bitmap);
    FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC3(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   12, sizeof(data3x3), data3x3, &bitmap);
    FUNC6(hr == WINCODEC_ERR_INSUFFICIENTBUFFER, "expected WINCODEC_ERR_INSUFFICIENTBUFFER, got %#x\n", hr);

    hr = FUNC3(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   9, sizeof(data3x3) - 1, data3x3, &bitmap);
    FUNC6(hr == WINCODEC_ERR_INSUFFICIENTBUFFER, "expected WINCODEC_ERR_INSUFFICIENTBUFFER, got %#x\n", hr);

    hr = FUNC3(factory, 3, 3, &GUID_WICPixelFormat24bppBGR,
                                                   9, sizeof(data3x3), data3x3, &bitmap);
    FUNC6(hr == S_OK, "IWICImagingFactory_CreateBitmapFromMemory error %#x\n", hr);

    hr = FUNC1(bitmap, &width, &height);
    FUNC6(hr == S_OK, "IWICBitmap_GetSize error %#x\n", hr);
    FUNC6(width == 3, "expected 3, got %u\n", width);
    FUNC6(height == 3, "expected 3, got %u\n", height);

    data3x3[2] = 192;

    FUNC5(data, 0, sizeof(data));
    hr = FUNC0(bitmap, NULL, 9, sizeof(data), data);
    FUNC6(hr == S_OK, "IWICBitmap_CopyPixels error %#x\n", hr);
    for (i = 0; i < sizeof(data); i++)
        FUNC6(data[i] == orig_data3x3[i], "%u: expected %u, got %u\n", i, data[i], data3x3[i]);

    FUNC2(bitmap);

    hr = FUNC3(factory, 3, 2, &GUID_WICPixelFormat24bppBGR,
                                                   13, sizeof(orig_data3x3), orig_data3x3, &bitmap);
    FUNC6(hr == S_OK, "IWICImagingFactory_CreateBitmapFromMemory error %#x\n", hr);

    hr = FUNC1(bitmap, &width, &height);
    FUNC6(hr == S_OK, "IWICBitmap_GetSize error %#x\n", hr);
    FUNC6(width == 3, "expected 3, got %u\n", width);
    FUNC6(height == 2, "expected 2, got %u\n", height);

    FUNC5(data, 0, sizeof(data));
    hr = FUNC0(bitmap, NULL, 13, sizeof(data), data);
    FUNC6(hr == S_OK, "IWICBitmap_CopyPixels error %#x\n", hr);
    for (i = 0; i < sizeof(data); i++)
        FUNC6(data[i] == data3x2[i], "%u: expected %u, got %u\n", i, data3x2[i], data[i]);

    FUNC2(bitmap);
}