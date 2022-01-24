#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_8__ {int biWidth; } ;
struct TYPE_9__ {TYPE_3__ bmiHeader; } ;
struct TYPE_7__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_7; int member_8; int member_9; int /*<<< orphan*/  member_10; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int* PULONG ;
typedef  TYPE_4__* PBITMAPINFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  scalar_t__ HBITMAP ;
typedef  int BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  HS_CROSS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

void FUNC8()
{
    HDC hdcDst, hdcSrc;
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG aulColors[2];
    } bmiData = {{sizeof(BITMAPINFOHEADER), 16, 16, 1, 1, BI_RGB, 0, 10, 10, 2,0}, {0, 0xFFFFFF}};
    PBITMAPINFO pbmi = (PBITMAPINFO)&bmiData;
    HBITMAP hbmDst, hbmSrc, hbmMsk;
    PULONG pulBitsDst, pulBitsSrc, pulBitsMsk;
    BOOL ret;
    HBRUSH hbr;

    /* Create a dest dc and bitmap */
    hdcDst = FUNC0(NULL);
    hbmDst = FUNC1(hdcDst, pbmi, DIB_RGB_COLORS, (PVOID*)&pulBitsDst, NULL, 0);
    FUNC6(hdcDst, hbmDst);

    /* Create a source dc and bitmap */
    hdcSrc = FUNC0(NULL);
    hbmSrc = FUNC1(hdcSrc, pbmi, DIB_RGB_COLORS, (PVOID*)&pulBitsSrc, NULL, 0);
    FUNC6(hdcSrc, hbmSrc);

    hbr = FUNC2(HS_CROSS, 0);
    FUNC7(hbr != 0, "failed to create brush\n");
    FUNC7(FUNC6(hdcDst, hbr) != 0, "failed to select brush\n");

    /* Do the masking (SRCCOPY / NOOP) */
    pulBitsDst[0] = 0x00000000;
    pulBitsSrc[0] = 0xFFFFFFFF;
    ret = FUNC5(hdcDst, 0, 0, 8, 1, hdcSrc, 0, 0, NULL, 0, 0, FUNC4(SRCCOPY, 0xAA0000));
    FUNC7(ret == 1, "MaskBlt failed (%d)\n", ret);
    FUNC7(pulBitsDst[0] == 0, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);

    /* Create a 1 bpp pattern brush */
    pbmi->bmiHeader.biWidth = 8;
    hbmMsk = FUNC1(hdcDst, pbmi, DIB_RGB_COLORS, (PVOID*)&pulBitsMsk, NULL, 0);
    FUNC7(hbmMsk != 0, "CreateDIBSection failed\n");
    hbr = FUNC3(hbmMsk);
    FUNC7(hbr != 0, "CreatePatternBrush failed\n");
    FUNC7(FUNC6(hdcDst, hbr) != 0, "failed to select brush\n");

    /* Do the masking (SRCCOPY / NOOP) */
    pulBitsDst[0] = 0x00000000;
    pulBitsSrc[0] = 0xFFFFFFFF;
    pulBitsMsk[0] = 0xCCAAFF00;
    ret = FUNC5(hdcDst, 0, 0, 16, 1, hdcSrc, 0, 0, NULL, 0, 0, FUNC4(SRCCOPY, 0xAA0000));
    FUNC7(ret == 1, "MaskBlt failed (%d)\n", ret);
    FUNC7(pulBitsDst[0] == 0, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);

}