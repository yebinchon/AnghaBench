#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int Argb; } ;
struct TYPE_7__ {int Argb; } ;
struct TYPE_9__ {TYPE_2__ newColor; TYPE_1__ oldColor; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImageAttributes ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  TYPE_3__ ColorMap ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  ColorAdjustTypeAny ; 
 int /*<<< orphan*/  ColorAdjustTypeCount ; 
 int /*<<< orphan*/  ColorAdjustTypeDefault ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat32bppRGB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(void)
{
    GpStatus stat;
    GpImageAttributes *imageattr;
    GpBitmap *bitmap1, *bitmap2;
    GpGraphics *graphics;
    ARGB color;
    ColorMap *map;

    map = FUNC0(sizeof(ColorMap));

    map->oldColor.Argb = 0xff00ff00;
    map->newColor.Argb = 0xffff00ff;

    stat = FUNC12(NULL, ColorAdjustTypeDefault, TRUE, 1, map);
    FUNC14(InvalidParameter, stat);

    stat = FUNC4(&imageattr);
    FUNC14(Ok, stat);

    stat = FUNC12(imageattr, ColorAdjustTypeDefault, TRUE, 1, NULL);
    FUNC14(InvalidParameter, stat);

    stat = FUNC12(imageattr, ColorAdjustTypeCount, TRUE, 1, map);
    FUNC14(InvalidParameter, stat);

    stat = FUNC12(imageattr, ColorAdjustTypeAny, TRUE, 1, map);
    FUNC14(InvalidParameter, stat);

    stat = FUNC12(imageattr, ColorAdjustTypeDefault, TRUE, 0, map);
    FUNC14(InvalidParameter, stat);

    stat = FUNC12(imageattr, ColorAdjustTypeDefault, FALSE, 0, NULL);
    FUNC14(Ok, stat);

    stat = FUNC12(imageattr, ColorAdjustTypeDefault, TRUE, 1, map);
    FUNC14(Ok, stat);

    stat = FUNC3(1, 1, 0, PixelFormat32bppRGB, NULL, &bitmap1);
    FUNC14(Ok, stat);

    stat = FUNC3(1, 1, 0, PixelFormat32bppRGB, NULL, &bitmap2);
    FUNC14(Ok, stat);

    stat = FUNC2(bitmap1, 0, 0, 0xff00ff00);
    FUNC14(Ok, stat);

    stat = FUNC10((GpImage*)bitmap2, &graphics);
    FUNC14(Ok, stat);

    stat = FUNC8(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
	UnitPixel, imageattr, NULL, NULL);
    FUNC14(Ok, stat);

    stat = FUNC1(bitmap2, 0, 0, &color);
    FUNC14(Ok, stat);
    FUNC15(FUNC13(0xffff00ff, color, 1), "Expected ffff00ff, got %.8x\n", color);

    stat = FUNC11(imageattr, ColorAdjustTypeDefault);
    FUNC14(Ok, stat);

    stat = FUNC8(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
        UnitPixel, imageattr, NULL, NULL);
    FUNC14(Ok, stat);

    stat = FUNC1(bitmap2, 0, 0, &color);
    FUNC14(Ok, stat);
    FUNC15(FUNC13(0xff00ff00, color, 1), "Expected ff00ff00, got %.8x\n", color);

    FUNC5(graphics);
    FUNC6((GpImage*)bitmap1);
    FUNC6((GpImage*)bitmap2);
    FUNC7(imageattr);
    FUNC9(map);
}