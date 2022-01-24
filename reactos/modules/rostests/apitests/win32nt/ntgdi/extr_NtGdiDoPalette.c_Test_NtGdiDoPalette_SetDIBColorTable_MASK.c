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
typedef  int ULONG ;
struct TYPE_2__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int biClrImportant; scalar_t__ biSizeImage; int /*<<< orphan*/  biCompression; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int BYTE ;
typedef  TYPE_1__ BITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_PAL_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GdiPalSetColorTable ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void
FUNC11(void)
{
    HDC hdc;
    HBITMAP hbmp;
    BYTE *pjBits;

    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG bmiColors[10];
    } bmi;

    hdc = FUNC0(0);
    FUNC9(hdc != NULL, "hdc was NULL.\n");

    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = 10;
    bmi.bmiHeader.biHeight = 10;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 8;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biSizeImage = 0;
    bmi.bmiHeader.biXPelsPerMeter = 1;
    bmi.bmiHeader.biYPelsPerMeter = 1;
    bmi.bmiHeader.biClrUsed = 9;
    bmi.bmiHeader.biClrImportant = 9;
    bmi.bmiColors[0] = 0x000000;
    bmi.bmiColors[1] = 0x202020;
    bmi.bmiColors[2] = 0x404040;
    bmi.bmiColors[3] = 0x606060;
    bmi.bmiColors[4] = 0x808080;
    bmi.bmiColors[5] = 0xA0A0A0;
    bmi.bmiColors[6] = 0xC0C0C0;
    bmi.bmiColors[7] = 0xE0E0E0;
    bmi.bmiColors[8] = 0xffffff;
    hbmp = FUNC1(hdc, (BITMAPINFO*)&bmi, DIB_PAL_COLORS, (PVOID*)&pjBits, NULL, 0);
    FUNC9(hbmp != NULL, "hbmp was NULL.\n");
    FUNC9(pjBits != NULL, "pjBits was NULL.\n");

    FUNC6(hdc, hbmp);

    pjBits[0] = 8;
    pjBits[1] = 1;
    pjBits[2] = 2;
    pjBits[3] = 3;

    bmi.bmiColors[8] = 0x000000;
    bmi.bmiColors[7] = 0x202020;
    bmi.bmiColors[6] = 0x404040;
    bmi.bmiColors[5] = 0x606060;
    bmi.bmiColors[4] = 0x808080;
    bmi.bmiColors[3] = 0xA0A0A0;
    bmi.bmiColors[2] = 0xC0C0C0;
    bmi.bmiColors[1] = 0xE0E0E0;
    bmi.bmiColors[0] = 0xffffff;
    FUNC10(FUNC4(hdc, 0, 9, &bmi.bmiColors, GdiPalSetColorTable, FALSE), 9);

    FUNC8(hdc, 0xE0E0E0);
    FUNC7(hdc, 0x202020);
    FUNC5(hdc, 0, 0, 10, 10);

    FUNC2(hdc);
    FUNC3(hbmp);
}