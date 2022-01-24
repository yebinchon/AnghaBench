#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_7; int member_8; int /*<<< orphan*/  member_10; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int* PULONG ;
typedef  int* PUCHAR ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int MERGEPAINT ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  SRCPAINT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

void FUNC6()
{
    HDC hdcDst, hdcSrc;
    BITMAPINFO bmi1 = {{sizeof(BITMAPINFOHEADER), 8, 1, 1, 1, BI_RGB, 0, 10, 10, 0,0}};
    BITMAPINFO bmi32 = {{sizeof(BITMAPINFOHEADER), 8, 1, 1, 32, BI_RGB, 0, 10, 10, 0,0}};
    HBITMAP hbmDst, hbmSrc, hbmMsk;
    PUCHAR pjBitsMsk;
    PULONG pulBitsDst, pulBitsSrc;
    BOOL ret;

    /* Create a dest dc and bitmap */
    hdcDst = FUNC0(NULL);
    hbmDst = FUNC1(hdcDst, &bmi32, DIB_RGB_COLORS, (PVOID*)&pulBitsDst, NULL, 0);
    FUNC4(hdcDst, hbmDst);

    /* Create a source dc and bitmap */
    hdcSrc = FUNC0(NULL);
    hbmSrc = FUNC1(hdcSrc, &bmi32, DIB_RGB_COLORS, (PVOID*)&pulBitsSrc, NULL, 0);
    FUNC4(hdcSrc, hbmSrc);
    FUNC5(hdcSrc && hbmSrc, "\n");

    /* Create a 1 bpp mask bitmap */
    hbmMsk = FUNC1(hdcDst, &bmi1, DIB_RGB_COLORS, (PVOID*)&pjBitsMsk, NULL, 0);
    FUNC5(hbmMsk != 0, "CreateDIBSection failed\n");

    /* Do the masking */
    pulBitsDst[0] = 0x12345678;
    pulBitsDst[1] = 0x9abcdef0;
    pulBitsSrc[0] = 0x87684321;
    pulBitsSrc[1] = 0x0fedcba9;
    pjBitsMsk[0] = 0x80;
    ret = FUNC3(hdcDst, 0, 0, 8, 1, hdcSrc, 0, 0, hbmMsk, 0, 0, FUNC2(SRCCOPY, 0xAA0000));
    FUNC5(ret == 1, "MaskBlt failed (%d)\n", ret);
    FUNC5 (pulBitsDst[0] == 0x87684321, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);
    FUNC5 (pulBitsDst[1] == 0x9abcdef0, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[1]);

    pulBitsDst[0] = 0x12345678;
    pulBitsDst[1] = 0x9abcdef0;
    ret = FUNC3(hdcDst, 0, 0, 8, 1, hdcSrc, 0, 0, hbmMsk, 0, 0, FUNC2(SRCPAINT, MERGEPAINT));
    FUNC5(ret == 1, "MaskBlt failed (%d)\n", ret);
    FUNC5 (pulBitsDst[0] == 0x977c5779, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);
    FUNC5 (pulBitsDst[1] == 0xfabefef6, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[1]);
}