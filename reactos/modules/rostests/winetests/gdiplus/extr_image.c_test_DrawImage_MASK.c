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
typedef  int /*<<< orphan*/  white_2x2 ;
typedef  int /*<<< orphan*/  black_2x2 ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InterpolationModeNearestNeighbor ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    BYTE black_1x1[4] = { 0,0,0,0 };
    BYTE white_2x2[16] = { 0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                           0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff };
    BYTE black_2x2[16] = { 0,0,0,0,0,0,0xff,0xff,
                           0,0,0,0,0,0,0xff,0xff };
    GpStatus status;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } u1, u2;
    GpGraphics *graphics;
    int match;

    status = FUNC1(1, 1, 4, PixelFormat24bppRGB, black_1x1, &u1.bitmap);
    FUNC7(Ok, status);
    status = FUNC0(u1.bitmap, 100.0, 100.0);
    FUNC7(Ok, status);

    status = FUNC1(2, 2, 8, PixelFormat24bppRGB, white_2x2, &u2.bitmap);
    FUNC7(Ok, status);
    status = FUNC0(u2.bitmap, 300.0, 300.0);
    FUNC7(Ok, status);
    status = FUNC5(u2.image, &graphics);
    FUNC7(Ok, status);
    status = FUNC6(graphics, InterpolationModeNearestNeighbor);
    FUNC7(Ok, status);

    status = FUNC4(graphics, u1.image, 0, 0);
    FUNC7(Ok, status);

    match = FUNC8(white_2x2, black_2x2, sizeof(black_2x2)) == 0;
    FUNC9(match, "data should match\n");
    if (!match)
    {
        UINT i, size = sizeof(white_2x2);
        BYTE *bits = white_2x2;
        for (i = 0; i < size; i++)
            FUNC10(" %02x", bits[i]);
        FUNC10("\n");
    }

    status = FUNC2(graphics);
    FUNC7(Ok, status);
    status = FUNC3(u1.image);
    FUNC7(Ok, status);
    status = FUNC3(u2.image);
    FUNC7(Ok, status);
}