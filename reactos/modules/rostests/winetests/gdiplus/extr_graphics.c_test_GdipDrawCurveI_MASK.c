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
struct TYPE_3__ {int X; int Y; } ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpPoint ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  OutOfMemory ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    GpPen *pen = NULL;
    HDC hdc = FUNC5( hwnd );
    GpPoint points[3];

    points[0].X = 0;
    points[0].Y = 0;

    points[1].X = 40;
    points[1].Y = 20;

    points[2].X = 10;
    points[2].Y = 40;

    /* make a graphics object and pen object */
    FUNC8(hdc != NULL, "Expected HDC to be initialized\n");

    status = FUNC0(hdc, &graphics);
    FUNC7(Ok, status);
    FUNC8(graphics != NULL, "Expected graphics to be initialized\n");

    status = FUNC1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    FUNC7(Ok, status);
    FUNC8(pen != NULL, "Expected pen to be initialized\n");

    /* InvalidParameter cases: null graphics, null pen */
    status = FUNC4(NULL, NULL, points, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, NULL, points, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(NULL, pen, points, 3);
    FUNC7(InvalidParameter, status);

    /* InvalidParameter cases: invalid count */
    status = FUNC4(graphics, pen, points, -1);
    FUNC7(OutOfMemory, status);

    status = FUNC4(graphics, pen, points, 0);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, pen, points, 1);
    FUNC7(InvalidParameter, status);

    /* Valid test cases */
    status = FUNC4(graphics, pen, points, 2);
    FUNC7(Ok, status);

    status = FUNC4(graphics, pen, points, 3);
    FUNC7(Ok, status);

    FUNC3(pen);
    FUNC2(graphics);

    FUNC6(hwnd, hdc);
}