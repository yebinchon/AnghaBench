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
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MatrixOrderPrepend ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    GpBitmap *bitmap = NULL;
    HDC hdc=NULL;
    HBRUSH hbrush, holdbrush;
    ARGB color;

    status = FUNC3(10, 10, 12, PixelFormat24bppRGB, NULL, &bitmap);
    FUNC13(Ok, status);

    status = FUNC7((GpImage*)bitmap, &graphics);
    FUNC13(Ok, status);

    status = FUNC9(graphics, 2.0, 2.0, MatrixOrderPrepend);
    FUNC13(Ok, status);

    status = FUNC6(graphics, &hdc);
    FUNC13(Ok, status);
    FUNC14(hdc != NULL, "got NULL hdc\n");

    hbrush = FUNC0(FUNC10(255, 0, 0));

    holdbrush = FUNC12(hdc, hbrush);

    FUNC11(hdc, 2, 2, 6, 6);

    FUNC12(hdc, holdbrush);

    FUNC1(hbrush);

    status = FUNC8(graphics, hdc);
    FUNC13(Ok, status);

    FUNC4(graphics);

    status = FUNC2(bitmap, 3, 3, &color);
    FUNC13(Ok, status);
    FUNC13(0xffff0000, color);

    status = FUNC2(bitmap, 8, 8, &color);
    FUNC13(Ok, status);
    FUNC13(0xff000000, color);

    FUNC5((GpImage*)bitmap);
}