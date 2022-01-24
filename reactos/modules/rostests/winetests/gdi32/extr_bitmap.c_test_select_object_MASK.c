#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  depths ;
typedef  int /*<<< orphan*/  bm ;
struct TYPE_4__ {int bmType; int bmWidth; int bmHeight; int bmWidthBytes; int bmBitsPixel; int bmPlanes; int bmBits; } ;
typedef  int INT ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int DWORD ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  PLANES ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    HDC hdc;
    HBITMAP hbm, hbm_old;
    INT planes, bpp, i;
    DWORD depths[] = {8, 15, 16, 24, 32};
    BITMAP bm;
    DWORD bytes;

    hdc = FUNC5(0);
    FUNC12(hdc != 0, "GetDC(0) failed\n");
    hbm = FUNC1(hdc, 10, 10);
    FUNC12(hbm != 0, "CreateCompatibleBitmap failed\n");

    hbm_old = FUNC9(hdc, hbm);
    FUNC12(hbm_old == 0, "SelectObject should fail\n");

    FUNC4(hbm);
    FUNC8(0, hdc);

    hdc = FUNC2(0);
    FUNC12(hdc != 0, "GetDC(0) failed\n");
    hbm = FUNC1(hdc, 10, 10);
    FUNC12(hbm != 0, "CreateCompatibleBitmap failed\n");

    hbm_old = FUNC9(hdc, hbm);
    FUNC12(hbm_old != 0, "SelectObject failed\n");
    hbm_old = FUNC9(hdc, hbm_old);
    FUNC12(hbm_old == hbm, "SelectObject failed\n");

    FUNC4(hbm);

    /* test an 1-bpp bitmap */
    planes = FUNC6(hdc, PLANES);
    bpp = 1;

    hbm = FUNC0(10, 10, planes, bpp, NULL);
    FUNC12(hbm != 0, "CreateBitmap failed\n");

    hbm_old = FUNC9(hdc, hbm);
    FUNC12(hbm_old != 0, "SelectObject failed\n");
    hbm_old = FUNC9(hdc, hbm_old);
    FUNC12(hbm_old == hbm, "SelectObject failed\n");

    FUNC4(hbm);

    for(i = 0; i < sizeof(depths)/sizeof(depths[0]); i++) {
        /* test a color bitmap to dc bpp matching */
        planes = FUNC6(hdc, PLANES);
        bpp = FUNC6(hdc, BITSPIXEL);

        hbm = FUNC0(10, 10, planes, depths[i], NULL);
        FUNC12(hbm != 0, "CreateBitmap failed\n");

        hbm_old = FUNC9(hdc, hbm);
        if(depths[i] == bpp ||
          (bpp == 16 && depths[i] == 15)        /* 16 and 15 bpp are compatible */
          ) {
            FUNC12(hbm_old != 0, "SelectObject failed, BITSPIXEL: %d, created depth: %d\n", bpp, depths[i]);
            FUNC9(hdc, hbm_old);
        } else {
            FUNC12(hbm_old == 0, "SelectObject should fail. BITSPIXELS: %d, created depth: %d\n", bpp, depths[i]);
        }

        FUNC11(&bm, 0xAA, sizeof(bm));
        bytes = FUNC7(hbm, sizeof(bm), &bm);
        FUNC12(bytes == sizeof(bm), "GetObject returned %d\n", bytes);
        FUNC12(bm.bmType == 0, "wrong bmType %d\n", bm.bmType);
        FUNC12(bm.bmWidth == 10, "wrong bmWidth %d\n", bm.bmWidth);
        FUNC12(bm.bmHeight == 10, "wrong bmHeight %d\n", bm.bmHeight);
        FUNC12(bm.bmWidthBytes == FUNC10(bm.bmWidth, bm.bmBitsPixel), "wrong bmWidthBytes %d\n", bm.bmWidthBytes);
        FUNC12(bm.bmPlanes == planes, "wrong bmPlanes %u\n", bm.bmPlanes);
        if(depths[i] == 15) {
            FUNC12(bm.bmBitsPixel == 16, "wrong bmBitsPixel %d(15 bpp special)\n", bm.bmBitsPixel);
        } else {
            FUNC12(bm.bmBitsPixel == depths[i], "wrong bmBitsPixel %d\n", bm.bmBitsPixel);
        }
        FUNC12(!bm.bmBits, "wrong bmBits %p\n", bm.bmBits);

        FUNC4(hbm);
    }

    FUNC3(hdc);
}