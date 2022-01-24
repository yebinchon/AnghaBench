#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bitmap ;
typedef  int ULONG ;
struct TYPE_8__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int /*<<< orphan*/  biCompression; scalar_t__ biClrImportant; } ;
struct TYPE_7__ {scalar_t__ bmType; int bmWidth; int bmHeight; int bmWidthBytes; int bmPlanes; scalar_t__ bmBitsPixel; scalar_t__ bmBits; } ;
struct TYPE_6__ {TYPE_4__ bmiHeader; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_1__ BITMAPINFO ;
typedef  TYPE_2__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  BI_RLE8 ; 
 int /*<<< orphan*/  CBM_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_PAL_COLORS ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (scalar_t__,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

void
FUNC7(void)
{
    BITMAPINFO bmi;
    HBITMAP hbmp;
    BITMAP bitmap;
    ULONG bits[128] = {0};
    BYTE rlebits[] = {2, 0, 0, 0, 2, 1, 0, 1};
    HDC hdc;
    int ret;

    hdc = FUNC1(0);

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = 2;
    bmi.bmiHeader.biHeight = 2;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 16;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biSizeImage = 0;
    bmi.bmiHeader.biXPelsPerMeter = 1;
    bmi.bmiHeader.biYPelsPerMeter = 1;
    bmi.bmiHeader.biClrUsed = 0;
    bmi.bmiHeader.biClrImportant = 0;

    hbmp = FUNC0(hdc, &bmi.bmiHeader, CBM_INIT, bits, &bmi, DIB_RGB_COLORS);
    FUNC6(hbmp != 0, "failed\n");

    ret = FUNC4(hbmp, sizeof(bitmap), &bitmap);
    FUNC6(ret != 0, "failed\n");
    FUNC6(bitmap.bmType == 0, "\n");
    FUNC6(bitmap.bmWidth == 2, "\n");
    FUNC6(bitmap.bmHeight == 2, "\n");
    FUNC6(bitmap.bmWidthBytes == 8, "bmWidthBytes = %ld\n", bitmap.bmWidthBytes);
    FUNC6(bitmap.bmPlanes == 1, "\n");
    FUNC6(bitmap.bmBitsPixel == FUNC2(hdc, BITSPIXEL), "\n");
    FUNC6(bitmap.bmBits == 0, "\n");

    FUNC5(0);
    bmi.bmiHeader.biCompression = BI_RLE8;
    bmi.bmiHeader.biBitCount = 8;
    bmi.bmiHeader.biSizeImage = 8;
    bmi.bmiHeader.biClrUsed = 1;
    hbmp = FUNC0(hdc, &bmi.bmiHeader, CBM_INIT, rlebits, &bmi, DIB_PAL_COLORS);
    FUNC6(hbmp != 0, "failed\n");
    FUNC6(FUNC3() == 0, "GetLastError() == %ld\n", FUNC3());

    ret = FUNC4(hbmp, sizeof(bitmap), &bitmap);
    FUNC6(ret != 0, "failed\n");
    FUNC6(bitmap.bmType == 0, "\n");
    FUNC6(bitmap.bmWidth == 2, "\n");
    FUNC6(bitmap.bmHeight == 2, "\n");
    FUNC6(bitmap.bmWidthBytes == 8, "bmWidthBytes = %ld\n", bitmap.bmWidthBytes);
    FUNC6(bitmap.bmPlanes == 1, "\n");
    FUNC6(bitmap.bmBitsPixel == FUNC2(hdc, BITSPIXEL), "\n");
    FUNC6(bitmap.bmBits == 0, "\n");


}