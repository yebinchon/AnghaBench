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
typedef  int /*<<< orphan*/  color ;
typedef  int WICColor ;
typedef  int WICBitmapPaletteType ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IWICPalette ;
typedef  int /*<<< orphan*/  IWICBitmapSource ;
typedef  int /*<<< orphan*/  IWICBitmap ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GUID_WICPixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int WICBitmapPaletteTypeCustom ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/ * FUNC10 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    HRESULT hr;
    BYTE *data;
    IWICBitmap *bitmap;
    IWICPalette *palette;
    WICBitmapPaletteType type;
    UINT width, height, stride, count, ret;
    WICColor color[257];

    data = FUNC10(&width, &height, &stride);

    hr = FUNC3(factory, width, height, &GUID_WICPixelFormat24bppRGB,
                                                   stride, stride * height, data, &bitmap);
    FUNC12(hr == S_OK, "CreateBitmapFromMemory error %#x\n", hr);

    hr = FUNC4(factory, &palette);
    FUNC12(hr == S_OK, "CreatePalette error %#x\n", hr);

    hr = FUNC8(palette, (IWICBitmapSource *)bitmap, 0, FALSE);
    FUNC12(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC8(palette, (IWICBitmapSource *)bitmap, 1, FALSE);
    FUNC12(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC8(palette, (IWICBitmapSource *)bitmap, 257, FALSE);
    FUNC12(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC8(palette, NULL, 16, FALSE);
    FUNC12(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC8(palette, (IWICBitmapSource *)bitmap, 2, FALSE);
    FUNC12(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    count = 0;
    hr = FUNC5(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 2, "expected 2, got %u\n", count);

    hr = FUNC8(palette, (IWICBitmapSource *)bitmap, 2, TRUE);
    FUNC12(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    count = 0;
    hr = FUNC5(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 2, "expected 2, got %u\n", count);

    /* without trasparent color */
    hr = FUNC8(palette, (IWICBitmapSource *)bitmap, 16, FALSE);
    FUNC12(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    type = -1;
    hr = FUNC7(palette, &type);
    FUNC12(hr == S_OK, "GetType error %#x\n", hr);
    FUNC12(type == WICBitmapPaletteTypeCustom, "expected WICBitmapPaletteTypeCustom, got %#x\n", type);
    count = 0;
    hr = FUNC5(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 16, "expected 16, got %u\n", count);
    FUNC11(color, 0, sizeof(color));
    hr = FUNC6(palette, count, color, &ret);
    FUNC12(hr == S_OK, "GetColors error %#x\n", hr);
    FUNC12(ret == count, "expected %u, got %u\n", count, ret);
    FUNC12(color[count - 1] != 0, "expected !0, got %08x\n", color[count - 1]);

    /* with trasparent color */
    hr = FUNC8(palette, (IWICBitmapSource *)bitmap, 16, TRUE);
    FUNC12(hr == S_OK, "InitializeFromBitmap error %#x\n", hr);
    type = -1;
    hr = FUNC7(palette, &type);
    FUNC12(hr == S_OK, "GetType error %#x\n", hr);
    FUNC12(type == WICBitmapPaletteTypeCustom, "expected WICBitmapPaletteTypeCustom, got %#x\n", type);
    count = 0;
    hr = FUNC5(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 16, "expected 16, got %u\n", count);
    FUNC11(color, 0xff, sizeof(color));
    hr = FUNC6(palette, count, color, &ret);
    FUNC12(hr == S_OK, "GetColors error %#x\n", hr);
    FUNC12(ret == count, "expected %u, got %u\n", count, ret);
    FUNC12(color[count - 1] == 0, "expected 0, got %08x\n", color[count - 1]);

    FUNC9(palette);
    FUNC2(bitmap);

    FUNC1(FUNC0(), 0, data);
}