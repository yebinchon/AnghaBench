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
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImageAttributes ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  ColorAdjustTypeAny ; 
 int /*<<< orphan*/  ColorAdjustTypeDefault ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat32bppRGB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void)
{
    GpStatus stat;
    GpImageAttributes *imageattr;
    GpBitmap *bitmap1, *bitmap2;
    GpGraphics *graphics;
    ARGB color;

    stat = FUNC10(NULL, ColorAdjustTypeDefault, TRUE, 1.0);
    FUNC12(InvalidParameter, stat);

    stat = FUNC3(&imageattr);
    FUNC12(Ok, stat);

    stat = FUNC10(imageattr, ColorAdjustTypeDefault, TRUE, 1.0);
    FUNC12(Ok, stat);

    stat = FUNC10(imageattr, ColorAdjustTypeAny, TRUE, 1.0);
    FUNC12(InvalidParameter, stat);

    stat = FUNC10(imageattr, ColorAdjustTypeDefault, TRUE, -1.0);
    FUNC12(InvalidParameter, stat);

    stat = FUNC10(imageattr, ColorAdjustTypeDefault, TRUE, 0.0);
    FUNC12(InvalidParameter, stat);

    stat = FUNC10(imageattr, ColorAdjustTypeDefault, TRUE, 0.5);
    FUNC12(Ok, stat);

    stat = FUNC10(imageattr, ColorAdjustTypeDefault, FALSE, 0.0);
    FUNC12(Ok, stat);

    /* Drawing a bitmap transforms the colors */
    stat = FUNC10(imageattr, ColorAdjustTypeDefault, TRUE, 3.0);
    FUNC12(Ok, stat);

    stat = FUNC2(1, 1, 0, PixelFormat32bppRGB, NULL, &bitmap1);
    FUNC12(Ok, stat);

    stat = FUNC2(1, 1, 0, PixelFormat32bppRGB, NULL, &bitmap2);
    FUNC12(Ok, stat);

    stat = FUNC1(bitmap1, 0, 0, 0xff80ffff);
    FUNC12(Ok, stat);

    stat = FUNC8((GpImage*)bitmap2, &graphics);
    FUNC12(Ok, stat);

    stat = FUNC7(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
        UnitPixel, imageattr, NULL, NULL);
    FUNC12(Ok, stat);

    stat = FUNC0(bitmap2, 0, 0, &color);
    FUNC12(Ok, stat);
    FUNC13(FUNC11(0xff20ffff, color, 1), "Expected ff20ffff, got %.8x\n", color);

    stat = FUNC9(imageattr, ColorAdjustTypeDefault);
    FUNC12(Ok, stat);

    stat = FUNC7(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
        UnitPixel, imageattr, NULL, NULL);
    FUNC12(Ok, stat);

    stat = FUNC0(bitmap2, 0, 0, &color);
    FUNC12(Ok, stat);
    FUNC13(FUNC11(0xff80ffff, color, 1), "Expected ff80ffff, got %.8x\n", color);

    FUNC4(graphics);
    FUNC5((GpImage*)bitmap1);
    FUNC5((GpImage*)bitmap2);
    FUNC6(imageattr);
}