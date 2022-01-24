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
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  OutOfMemory ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 

__attribute__((used)) static void FUNC7(void)
{
    GpStatus stat;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC4( hwnd );

    stat = FUNC0(NULL, &graphics);
    FUNC6(OutOfMemory, stat);
    stat = FUNC3(graphics);
    FUNC6(InvalidParameter, stat);

    stat = FUNC0(hdc, &graphics);
    FUNC6(Ok, stat);
    stat = FUNC3(graphics);
    FUNC6(Ok, stat);

    stat = FUNC1(NULL, &graphics);
    FUNC6(Ok, stat);
    stat = FUNC3(graphics);
    FUNC6(Ok, stat);

    stat = FUNC2(NULL, &graphics);
    FUNC6(Ok, stat);
    stat = FUNC3(graphics);
    FUNC6(Ok, stat);

    stat = FUNC3(NULL);
    FUNC6(InvalidParameter, stat);
    FUNC5(hwnd, hdc);
}