#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bitmap ;
typedef  int ULONG ;
struct TYPE_3__ {int bmType; int bmWidth; int bmHeight; int bmWidthBytes; int bmPlanes; int bmBitsPixel; int /*<<< orphan*/  bmBits; } ;
typedef  scalar_t__ HBITMAP ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEFAULT_BITMAP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7()
{
    HBITMAP hbmp;
    BITMAP bitmap;
    ULONG cjWidthBytes, cBitsPixel, cExpectedBitsPixel;
    int result, TestBitsPixel, ExpectedBitsPixel;

    hbmp = FUNC0(0, 0, 0, 0, NULL);
    FUNC4(hbmp != 0, "should get a 1x1 bitmap\n");
    FUNC4(hbmp == FUNC3(DEFAULT_BITMAP), "\n");
    FUNC5(FUNC2(hbmp, sizeof(bitmap), &bitmap), sizeof(BITMAP));
    FUNC5(bitmap.bmType, 0);
    FUNC5(bitmap.bmWidth, 1);
    FUNC5(bitmap.bmHeight, 1);
    FUNC5(bitmap.bmWidthBytes, 2);
    FUNC5(bitmap.bmPlanes, 1);
    FUNC5(bitmap.bmBitsPixel, 1);
    FUNC6(bitmap.bmBits, 0);
    FUNC1(hbmp);

    /* Above 32 bpp should fail */
    hbmp = FUNC0(1, 2, 1, 33, NULL);
    FUNC4(hbmp == 0, "should fail\n");

    for (TestBitsPixel = 0; TestBitsPixel <= 32; TestBitsPixel++)
    {
        /* CreateBitmap API accepts any number as BitsPixels param.
           but it can only create 1, 4, 8, 16, 24, 32 bpp bitmaps */
        if (TestBitsPixel <= 1)      ExpectedBitsPixel = 1;
        else if(TestBitsPixel <= 4)  ExpectedBitsPixel = 4;
        else if(TestBitsPixel <= 8)  ExpectedBitsPixel = 8;
        else if(TestBitsPixel <= 16) ExpectedBitsPixel = 16;
        else if(TestBitsPixel <= 24) ExpectedBitsPixel = 24;
        else if(TestBitsPixel <= 32) ExpectedBitsPixel = 32;

        /* Calculate proper bmWidthBytes */

        hbmp = FUNC0(1, 2, 1, TestBitsPixel, NULL);
        FUNC4(hbmp != 0, "should get a 1x2 bitmap\n");
        result = FUNC2(hbmp, sizeof(bitmap), &bitmap);
        FUNC4(result > 0, "result = %d\n", result);
        FUNC4(bitmap.bmType == 0, "bmType = %ld\n", bitmap.bmType);
        FUNC4(bitmap.bmWidth == 1, "bmWidth = %ld\n", bitmap.bmWidth);
        FUNC4(bitmap.bmHeight == 2, "bmHeight = %ld\n", bitmap.bmHeight);
        FUNC4(bitmap.bmPlanes == 1, "bmPlanes = %d\n", bitmap.bmPlanes);
        FUNC4(bitmap.bmBitsPixel == ExpectedBitsPixel, "bmBitsPixel = %d ExpectedBitsPixel= %d \n", bitmap.bmBitsPixel, ExpectedBitsPixel);
        FUNC4(bitmap.bmBits == 0, "bmBits = %p\n", bitmap.bmBits);
        FUNC1(hbmp);
    }

    hbmp = FUNC0(1, 2, 1, 1, NULL);
    FUNC4(hbmp != 0, "should get a 1x2 bitmap\n");
    FUNC5(FUNC2(hbmp, sizeof(bitmap), &bitmap), sizeof(BITMAP));
    FUNC5(bitmap.bmType, 0);
    FUNC5(bitmap.bmWidth, 1);
    FUNC5(bitmap.bmHeight, 2);
    FUNC5(bitmap.bmWidthBytes, 2);
    FUNC5(bitmap.bmPlanes, 1);
    FUNC5(bitmap.bmBitsPixel, 1);
    FUNC6(bitmap.bmBits, 0);
    FUNC1(hbmp);

    for (cBitsPixel = 0; cBitsPixel <= 32; cBitsPixel++)
    {
        /* CreateBitmap API accepts any number as BitsPixels param.
           but it just can create 1, 4, 8, 16, 24, 32 bpp Bitmaps */
        if (cBitsPixel <= 1) cExpectedBitsPixel = 1;
        else if (cBitsPixel <= 4) cExpectedBitsPixel = 4;
        else if (cBitsPixel <= 8) cExpectedBitsPixel = 8;
        else if (cBitsPixel <= 16) cExpectedBitsPixel = 16;
        else if (cBitsPixel <= 24) cExpectedBitsPixel = 24;
        else if (cBitsPixel <= 32) cExpectedBitsPixel = 32;

        hbmp = FUNC0(1, 2, 1, cBitsPixel, NULL);
        FUNC4(hbmp != 0, "should get a 1x2 bitmap %ld\n", cBitsPixel);
        FUNC5(FUNC2(hbmp, sizeof(bitmap), &bitmap), sizeof(BITMAP));

        /* calculate expected line width */
        cjWidthBytes = ((((ULONG)bitmap.bmWidth) * ((ULONG)bitmap.bmBitsPixel) + 15) & ~15) >> 3;

        FUNC5(bitmap.bmType, 0);
        FUNC5(bitmap.bmWidth, 1);
        FUNC5(bitmap.bmHeight, 2);
        FUNC5(bitmap.bmPlanes, 1);
        FUNC5(bitmap.bmBitsPixel, cExpectedBitsPixel);
        FUNC5(bitmap.bmWidthBytes, cjWidthBytes);
        FUNC6(bitmap.bmBits, 0);
        FUNC1(hbmp);

    }

    hbmp = FUNC0(1, 2, 1, 33, NULL);
    FUNC4(hbmp == 0, "Expected failure for 33 bpp\n");



}