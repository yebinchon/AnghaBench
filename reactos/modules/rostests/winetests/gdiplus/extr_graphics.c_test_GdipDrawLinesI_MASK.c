#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int X; int Y; } ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpPointF ;
typedef  TYPE_1__ GpPoint ;
typedef  int /*<<< orphan*/  GpPen ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    GpPen *pen = NULL;
    GpPoint *ptf = NULL;
    HDC hdc = FUNC7( hwnd );

    /* make a graphics object and pen object */
    FUNC10(hdc != NULL, "Expected HDC to be initialized\n");

    status = FUNC1(hdc, &graphics);
    FUNC9(Ok, status);
    FUNC10(graphics != NULL, "Expected graphics to be initialized\n");

    status = FUNC2((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    FUNC9(Ok, status);
    FUNC10(pen != NULL, "Expected pen to be initialized\n");

    /* make some arbitrary valid points*/
    ptf = FUNC0(2 * sizeof(GpPointF));

    ptf[0].X = 1;
    ptf[0].Y = 1;

    ptf[1].X = 2;
    ptf[1].Y = 2;

    /* InvalidParameter cases: null graphics, null pen, null points, count < 2*/
    status = FUNC5(NULL, NULL, NULL, 0);
    FUNC9(InvalidParameter, status);

    status = FUNC5(graphics, pen, ptf, 0);
    FUNC9(InvalidParameter, status);

    status = FUNC5(graphics, NULL, ptf, 2);
    FUNC9(InvalidParameter, status);

    status = FUNC5(NULL, pen, ptf, 2);
    FUNC9(InvalidParameter, status);

    /* successful case */
    status = FUNC5(graphics, pen, ptf, 2);
    FUNC9(Ok, status);

    FUNC6(ptf);
    FUNC4(pen);
    FUNC3(graphics);

    FUNC8(hwnd, hdc);
}