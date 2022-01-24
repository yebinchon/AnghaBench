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
struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  TYPE_1__ GpRectF ;
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
    GpBrush *brush = NULL;
    HDC hdc = FUNC5( hwnd );
    GpRectF rects[2] = {{0,0,10,10}, {10,10,10,10}};

    FUNC8(hdc != NULL, "Expected HDC to be initialized\n");

    status = FUNC0(hdc, &graphics);
    FUNC7(Ok, status);
    FUNC8(graphics != NULL, "Expected graphics to be initialized\n");

    status = FUNC1((ARGB)0xffff00ff, (GpSolidFill**)&brush);
    FUNC7(Ok, status);
    FUNC8(brush != NULL, "Expected brush to be initialized\n");

    status = FUNC4(NULL, brush, rects, 2);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, NULL, rects, 2);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, brush, NULL, 2);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, brush, rects, 0);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, brush, rects, -1);
    FUNC7(InvalidParameter, status);

    status = FUNC4(graphics, brush, rects, 1);
    FUNC7(Ok, status);

    status = FUNC4(graphics, brush, rects, 2);
    FUNC7(Ok, status);

    FUNC2(brush);
    FUNC3(graphics);

    FUNC6(hwnd, hdc);
}