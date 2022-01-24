#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  IWICBitmapSource_iface; } ;
typedef  int /*<<< orphan*/  IWICPalette ;
typedef  int /*<<< orphan*/  IWICFormatConverter ;
typedef  int HRESULT ;
typedef  TYPE_1__ BitmapTestSrc ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_WICPixelFormat24bppBGR ; 
 int /*<<< orphan*/  GUID_WICPixelFormat8bppIndexed ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  WICBitmapDitherTypeNone ; 
 int /*<<< orphan*/  WICBitmapPaletteTypeCustom ; 
 int /*<<< orphan*/  WICBitmapPaletteTypeFixedGray16 ; 
 int /*<<< orphan*/  WICBitmapPaletteTypeFixedHalftone64 ; 
 int /*<<< orphan*/  WICBitmapPaletteTypeMedianCut ; 
 int WINCODEC_ERR_WRONGSTATE ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  testdata_24bppBGR ; 

__attribute__((used)) static void FUNC13(void)
{
    HRESULT hr;
    BitmapTestSrc *src_obj;
    IWICFormatConverter *converter;
    IWICPalette *palette;
    UINT count, i;
    BYTE buf[32 * 2 * 3]; /* enough to hold 32x2 24bppBGR data */

    FUNC0(&testdata_24bppBGR, &src_obj);

    hr = FUNC7(factory, &palette);
    FUNC12(hr == S_OK, "CreatePalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = FUNC8(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 0, "expected 0, got %u\n", count);

    /* NULL palette + Custom type*/
    hr = FUNC6(factory, &converter);
    FUNC12(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat24bppBGR, WICBitmapDitherTypeNone,
                                        NULL, 0.0, WICBitmapPaletteTypeCustom);
    FUNC12(hr == S_OK, "Initialize error %#x\n", hr);
    hr = FUNC2(converter, palette);
    FUNC12(hr == 0xdeadbeef, "unexpected error %#x\n", hr);
    hr = FUNC3(converter, NULL, 32 * 3, sizeof(buf), buf);
    FUNC12(hr == S_OK, "CopyPixels error %#x\n", hr);
    FUNC5(converter);

    /* NULL palette + Custom type*/
    hr = FUNC6(factory, &converter);
    FUNC12(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        NULL, 0.0, WICBitmapPaletteTypeCustom);
    FUNC12(hr == E_INVALIDARG, "unexpected error %#x\n", hr);
    hr = FUNC2(converter, palette);
    FUNC12(hr == WINCODEC_ERR_WRONGSTATE, "unexpected error %#x\n", hr);
    hr = FUNC3(converter, NULL, 32, sizeof(buf), buf);
    FUNC12(hr == WINCODEC_ERR_WRONGSTATE, "unexpected error %#x\n", hr);
    FUNC5(converter);

    /* empty palette + Custom type*/
    hr = FUNC6(factory, &converter);
    FUNC12(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        palette, 0.0, WICBitmapPaletteTypeCustom);
    FUNC12(hr == S_OK, "Initialize error %#x\n", hr);
    hr = FUNC2(converter, palette);
    FUNC12(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = FUNC8(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 0, "expected 0, got %u\n", count);
    FUNC11(buf, 0xaa, sizeof(buf));
    hr = FUNC3(converter, NULL, 32, sizeof(buf), buf);
    FUNC12(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    FUNC12(count == 0, "expected 0\n");
    FUNC5(converter);

    /* NULL palette + Predefined type*/
    hr = FUNC6(factory, &converter);
    FUNC12(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        NULL, 0.0, WICBitmapPaletteTypeFixedGray16);
    FUNC12(hr == S_OK, "Initialize error %#x\n", hr);
    hr = FUNC2(converter, palette);
    FUNC12(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = FUNC8(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 16, "expected 16, got %u\n", count);
    hr = FUNC3(converter, NULL, 32, sizeof(buf), buf);
    FUNC12(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    FUNC12(count != 0, "expected != 0\n");
    FUNC5(converter);

    /* not empty palette + Predefined type*/
    hr = FUNC6(factory, &converter);
    FUNC12(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        palette, 0.0, WICBitmapPaletteTypeFixedHalftone64);
    FUNC12(hr == S_OK, "Initialize error %#x\n", hr);
    hr = FUNC2(converter, palette);
    FUNC12(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = FUNC8(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 16, "expected 16, got %u\n", count);
    hr = FUNC3(converter, NULL, 32, sizeof(buf), buf);
    FUNC12(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    FUNC12(count != 0, "expected != 0\n");
    FUNC5(converter);

    /* not empty palette + MedianCut type*/
    hr = FUNC6(factory, &converter);
    FUNC12(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        palette, 0.0, WICBitmapPaletteTypeMedianCut);
    FUNC12(hr == S_OK, "Initialize error %#x\n", hr);
    hr = FUNC2(converter, palette);
    FUNC12(hr == S_OK, "CopyPalette error %#x\n", hr);
    count = 0xdeadbeef;
    hr = FUNC8(palette, &count);
    FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
    FUNC12(count == 16, "expected 16, got %u\n", count);
    hr = FUNC3(converter, NULL, 32, sizeof(buf), buf);
    FUNC12(hr == S_OK, "CopyPixels error %#x\n", hr);
    count = 0;
    for (i = 0; i < 32 * 2; i++)
        if (buf[i] != 0) count++;
    FUNC12(count != 0, "expected != 0\n");
    FUNC5(converter);

    /* NULL palette + MedianCut type*/
    hr = FUNC6(factory, &converter);
    FUNC12(hr == S_OK, "CreateFormatConverter error %#x\n", hr);
    hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
                                        &GUID_WICPixelFormat8bppIndexed, WICBitmapDitherTypeNone,
                                        NULL, 0.0, WICBitmapPaletteTypeMedianCut);
    FUNC12(hr == S_OK || FUNC10(hr == E_INVALIDARG) /* XP */, "Initialize error %#x\n", hr);
    if (hr == S_OK)
    {
        hr = FUNC2(converter, palette);
        FUNC12(hr == S_OK, "CopyPalette error %#x\n", hr);
        count = 0xdeadbeef;
        hr = FUNC8(palette, &count);
        FUNC12(hr == S_OK, "GetColorCount error %#x\n", hr);
        FUNC12(count == 8, "expected 8, got %u\n", count);
        hr = FUNC3(converter, NULL, 32, sizeof(buf), buf);
        FUNC12(hr == S_OK, "CopyPixels error %#x\n", hr);
        count = 0;
        for (i = 0; i < 32 * 2; i++)
            if (buf[i] != 0) count++;
        FUNC12(count != 0, "expected != 0\n");
    }
    FUNC5(converter);

    FUNC9(palette);
    FUNC1(src_obj);
}