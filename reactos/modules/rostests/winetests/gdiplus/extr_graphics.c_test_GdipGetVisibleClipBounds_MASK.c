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
typedef  int /*<<< orphan*/  GpRectF ;
typedef  int /*<<< orphan*/  GpRect ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
    GpGraphics* graphics = NULL;
    GpRectF rectf;
    GpRect rect;
    HDC hdc = FUNC4( hwnd );
    GpStatus status;

    status = FUNC0(hdc, &graphics);
    FUNC6(Ok, status);
    FUNC7(graphics != NULL, "Expected graphics to be initialized\n");

    /* test null parameters */
    status = FUNC2(graphics, NULL);
    FUNC6(InvalidParameter, status);

    status = FUNC2(NULL, &rectf);
    FUNC6(InvalidParameter, status);

    status = FUNC3(graphics, NULL);
    FUNC6(InvalidParameter, status);

    status = FUNC3(NULL, &rect);
    FUNC6(InvalidParameter, status);

    FUNC1(graphics);
    FUNC5(hwnd, hdc);

    FUNC8();
    FUNC9();
}