#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int ULONG ;
struct TYPE_2__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int biClrImportant; void* biCompression; scalar_t__ biSizeImage; } ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  LPBITMAPINFO ;
typedef  scalar_t__ HBITMAP ;
typedef  TYPE_1__ BITMAPINFOHEADER ;

/* Variables and functions */
 void* BI_BITFIELDS ; 
 void* BI_RGB ; 
 int /*<<< orphan*/  BMF_16BPP_555 ; 
 int /*<<< orphan*/  BMF_16BPP_565 ; 
 int /*<<< orphan*/  BMF_1BPP ; 
 int /*<<< orphan*/  BMF_32BPP_BGR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ hbmp1bpp_a ; 
 scalar_t__ hbmp1bpp_b ; 
 scalar_t__ hbmpCompat ; 
 int /*<<< orphan*/  hdcDst ; 
 int /*<<< orphan*/  hdcSrc ; 
 int /*<<< orphan*/  iDcFormat ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

void
FUNC10()
{
    HBITMAP hbmp;
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG bmiColors[3];
    } bmi;
    PVOID pvBits;
    ULONG c, expected;

    FUNC3(hdcSrc, hbmp1bpp_a);

    FUNC5(BMF_1BPP, hbmp1bpp_b, 0);
    FUNC5(iDcFormat, hbmpCompat, 0);

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = 2;
    bmi.bmiHeader.biHeight = -2;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 16;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biSizeImage = 0;
    bmi.bmiHeader.biXPelsPerMeter = 1;
    bmi.bmiHeader.biYPelsPerMeter = 1;
    bmi.bmiHeader.biClrUsed = 0;
    bmi.bmiHeader.biClrImportant = 0;
    hbmp = FUNC0(hdcDst, (LPBITMAPINFO)&bmi, DIB_RGB_COLORS, &pvBits, NULL, 0);
    FUNC9(hbmp != 0, "CreateDIBSection failed\n");
    FUNC8(pvBits, 0x55555555, 8 * 8 * 2);

    FUNC3(hdcDst, hbmp);

    c = FUNC2(hdcDst, 0, 0);
    expected = FUNC7(BMF_16BPP_555, 0x5555);
    FUNC9(c == expected, "expected %lx, got %lx\n", expected, c);

    expected = 0x123456;
    FUNC4(hdcDst, 0, 0, expected);
    expected = FUNC6(BMF_16BPP_555, expected);
    c = *(volatile WORD*)pvBits;
    FUNC9(c == expected, "expected %lx, got %lx\n", expected, c);

    FUNC5(BMF_16BPP_555, hbmp, pvBits);
 
    FUNC1(hbmp);

    /* Create a 565 DIB section */
    bmi.bmiHeader.biCompression = BI_BITFIELDS;
    bmi.bmiHeader.biClrUsed = 3;
    bmi.bmiHeader.biClrImportant = 3;
    bmi.bmiColors[0] = 0xF800;
    bmi.bmiColors[1] = 0x7E0;
    bmi.bmiColors[2] = 0x1F;
    hbmp = FUNC0(hdcDst, (LPBITMAPINFO)&bmi, DIB_RGB_COLORS, &pvBits, NULL, 0);
    FUNC9(hbmp != 0, "CreateDIBSection failed\n");
    FUNC3(hdcDst, hbmp);

    FUNC5(BMF_16BPP_565, hbmp, pvBits);

    FUNC1(hbmp);

    /* Create a 32 bpp DIB section */
    bmi.bmiHeader.biBitCount = 32;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biClrUsed = 0;
    bmi.bmiHeader.biClrImportant = 0;
    hbmp = FUNC0(hdcDst, (LPBITMAPINFO)&bmi, DIB_RGB_COLORS, &pvBits, NULL, 0);
    FUNC9(hbmp != 0, "CreateDIBSection failed\n");
    FUNC3(hdcDst, hbmp);

    FUNC5(BMF_32BPP_BGR, hbmp, pvBits);

    FUNC1(hbmp);

}