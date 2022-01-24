#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
typedef  int ULONG ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; scalar_t__ biClrImportant; scalar_t__ biClrUsed; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int /*<<< orphan*/  biCompression; } ;
struct TYPE_8__ {TYPE_2__* bmiColors; TYPE_1__ bmiHeader; } ;
struct TYPE_7__ {int rgbBlue; int rgbRed; scalar_t__ rgbGreen; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_3__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

void FUNC5()
{
    char buffer[sizeof(BITMAPINFOHEADER)+2*sizeof(RGBQUAD)];
    ULONG* dibBuffer;
    BITMAPINFO* pBMI = (BITMAPINFO*)buffer;
    char bits1bpp[] = {0x80, 0, 0, 0};
    HBITMAP hbmp;
    int ret;

    FUNC3(buffer, sizeof(buffer));

    pBMI->bmiHeader.biSize=sizeof(BITMAPINFOHEADER);
    pBMI->bmiHeader.biWidth=2;
    pBMI->bmiHeader.biHeight=1;
    pBMI->bmiHeader.biPlanes=1;
    pBMI->bmiHeader.biBitCount=32;
    pBMI->bmiHeader.biCompression=BI_RGB;
    pBMI->bmiHeader.biSizeImage=0;
    pBMI->bmiHeader.biXPelsPerMeter=0;
    pBMI->bmiHeader.biYPelsPerMeter=0;
    pBMI->bmiHeader.biClrUsed=0;
    pBMI->bmiHeader.biClrImportant=0;

    hbmp = FUNC0(NULL, pBMI, DIB_RGB_COLORS, (PVOID*)&dibBuffer, NULL, 0);
    FUNC4(hbmp!=NULL, "Failed to create a DIB section\n");

    pBMI->bmiHeader.biBitCount = 1;
    pBMI->bmiColors[0].rgbBlue = 0xFF;
    pBMI->bmiColors[0].rgbGreen = 0;
    pBMI->bmiColors[0].rgbRed = 0xFF;

    ret = FUNC2(NULL, hbmp, 0, 1, bits1bpp, pBMI, DIB_RGB_COLORS);
    FUNC4(ret == 1, "Copied %i scanlines\n", ret);

    FUNC4(dibBuffer[0] == 0, "Wrong color 0x%08x after SetDIBits\n", (unsigned int)dibBuffer[0]);
    FUNC4(dibBuffer[1] == 0xFF00FF, "Wrong color 0x%08x after SetDIBits\n", (unsigned int)dibBuffer[1]);

    FUNC1(hbmp);
}