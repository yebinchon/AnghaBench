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
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    GpSolidFill *brush = NULL;
    HDC hdc = FUNC5( hwnd );
    GpPointF points[3];

    points[0].X = 0;
    points[0].Y = 0;

    points[1].X = 40;
    points[1].Y = 20;

    points[2].X = 10;
    points[2].Y = 40;

    /* make a graphics object and brush object */
    FUNC8(hdc != NULL, "Expected HDC to be initialized\n");

    status = FUNC0(hdc, &graphics);
    FUNC7(Ok, status);
    FUNC8(graphics != NULL, "Expected graphics to be initialized\n");

    FUNC1((ARGB)0xdeadbeef, &brush);

    /* InvalidParameter cases: null graphics, null brush, null points */
    status = FUNC4(NULL, NULL, NULL, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, NULL, NULL, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(NULL, (GpBrush*)brush, NULL, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(NULL, NULL, points, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, (GpBrush*)brush, NULL, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, NULL, points, 3);
    FUNC7(InvalidParameter, status);

    status = FUNC4(NULL, (GpBrush*)brush, points, 3);
    FUNC7(InvalidParameter, status);

    /* InvalidParameter cases: invalid count */
    status = FUNC4(graphics, (GpBrush*)brush, points, -1);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, (GpBrush*)brush, points, 0);
    FUNC7(InvalidParameter, status);

    /* Valid test cases */
    status = FUNC4(graphics, (GpBrush*)brush, points, 1);
    FUNC7(Ok, status);

    status = FUNC4(graphics, (GpBrush*)brush, points, 2);
    FUNC7(Ok, status);

    status = FUNC4(graphics, (GpBrush*)brush, points, 3);
    FUNC7(Ok, status);

    FUNC3(graphics);
    FUNC2((GpBrush*)brush);

    FUNC6(hwnd, hdc);
}