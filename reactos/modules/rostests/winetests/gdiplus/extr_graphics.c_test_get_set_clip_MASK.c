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
struct TYPE_3__ {double X; double Y; double Height; double Width; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  TYPE_1__ GpRectF ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC14(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC11( hwnd );
    GpRegion *clip;
    GpRectF rect;
    BOOL res;

    status = FUNC0(hdc, &graphics);
    FUNC13(Ok, status);

    rect.X = rect.Y = 0.0;
    rect.Height = rect.Width = 100.0;

    status = FUNC1(&rect, &clip);
    FUNC13(Ok, status);

    /* NULL arguments */
    status = FUNC4(NULL, NULL);
    FUNC13(InvalidParameter, status);
    status = FUNC4(graphics, NULL);
    FUNC13(InvalidParameter, status);
    status = FUNC4(NULL, clip);
    FUNC13(InvalidParameter, status);

    status = FUNC9(NULL, NULL, CombineModeReplace);
    FUNC13(InvalidParameter, status);
    status = FUNC9(graphics, NULL, CombineModeReplace);
    FUNC13(InvalidParameter, status);

    status = FUNC8(NULL, NULL, CombineModeReplace);
    FUNC13(InvalidParameter, status);
    status = FUNC8(graphics, NULL, CombineModeReplace);
    FUNC13(InvalidParameter, status);

    res = FALSE;
    status = FUNC4(graphics, clip);
    FUNC13(Ok, status);
    status = FUNC6(clip, graphics, &res);
    FUNC13(Ok, status);
    FUNC13(TRUE, res);

    /* remains infinite after reset */
    res = FALSE;
    status = FUNC7(graphics);
    FUNC13(Ok, status);
    status = FUNC4(graphics, clip);
    FUNC13(Ok, status);
    status = FUNC6(clip, graphics, &res);
    FUNC13(Ok, status);
    FUNC13(TRUE, res);

    /* set to empty and then reset to infinite */
    status = FUNC10(clip);
    FUNC13(Ok, status);
    status = FUNC9(graphics, clip, CombineModeReplace);
    FUNC13(Ok, status);

    status = FUNC4(graphics, clip);
    FUNC13(Ok, status);
    res = FALSE;
    status = FUNC5(clip, graphics, &res);
    FUNC13(Ok, status);
    FUNC13(TRUE, res);
    status = FUNC7(graphics);
    FUNC13(Ok, status);
    status = FUNC4(graphics, clip);
    FUNC13(Ok, status);
    res = FALSE;
    status = FUNC6(clip, graphics, &res);
    FUNC13(Ok, status);
    FUNC13(TRUE, res);

    FUNC3(clip);

    FUNC2(graphics);
    FUNC12(hwnd, hdc);
}