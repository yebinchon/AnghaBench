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
typedef  int REAL ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static void FUNC14(void)
{
    GpStatus stat;
    GpBitmap *bitmap;
    GpGraphics *graphics;
    REAL res=-1.0;
    HDC screendc;
    int screenxres, screenyres;

    /* create Bitmap */
    stat = FUNC1(1, 1, 32, PixelFormat24bppRGB, NULL, &bitmap);
    FUNC12(Ok, stat);

    /* test invalid values */
    stat = FUNC7(NULL, &res);
    FUNC12(InvalidParameter, stat);

    stat = FUNC7((GpImage*)bitmap, NULL);
    FUNC12(InvalidParameter, stat);

    stat = FUNC8(NULL, &res);
    FUNC12(InvalidParameter, stat);

    stat = FUNC8((GpImage*)bitmap, NULL);
    FUNC12(InvalidParameter, stat);

    stat = FUNC0(NULL, 96.0, 96.0);
    FUNC12(InvalidParameter, stat);

    stat = FUNC0(bitmap, 0.0, 0.0);
    FUNC12(InvalidParameter, stat);

    /* defaults to screen resolution */
    screendc = FUNC9(0);

    screenxres = FUNC10(screendc, LOGPIXELSX);
    screenyres = FUNC10(screendc, LOGPIXELSY);

    FUNC11(0, screendc);

    stat = FUNC7((GpImage*)bitmap, &res);
    FUNC12(Ok, stat);
    FUNC13((REAL)screenxres, res);

    stat = FUNC8((GpImage*)bitmap, &res);
    FUNC12(Ok, stat);
    FUNC13((REAL)screenyres, res);

    stat = FUNC6((GpImage*)bitmap, &graphics);
    FUNC12(Ok, stat);
    stat = FUNC4(graphics, &res);
    FUNC12(Ok, stat);
    FUNC13((REAL)screenxres, res);
    stat = FUNC5(graphics, &res);
    FUNC12(Ok, stat);
    FUNC13((REAL)screenyres, res);

    /* test changing the resolution */
    stat = FUNC0(bitmap, screenxres*2.0, screenyres*3.0);
    FUNC12(Ok, stat);

    stat = FUNC7((GpImage*)bitmap, &res);
    FUNC12(Ok, stat);
    FUNC13(screenxres*2.0, res);

    stat = FUNC8((GpImage*)bitmap, &res);
    FUNC12(Ok, stat);
    FUNC13(screenyres*3.0, res);

    stat = FUNC4(graphics, &res);
    FUNC12(Ok, stat);
    FUNC13((REAL)screenxres, res);
    stat = FUNC5(graphics, &res);
    FUNC12(Ok, stat);
    FUNC13((REAL)screenyres, res);

    stat = FUNC2(graphics);
    FUNC12(Ok, stat);

    stat = FUNC6((GpImage*)bitmap, &graphics);
    FUNC12(Ok, stat);
    stat = FUNC4(graphics, &res);
    FUNC12(Ok, stat);
    FUNC13(screenxres*2.0, res);
    stat = FUNC5(graphics, &res);
    FUNC12(Ok, stat);
    FUNC13(screenyres*3.0, res);
    stat = FUNC2(graphics);
    FUNC12(Ok, stat);

    stat = FUNC3((GpImage*)bitmap);
    FUNC12(Ok, stat);
}