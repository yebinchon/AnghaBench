#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int BYTE ;
typedef  scalar_t__ ARGB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC2 (int,int,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  PixelFormat32bppRGB ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
    GpStatus stat;
    GpBitmap *bitmap;
    ARGB color;
    BYTE bits[16] = {0x00,0x00,0x00,0x00, 0x00,0xff,0xff,0x00,
                     0xff,0x00,0x00,0x00, 0xff,0xff,0xff,0x00};

    stat = FUNC2(2, 2, 8, PixelFormat32bppRGB, bits, &bitmap);
    FUNC5(Ok, stat);

    /* null parameters */
    stat = FUNC0(NULL, 1, 1, &color);
    FUNC5(InvalidParameter, stat);

    stat = FUNC0(bitmap, 1, 1, NULL);
    FUNC5(InvalidParameter, stat);

    stat = FUNC1(NULL, 1, 1, 0);
    FUNC5(InvalidParameter, stat);

    /* out of bounds */
    stat = FUNC0(bitmap, -1, 1, &color);
    FUNC5(InvalidParameter, stat);

    stat = FUNC1(bitmap, -1, 1, 0);
    FUNC5(InvalidParameter, stat);

    stat = FUNC0(bitmap, 1, -1, &color);
    FUNC6(stat == InvalidParameter ||
       FUNC4(stat == Ok), /* Older gdiplus */
       "Expected InvalidParameter, got %.8x\n", stat);

if (0) /* crashes some gdiplus implementations */
{
    stat = FUNC1(bitmap, 1, -1, 0);
    FUNC6(stat == InvalidParameter ||
       FUNC4(stat == Ok), /* Older gdiplus */
       "Expected InvalidParameter, got %.8x\n", stat);
}

    stat = FUNC0(bitmap, 2, 1, &color);
    FUNC5(InvalidParameter, stat);

    stat = FUNC1(bitmap, 2, 1, 0);
    FUNC5(InvalidParameter, stat);

    stat = FUNC0(bitmap, 1, 2, &color);
    FUNC5(InvalidParameter, stat);

    stat = FUNC1(bitmap, 1, 2, 0);
    FUNC5(InvalidParameter, stat);

    /* valid use */
    stat = FUNC0(bitmap, 1, 1, &color);
    FUNC5(Ok, stat);
    FUNC5(0xffffffff, color);

    stat = FUNC0(bitmap, 0, 1, &color);
    FUNC5(Ok, stat);
    FUNC5(0xff0000ff, color);

    stat = FUNC1(bitmap, 1, 1, 0xff676869);
    FUNC5(Ok, stat);

    stat = FUNC1(bitmap, 0, 0, 0xff474849);
    FUNC5(Ok, stat);

    stat = FUNC0(bitmap, 1, 1, &color);
    FUNC5(Ok, stat);
    FUNC5(0xff676869, color);

    stat = FUNC0(bitmap, 0, 0, &color);
    FUNC5(Ok, stat);
    FUNC5(0xff474849, color);

    stat = FUNC3((GpImage*)bitmap);
    FUNC5(Ok, stat);
}