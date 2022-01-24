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
struct TYPE_2__ {int biSize; int biBitCount; int /*<<< orphan*/  biCompression; } ;
typedef  int /*<<< orphan*/  PBITMAPINFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_1__ BITMAPINFOHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  BI_BITFIELDS ; 
 int BMF_16BPP_555 ; 
 int BMF_16BPP_565 ; 
 int BMF_1BPP ; 
 int BMF_32BPP_BGR ; 
 int BMF_32BPP_RGB ; 
 int BMF_4BPP ; 
 int BMF_8BPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ULONG
FUNC4()
{
    HBITMAP hbmp;
    HDC hdc;
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG aulMasks[3];
    } bmi;
    PBITMAPINFO pbmi = (PBITMAPINFO)&bmi;
    ULONG ulColorDepth;

    /* Get the screen DC */
    hdc = FUNC2(NULL);

    /* Create a compatible bitmap */
    hbmp = FUNC0(hdc, 1, 1);

    /* Fill BITMAPINFOHEADER */
    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    FUNC3(hdc, hbmp, 0, 1, NULL, pbmi, DIB_RGB_COLORS);

    /* Call again to fill in the bitfields */
    FUNC3(hdc, hbmp, 0, 1, NULL, pbmi, DIB_RGB_COLORS);

    /* Get the basic color depth */
    ulColorDepth = bmi.bmiHeader.biBitCount;

    FUNC1(hbmp);

    switch (ulColorDepth)
    {
        case 1:
            return BMF_1BPP;
        case 4:
            return BMF_4BPP;
        case 8:
            return BMF_8BPP;
        case 16:
            /* Check the red mask */
            if (bmi.aulMasks[0] == 0x7c00)
                return BMF_16BPP_555;
            else
                return BMF_16BPP_565;
        case 24:
            return BMF_4BPP;
        case 32:
            if (bmi.bmiHeader.biCompression == BI_BITFIELDS &&
                bmi.aulMasks[0] == 0xff)
                return BMF_32BPP_RGB;
            else
                return BMF_32BPP_BGR;
    }

    /* Cleanup and return */
    return BMF_32BPP_RGB;
}