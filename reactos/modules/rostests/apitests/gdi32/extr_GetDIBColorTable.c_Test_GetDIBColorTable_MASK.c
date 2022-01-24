#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
typedef  int UINT ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; scalar_t__ biClrImportant; scalar_t__ biSizeImage; int /*<<< orphan*/  biCompression; } ;
struct TYPE_7__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  TYPE_2__* PVOID ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_PAL_COLORS ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

void FUNC13()
{
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG bmiColors[8];
    } bmibuffer;
    BITMAPINFO *pbmi = (PVOID)&bmibuffer;
    HBITMAP hbmp, hbmpOld;
    HDC hdc;
    PBYTE pjBits;
    UINT cColors;
    ULONG aulColors[257];

    hdc = FUNC1(0);
    FUNC10(hdc != 0, "failed\n");

    FUNC9(0);
    cColors = FUNC4(hdc, 0, 257, (RGBQUAD*)aulColors);
    FUNC12(cColors, 2);
    FUNC11(0);
    FUNC12(aulColors[0], 0x000000);
    FUNC12(aulColors[1], 0xffffff);

    hbmp = FUNC0(1, 1, 1, 1, NULL);
    FUNC10(hbmp != 0, "\n");
    hbmpOld = FUNC7(hdc, hbmp);
    FUNC10(hbmpOld != 0, "Failed to select bitmap\n");
    cColors = FUNC4(hdc, 0, 257, (RGBQUAD*)aulColors);
    FUNC12(cColors, 2);
    FUNC11(0);
    FUNC12(aulColors[0], 0x000000);
    FUNC12(aulColors[1], 0xffffff);
    FUNC7(hdc, hbmpOld);
    FUNC3(hbmp);

    /* Initialize a BITMAPINFO */
    pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    pbmi->bmiHeader.biWidth = 2;
    pbmi->bmiHeader.biHeight = 2;
    pbmi->bmiHeader.biPlanes = 1;
    pbmi->bmiHeader.biBitCount = 8;
    pbmi->bmiHeader.biCompression = BI_RGB;
    pbmi->bmiHeader.biSizeImage = 0;
    pbmi->bmiHeader.biXPelsPerMeter = 1;
    pbmi->bmiHeader.biYPelsPerMeter = 1;
    pbmi->bmiHeader.biClrUsed = 3;
    pbmi->bmiHeader.biClrImportant = 0;
    bmibuffer.bmiColors[0] = 0xff0000;
    bmibuffer.bmiColors[1] = 0x00ff00;
    bmibuffer.bmiColors[2] = 0x0000ff;

    hbmp = FUNC2(hdc, pbmi, DIB_RGB_COLORS, (PVOID*)&pjBits, 0, 0 );
    FUNC10( hbmp != NULL, "error=%ld\n", FUNC5() );
    FUNC7(hdc, hbmp);

    cColors = FUNC4(hdc, 0, 257, (RGBQUAD*)aulColors);
    FUNC12(cColors, 256);
    FUNC12(aulColors[0], 0xff0000);
    FUNC12(aulColors[1], 0x00ff00);
    FUNC12(aulColors[2], 0x0000ff);
    FUNC12(aulColors[3], 0x000000);


    cColors = FUNC8(hdc, 0, 4, (RGBQUAD*)aulColors);
    FUNC12(cColors, 4);

    aulColors[3] = 0x000F0F;
    cColors = FUNC8(hdc, 0, 4, (RGBQUAD*)aulColors);
    FUNC12(cColors, 4);

    cColors = FUNC4(hdc, 0, 257, (RGBQUAD*)aulColors);
    FUNC12(cColors, 256);
    FUNC12(aulColors[0], 0xff0000);
    FUNC12(aulColors[1], 0x00ff00);
    FUNC12(aulColors[2], 0x0000ff);
    FUNC12(aulColors[3], 0x000F0F);


    FUNC7(hdc, FUNC6(21));
    FUNC3(hbmp);

    bmibuffer.bmiColors[0] = 1;
    bmibuffer.bmiColors[1] = 2;
    bmibuffer.bmiColors[2] = 3;

    hbmp = FUNC2(hdc, pbmi, DIB_PAL_COLORS, (PVOID*)&pjBits, 0, 0 );
    FUNC10( hbmp != NULL, "error=%ld\n", FUNC5() );
    FUNC7(hdc, hbmp);


}