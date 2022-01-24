#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; scalar_t__ biClrImportant; scalar_t__ biSizeImage; int /*<<< orphan*/  biCompression; } ;
struct TYPE_5__ {TYPE_3__ bmiHeader; } ;
typedef  TYPE_1__* PVOID ;
typedef  int /*<<< orphan*/ * HPALETTE ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_1__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  CBM_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_PAL_COLORS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ghpal ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

void
FUNC6(void)
{
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        WORD bmiColors[8];
    } bmibuffer;
    BITMAPINFO *pbmi = (PVOID)&bmibuffer;
    HBITMAP hbmp;
    ULONG bits[16] = {0};
    HDC hdc;
    HPALETTE hpalOld;
    USHORT i;

    hdc = FUNC0(0);
    FUNC5(hdc != 0, "failed\n");

    /* Select a palette */
    hpalOld = FUNC4(hdc, ghpal, FALSE);
    FUNC5(hpalOld != NULL, "error=%ld\n", FUNC2());

    /* Initialize a BITMAPINFO */
    pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    pbmi->bmiHeader.biWidth = 2;
    pbmi->bmiHeader.biHeight = -2;
    pbmi->bmiHeader.biPlanes = 1;
    pbmi->bmiHeader.biBitCount = 8;
    pbmi->bmiHeader.biCompression = BI_RGB;
    pbmi->bmiHeader.biSizeImage = 0;
    pbmi->bmiHeader.biXPelsPerMeter = 1;
    pbmi->bmiHeader.biYPelsPerMeter = 1;
    pbmi->bmiHeader.biClrUsed = 8;
    pbmi->bmiHeader.biClrImportant = 0;

    for( i = 0; i < 8; i++ )
    {
        bmibuffer.bmiColors[i] = i;
    }

    /* Create the bitmap */
    hbmp = FUNC1(hdc, &pbmi->bmiHeader, CBM_INIT, bits, pbmi, DIB_PAL_COLORS);
    FUNC5(hbmp != 0, "failed\n");

    FUNC3(hdc, hbmp);


}