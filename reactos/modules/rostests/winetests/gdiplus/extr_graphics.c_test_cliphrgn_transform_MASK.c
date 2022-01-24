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
struct TYPE_3__ {int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ RectF ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC12(void)
{
    HDC hdc;
    GpStatus status;
    GpGraphics *graphics;
    HRGN rgn;
    RectF rectf;
    BOOL res;

    hdc = FUNC7(hwnd);

    FUNC9(hdc, 10, 10, NULL);

    status = FUNC2(hdc, &graphics);
    FUNC10(Ok, status);

    rgn = FUNC0(0, 0, 100, 100);

    status = FUNC6(graphics, rgn, CombineModeReplace);
    FUNC10(Ok, status);

    status = FUNC4(graphics, &rectf);
    FUNC10(Ok, status);
    FUNC11(-10.0, rectf.X);
    FUNC11(-10.0, rectf.Y);
    FUNC11(100.0, rectf.Width);
    FUNC11(100.0, rectf.Height);

    status = FUNC5(graphics, 95, 95, &res);
    FUNC10(Ok, status);
    FUNC10(FALSE, res);

    status = FUNC5(graphics, -5, -5, &res);
    FUNC10(Ok, status);
    FUNC10(TRUE, res);

    FUNC1(rgn);

    FUNC3(graphics);

    FUNC9(hdc, 0, 0, NULL);

    FUNC8(hwnd, hdc);
}