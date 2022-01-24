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
struct TYPE_4__ {double X; double Y; double Height; double Width; } ;
typedef  double REAL ;
typedef  int /*<<< orphan*/  HDC ;
typedef  double GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 double FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 double FUNC2 (int /*<<< orphan*/ **) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 double FUNC6 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 double InvalidParameter ; 
 int /*<<< orphan*/  MatrixOrderPrepend ; 
 double Ok ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UnitInch ; 
 int /*<<< orphan*/  FUNC12 (int,char*,double,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    GpRegion *region;
    GpGraphics *graphics;
    GpStatus status;
    GpRectF rectf;
    HDC hdc = FUNC10(0);

    status = FUNC1(hdc, &graphics);
    FUNC12(status == Ok, "status %08x\n", status);
    status = FUNC2(&region);
    FUNC12(status == Ok, "status %08x\n", status);

    /* NULL */
    status = FUNC5(NULL, NULL, NULL);
    FUNC12(status == InvalidParameter, "status %08x\n", status);
    status = FUNC5(region, NULL, NULL);
    FUNC12(status == InvalidParameter, "status %08x\n", status);
    status = FUNC5(region, graphics, NULL);
    FUNC12(status == InvalidParameter, "status %08x\n", status);
    /* infinite */
    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 100.0;
    status = FUNC5(region, graphics, &rectf);
    FUNC12(status == Ok, "status %08x\n", status);
    FUNC12(rectf.X == -(REAL)(1 << 22), "Expected X = %.2f, got %.2f\n", -(REAL)(1 << 22), rectf.X);
    FUNC12(rectf.Y == -(REAL)(1 << 22), "Expected Y = %.2f, got %.2f\n", -(REAL)(1 << 22), rectf.Y);
    FUNC12(rectf.Width  == (REAL)(1 << 23), "Expected width = %.2f, got %.2f\n", (REAL)(1 << 23), rectf.Width);
    FUNC12(rectf.Height == (REAL)(1 << 23), "Expected height = %.2f, got %.2f\n",(REAL)(1 << 23), rectf.Height);
    /* empty */
    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 100.0;
    status = FUNC7(region);
    FUNC12(status == Ok, "status %08x\n", status);
    status = FUNC5(region, graphics, &rectf);
    FUNC12(status == Ok, "status %08x\n", status);
    FUNC12(rectf.X == 0.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    FUNC12(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    FUNC12(rectf.Width  == 0.0, "Expected width = 0.0, got %.2f\n", rectf.Width);
    FUNC12(rectf.Height == 0.0, "Expected height = 0.0, got %.2f\n", rectf.Height);
    /* rect */
    rectf.X = 10.0; rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC0(region, &rectf, CombineModeReplace);
    FUNC12(status == Ok, "status %08x\n", status);
    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 0.0;
    status = FUNC5(region, graphics, &rectf);
    FUNC12(status == Ok, "status %08x\n", status);
    FUNC12(rectf.X == 10.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    FUNC12(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    FUNC12(rectf.Width  == 100.0, "Expected width = 0.0, got %.2f\n", rectf.Width);
    FUNC12(rectf.Height == 100.0, "Expected height = 0.0, got %.2f\n", rectf.Height);

    /* the world and page transforms are ignored */
    status = FUNC6(graphics, 2.0, 2.0, MatrixOrderPrepend);
    FUNC12(status == Ok, "status %08x\n", status);
    FUNC9(graphics, UnitInch);
    FUNC8(graphics, 2.0);
    status = FUNC5(region, graphics, &rectf);
    FUNC12(status == Ok, "status %08x\n", status);
    FUNC12(rectf.X == 10.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    FUNC12(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    FUNC12(rectf.Width  == 100.0, "Expected width = 0.0, got %.2f\n", rectf.Width);

    rectf.X = 10.0; rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = FUNC0(region, &rectf, CombineModeReplace);
    FUNC12(status == Ok, "status %08x\n", status);
    rectf.X = rectf.Y = 0.0;
    rectf.Height = rectf.Width = 0.0;
    status = FUNC5(region, graphics, &rectf);
    FUNC12(status == Ok, "status %08x\n", status);
    FUNC12(rectf.X == 10.0, "Expected X = 0.0, got %.2f\n", rectf.X);
    FUNC12(rectf.Y == 0.0, "Expected Y = 0.0, got %.2f\n", rectf.Y);
    FUNC12(rectf.Width  == 100.0, "Expected width = 0.0, got %.2f\n", rectf.Width);
    FUNC12(rectf.Height == 100.0, "Expected height = 0.0, got %.2f\n", rectf.Height);

    status = FUNC4(region);
    FUNC12(status == Ok, "status %08x\n", status);
    status = FUNC3(graphics);
    FUNC12(status == Ok, "status %08x\n", status);
    FUNC11(0, hdc);
}