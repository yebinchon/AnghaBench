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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,double,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
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
    REAL x, y;
    BOOL val;

    FUNC9(hdc != NULL, "Expected HDC to be initialized\n");

    status = FUNC0(hdc, &graphics);
    FUNC8(Ok, status);
    FUNC9(graphics != NULL, "Expected graphics to be initialized\n");

    /* null parameters */
    status = FUNC2(NULL, 0, 0, &val);
    FUNC8(InvalidParameter, status);

    status = FUNC2(graphics, 0, 0, NULL);
    FUNC8(InvalidParameter, status);

    status = FUNC3(NULL, 0, 0, &val);
    FUNC8(InvalidParameter, status);

    status = FUNC3(graphics, 0, 0, NULL);
    FUNC8(InvalidParameter, status);

    x = 0;
    y = 0;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f) to be visible\n", x, y);

    x = -10;
    y = 0;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 0;
    y = -5;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 1;
    y = 1;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f) to be visible\n", x, y);

    status = FUNC4(graphics, 10, 20, 30, 40, CombineModeReplace);
    FUNC8(Ok, status);

    x = 1;
    y = 1;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 15.5;
    y = 40.5;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "After clipping, expected (%.2f, %.2f) to be visible\n", x, y);

    /* translate into the center of the rect */
    FUNC5(graphics, 25, 40, MatrixOrderAppend);

    x = 0;
    y = 0;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "Expected (%.2f, %.2f) to be visible\n", x, y);

    x = 25;
    y = 40;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "Expected (%.2f, %.2f) not to be visible\n", x, y);

    FUNC5(graphics, -25, -40, MatrixOrderAppend);

    /* corner cases */
    x = 9;
    y = 19;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 9.25;
    y = 19.25;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 9.5;
    y = 19.5;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "After clipping, expected (%.2f, %.2f) to be visible\n", x, y);

    x = 9.75;
    y = 19.75;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "After clipping, expected (%.2f, %.2f) to be visible\n", x, y);

    x = 10;
    y = 20;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "After clipping, expected (%.2f, %.2f) to be visible\n", x, y);

    x = 40;
    y = 20;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 39;
    y = 59;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "After clipping, expected (%.2f, %.2f) to be visible\n", x, y);

    x = 39.25;
    y = 59.25;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "After clipping, expected (%.2f, %.2f) to be visible\n", x, y);

    x = 39.5;
    y = 39.5;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 39.75;
    y = 59.75;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 40;
    y = 60;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 40.15;
    y = 60.15;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    x = 10;
    y = 60;
    status = FUNC2(graphics, x, y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    /* integer version */
    x = 25;
    y = 30;
    status = FUNC3(graphics, (INT)x, (INT)y, &val);
    FUNC8(Ok, status);
    FUNC9(val == TRUE, "After clipping, expected (%.2f, %.2f) to be visible\n", x, y);

    x = 50;
    y = 100;
    status = FUNC3(graphics, (INT)x, (INT)y, &val);
    FUNC8(Ok, status);
    FUNC9(val == FALSE, "After clipping, expected (%.2f, %.2f) not to be visible\n", x, y);

    FUNC1(graphics);
    FUNC7(hwnd, hdc);
}