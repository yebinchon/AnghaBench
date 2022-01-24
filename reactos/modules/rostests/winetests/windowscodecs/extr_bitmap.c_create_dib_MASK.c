#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bmibuf ;
typedef  int /*<<< orphan*/  bm ;
typedef  size_t WORD ;
struct TYPE_15__ {int bmWidth; int bmHeight; int bmPlanes; int bmBitsPixel; int bmWidthBytes; } ;
struct TYPE_12__ {int biSize; int biWidth; int biHeight; int biBitCount; int biPlanes; size_t biClrUsed; size_t biClrImportant; int /*<<< orphan*/  biCompression; } ;
struct TYPE_14__ {TYPE_3__ bmiHeader; TYPE_2__* bmiColors; } ;
struct TYPE_13__ {int palNumEntries; TYPE_1__* palPalEntry; } ;
struct TYPE_11__ {scalar_t__ rgbReserved; int /*<<< orphan*/  rgbBlue; int /*<<< orphan*/  rgbGreen; int /*<<< orphan*/  rgbRed; } ;
struct TYPE_10__ {int /*<<< orphan*/  peBlue; int /*<<< orphan*/  peGreen; int /*<<< orphan*/  peRed; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  TYPE_4__ LOGPALETTE ;
typedef  scalar_t__ HBITMAP ;
typedef  TYPE_5__ BITMAPINFO ;
typedef  TYPE_6__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 

__attribute__((used)) static HBITMAP FUNC6(int width, int height, int bpp, LOGPALETTE *pal, const void *data)
{
    char bmibuf[sizeof(BITMAPINFO) + sizeof(RGBQUAD) * 255];
    BITMAPINFO *bmi = (BITMAPINFO *)bmibuf;
    void *bits;
    HBITMAP hdib;
    BITMAP bm;

    FUNC4(bmibuf, 0, sizeof(bmibuf));
    bmi->bmiHeader.biSize = sizeof(bmi->bmiHeader);
    bmi->bmiHeader.biWidth = width;
    bmi->bmiHeader.biHeight = -height;
    bmi->bmiHeader.biBitCount = bpp;
    bmi->bmiHeader.biPlanes = 1;
    bmi->bmiHeader.biCompression = BI_RGB;
    if (pal)
    {
        WORD i;

        FUNC2(pal->palNumEntries <= 256);
        for (i = 0; i < pal->palNumEntries; i++)
        {
            bmi->bmiColors[i].rgbRed = pal->palPalEntry[i].peRed;
            bmi->bmiColors[i].rgbGreen = pal->palPalEntry[i].peGreen;
            bmi->bmiColors[i].rgbBlue = pal->palPalEntry[i].peBlue;
            bmi->bmiColors[i].rgbReserved = 0;
        }

        bmi->bmiHeader.biClrUsed = pal->palNumEntries;
        bmi->bmiHeader.biClrImportant = pal->palNumEntries;
    }
    hdib = FUNC0(0, bmi, DIB_RGB_COLORS, &bits, NULL, 0);
    FUNC5(hdib != 0, "CreateDIBSection(%dx%d,%d bpp) failed\n", width, height, bpp);

    FUNC1(hdib, sizeof(bm), &bm);
    FUNC5(bm.bmWidth == width, "expected %d, got %d\n", width, bm.bmWidth);
    FUNC5(bm.bmHeight == height, "expected %d, got %d\n", height, bm.bmHeight);
    FUNC5(bm.bmPlanes == 1, "expected 1, got %d\n", bm.bmPlanes);
    FUNC5(bm.bmBitsPixel == bpp, "expected %d, got %d\n", bpp, bm.bmBitsPixel);

    if (data) FUNC3(bits, data, bm.bmWidthBytes * bm.bmHeight);

    return hdib;
}