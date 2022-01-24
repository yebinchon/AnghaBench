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
typedef  double REAL ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,double,double,double,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  MatrixOrderAppend ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC6( hwnd );
    REAL x, y, width, height;
    BOOL val;

    FUNC9(hdc != NULL, "Expected HDC to be initialized\n");

    status = FUNC0(hdc, &graphics);
    FUNC8(Ok, status);
    FUNC9(graphics != NULL, "Expected graphics to be initialized\n");

    status = FUNC2(NULL, 0, 0, 0, 0, &val);
    FUNC8(InvalidParameter, status);

    status = FUNC2(graphics, 0, 0, 0, 0, NULL);
    FUNC8(InvalidParameter, status);

    status = FUNC3(NULL, 0, 0, 0, 0, &val);
    FUNC8(InvalidParameter, status);

    status = FUNC3(graphics, 0, 0, 0, 0, NULL);
    FUNC8(InvalidParameter, status);

    /* entirely within the visible region */
    x = 0; width = 10;
    y = 0; height = 10;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    /* partially outside */
    x = -10; width = 20;
    y = -10; height = 20;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    /* entirely outside */
    x = -10; width = 5;
    y = -10; height = 5;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\n", x, y, width, height);

    status = FUNC4(graphics, 10, 20, 30, 40, CombineModeReplace);
    FUNC8(Ok, status);

    /* entirely within the visible region */
    x = 12; width = 10;
    y = 22; height = 10;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    /* partially outside */
    x = 35; width = 10;
    y = 55; height = 10;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    /* entirely outside */
    x = 45; width = 5;
    y = 65; height = 5;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\n", x, y, width, height);

    /* translate into center of clipping rect */
    FUNC5(graphics, 25, 40, MatrixOrderAppend);

    x = 0; width = 10;
    y = 0; height = 10;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    x = 25; width = 5;
    y = 40; height = 5;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\n", x, y, width, height);

    FUNC5(graphics, -25, -40, MatrixOrderAppend);

    /* corners entirely outside, but some intersections */
    x = 0; width = 70;
    y = 0; height = 90;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    x = 0; width = 70;
    y = 0; height = 30;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    x = 0; width = 30;
    y = 0; height = 90;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    /* edge cases */
    x = 0; width = 10;
    y = 20; height = 40;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\n", x, y, width, height);

    x = 10; width = 30;
    y = 0; height = 20;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\n", x, y, width, height);

    x = 40; width = 10;
    y = 20; height = 40;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\n", x, y, width, height);

    x = 10; width = 30;
    y = 60; height = 10;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f, %.2f, %.2f) not to be visible\n", x, y, width, height);

    /* rounding tests */
    x = 0.4; width = 10.4;
    y = 20; height = 40;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    x = 10; width = 30;
    y = 0.4; height = 20.4;
    status = FUNC2(graphics, x, y, width, height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    /* integer version */
    x = 0; width = 30;
    y = 0; height = 90;
    status = FUNC3(graphics, (INT)x, (INT)y, (INT)width, (INT)height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    x = 12; width = 10;
    y = 22; height = 10;
    status = FUNC3(graphics, (INT)x, (INT)y, (INT)width, (INT)height, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f, %.2f, %.2f) to be visible\n", x, y, width, height);

    FUNC1(graphics);
    FUNC7(hwnd, hdc);
}