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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC6(void)
{
    GpStatus status;
    HDC hdc = FUNC3( hwnd );
    GpGraphics *graphics;
    UINT contrast;

    status = FUNC2(NULL, NULL);
    FUNC5(InvalidParameter, status);

    status = FUNC0(hdc, &graphics);
    FUNC5(Ok, status);

    status = FUNC2(graphics, NULL);
    FUNC5(InvalidParameter, status);
    status = FUNC2(graphics, &contrast);
    FUNC5(Ok, status);
    FUNC5(4, contrast);

    FUNC1(graphics);
    FUNC4(hwnd, hdc);
}