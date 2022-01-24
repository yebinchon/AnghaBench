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
struct TYPE_4__ {int /*<<< orphan*/  IWICBitmapSource_iface; } ;
typedef  int /*<<< orphan*/  IWICFormatConverter ;
typedef  int /*<<< orphan*/  IWICBitmapSource ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ BitmapTestSrc ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WICDefaultFormatConverter ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGR ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGRA ; 
 int /*<<< orphan*/  IID_IWICFormatConverter ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WICBitmapDitherTypeNone ; 
 int /*<<< orphan*/  WICBitmapPaletteTypeCustom ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  testdata_32bppBGR ; 
 int /*<<< orphan*/  testdata_32bppBGRA ; 

__attribute__((used)) static void FUNC9(void)
{
    BitmapTestSrc *src_obj;
    IWICFormatConverter *converter;
    BOOL can_convert = TRUE;
    HRESULT hr;

    FUNC1(&testdata_32bppBGRA, &src_obj);

    hr = FUNC0(&CLSID_WICDefaultFormatConverter, NULL, CLSCTX_INPROC_SERVER,
        &IID_IWICFormatConverter, (void**)&converter);
    FUNC8(FUNC6(hr), "CoCreateInstance failed, hr=%x\n", hr);
    if (FUNC6(hr))
    {
        hr = FUNC3(converter, &GUID_WICPixelFormat32bppBGRA,
            &GUID_WICPixelFormat32bppBGR, &can_convert);
        FUNC8(FUNC6(hr), "CanConvert returned %x\n", hr);
        FUNC8(can_convert, "expected TRUE, got %i\n", can_convert);

        hr = FUNC4(converter, &src_obj->IWICBitmapSource_iface,
            &GUID_WICPixelFormat32bppBGR, WICBitmapDitherTypeNone, NULL, 0.0,
            WICBitmapPaletteTypeCustom);
        FUNC8(FUNC6(hr), "Initialize returned %x\n", hr);

        if (FUNC6(hr))
            FUNC7(&testdata_32bppBGRA, &testdata_32bppBGR, (IWICBitmapSource*)converter, "default converter");

        FUNC5(converter);
    }

    FUNC2(src_obj);
}