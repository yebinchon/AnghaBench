#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WICPixelFormatGUID ;
typedef  int UINT ;
struct TYPE_3__ {int fIcon; scalar_t__ hbmColor; scalar_t__ hbmMask; scalar_t__ yHotspot; scalar_t__ xHotspot; } ;
typedef  int /*<<< orphan*/  IWICBitmap ;
typedef  TYPE_1__ ICONINFO ;
typedef  int HRESULT ;
typedef  scalar_t__ HICON ;

/* Variables and functions */
 void* FUNC0 (int,int,int,int,char const*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_INVALID_CURSOR_HANDLE ; 
 int E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGRA ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const char bits[4096];
    HICON icon;
    ICONINFO info;
    HRESULT hr;
    IWICBitmap *bitmap;
    UINT width, height;
    WICPixelFormatGUID format;

    /* 1 bpp mask */
    info.fIcon = 1;
    info.xHotspot = 0;
    info.yHotspot = 0;
    info.hbmColor = 0;
    info.hbmMask = FUNC0(16, 32, 1, 1, bits);
    FUNC10(info.hbmMask != 0, "CreateBitmap failed\n");
    icon = FUNC1(&info);
    FUNC10(icon != 0, "CreateIconIndirect failed\n");
    FUNC2(info.hbmMask);

    hr = FUNC8(factory, 0, NULL);
    FUNC10(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC8(factory, 0, &bitmap);
    FUNC10(hr == FUNC4(ERROR_INVALID_CURSOR_HANDLE), "expected ERROR_INVALID_CURSOR_HANDLE, got %#x\n", hr);

    hr = FUNC8(factory, icon, NULL);
    FUNC10(hr == E_INVALIDARG, "expected E_INVALIDARG, got %#x\n", hr);

    hr = FUNC8(factory, icon, &bitmap);
    FUNC10(hr == S_OK, "CreateBitmapFromHICON error %#x\n", hr);
    FUNC3(icon);
    if (hr != S_OK) return;

    FUNC5(bitmap, &format);
    FUNC10(FUNC9(&format, &GUID_WICPixelFormat32bppBGRA),
       "unexpected pixel format %s\n", FUNC11(&format));

    hr = FUNC6(bitmap, &width, &height);
    FUNC10(hr == S_OK, "IWICBitmap_GetSize error %#x\n", hr);
    FUNC10(width == 16, "expected 16, got %u\n", width);
    FUNC10(height == 16, "expected 16, got %u\n", height);

    FUNC7(bitmap);

    /* 24 bpp color, 1 bpp mask */
    info.fIcon = 1;
    info.xHotspot = 0;
    info.yHotspot = 0;
    info.hbmColor = FUNC0(16, 16, 1, 24, bits);
    FUNC10(info.hbmColor != 0, "CreateBitmap failed\n");
    info.hbmMask = FUNC0(16, 16, 1, 1, bits);
    FUNC10(info.hbmMask != 0, "CreateBitmap failed\n");
    icon = FUNC1(&info);
    FUNC10(icon != 0, "CreateIconIndirect failed\n");
    FUNC2(info.hbmColor);
    FUNC2(info.hbmMask);

    hr = FUNC8(factory, icon, &bitmap);
    FUNC10(hr == S_OK, "CreateBitmapFromHICON error %#x\n", hr);
    FUNC3(icon);

    FUNC5(bitmap, &format);
    FUNC10(FUNC9(&format, &GUID_WICPixelFormat32bppBGRA),
       "unexpected pixel format %s\n", FUNC11(&format));

    hr = FUNC6(bitmap, &width, &height);
    FUNC10(hr == S_OK, "IWICBitmap_GetSize error %#x\n", hr);
    FUNC10(width == 16, "expected 16, got %u\n", width);
    FUNC10(height == 16, "expected 16, got %u\n", height);

    FUNC7(bitmap);
}