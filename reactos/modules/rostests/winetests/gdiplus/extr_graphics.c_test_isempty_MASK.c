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
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpRegion ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC8(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC5( hwnd );
    GpRegion *clip;
    BOOL res;

    status = FUNC0(hdc, &graphics);
    FUNC7(Ok, status);

    status = FUNC1(&clip);
    FUNC7(Ok, status);

    /* NULL */
    status = FUNC4(NULL, NULL);
    FUNC7(InvalidParameter, status);
    status = FUNC4(graphics, NULL);
    FUNC7(InvalidParameter, status);
    status = FUNC4(NULL, &res);
    FUNC7(InvalidParameter, status);

    /* default is infinite */
    res = TRUE;
    status = FUNC4(graphics, &res);
    FUNC7(Ok, status);
    FUNC7(FALSE, res);

    FUNC3(clip);

    FUNC2(graphics);
    FUNC6(hwnd, hdc);
}