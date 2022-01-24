#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int X; int Y; int Width; int Height; } ;
struct TYPE_5__ {int X; int Y; int Width; int Height; } ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpRectF ;
typedef  TYPE_2__ GpRect ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZRES ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VERTRES ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC5(0);
    GpRectF rectf, exp, clipr;
    GpRect recti;

    FUNC9(hdc != NULL, "Expected HDC to be initialized\n");

    status = FUNC0(hdc, &graphics);
    FUNC8(Ok, status);
    FUNC9(graphics != NULL, "Expected graphics to be initialized\n");

    /* no clipping rect */
    exp.X = 0;
    exp.Y = 0;
    exp.Width = FUNC6(hdc, HORZRES);
    exp.Height = FUNC6(hdc, VERTRES);

    status = FUNC2(graphics, &rectf);
    FUNC8(Ok, status);
    FUNC9(rectf.X == exp.X &&
        rectf.Y == exp.Y &&
        rectf.Width == exp.Width &&
        rectf.Height == exp.Height,
        "Expected clip bounds (%0.f, %0.f, %0.f, %0.f) to be the size of "
        "the screen (%0.f, %0.f, %0.f, %0.f)\n",
        rectf.X, rectf.Y, rectf.Width, rectf.Height,
        exp.X, exp.Y, exp.Width, exp.Height);

    /* clipping rect entirely within window */
    exp.X = clipr.X = 10;
    exp.Y = clipr.Y = 12;
    exp.Width = clipr.Width = 14;
    exp.Height = clipr.Height = 16;

    status = FUNC4(graphics, clipr.X, clipr.Y, clipr.Width, clipr.Height, CombineModeReplace);
    FUNC8(Ok, status);

    status = FUNC2(graphics, &rectf);
    FUNC8(Ok, status);
    FUNC9(rectf.X == exp.X &&
        rectf.Y == exp.Y &&
        rectf.Width == exp.Width &&
        rectf.Height == exp.Height,
        "Expected clip bounds (%0.f, %0.f, %0.f, %0.f) to be the size of "
        "the clipping rect (%0.f, %0.f, %0.f, %0.f)\n",
        rectf.X, rectf.Y, rectf.Width, rectf.Height,
        exp.X, exp.Y, exp.Width, exp.Height);

    /* clipping rect partially outside of screen */
    clipr.X = -10;
    clipr.Y = -12;
    clipr.Width = 20;
    clipr.Height = 24;

    status = FUNC4(graphics, clipr.X, clipr.Y, clipr.Width, clipr.Height, CombineModeReplace);
    FUNC8(Ok, status);

    exp.X = 0;
    exp.Y = 0;
    exp.Width = 10;
    exp.Height = 12;

    status = FUNC2(graphics, &rectf);
    FUNC8(Ok, status);
    FUNC9(rectf.X == exp.X &&
        rectf.Y == exp.Y &&
        rectf.Width == exp.Width &&
        rectf.Height == exp.Height,
        "Expected clip bounds (%0.f, %0.f, %0.f, %0.f) to be the size of "
        "the visible clipping rect (%0.f, %0.f, %0.f, %0.f)\n",
        rectf.X, rectf.Y, rectf.Width, rectf.Height,
        exp.X, exp.Y, exp.Width, exp.Height);

    status = FUNC3(graphics, &recti);
    FUNC8(Ok, status);
    FUNC9(recti.X == exp.X &&
        recti.Y == exp.Y &&
        recti.Width == exp.Width &&
        recti.Height == exp.Height,
        "Expected clip bounds (%d, %d, %d, %d) to be the size of "
        "the visible clipping rect (%0.f, %0.f, %0.f, %0.f)\n",
        recti.X, recti.Y, recti.Width, recti.Height,
        exp.X, exp.Y, exp.Width, exp.Height);

    FUNC1(graphics);
    FUNC7(0, hdc);
}