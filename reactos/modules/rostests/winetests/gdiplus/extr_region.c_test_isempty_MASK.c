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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpStatus status;
    GpRegion *region;
    GpGraphics *graphics = NULL;
    HDC hdc = FUNC6(0);
    BOOL res;

    status = FUNC0(hdc, &graphics);
    FUNC8(Ok, status);
    status = FUNC1(&region);
    FUNC8(Ok, status);

    /* NULL arguments */
    status = FUNC4(NULL, NULL, NULL);
    FUNC8(InvalidParameter, status);
    status = FUNC4(region, NULL, NULL);
    FUNC8(InvalidParameter, status);
    status = FUNC4(NULL, graphics, NULL);
    FUNC8(InvalidParameter, status);
    status = FUNC4(NULL, NULL, &res);
    FUNC8(InvalidParameter, status);
    status = FUNC4(region, NULL, &res);
    FUNC8(InvalidParameter, status);

    /* default is infinite */
    res = TRUE;
    status = FUNC4(region, graphics, &res);
    FUNC8(Ok, status);
    FUNC8(FALSE, res);

    status = FUNC5(region);
    FUNC8(Ok, status);

    res = FALSE;
    status = FUNC4(region, graphics, &res);
    FUNC8(Ok, status);
    FUNC8(TRUE, res);

    FUNC3(region);
    FUNC2(graphics);
    FUNC7(0, hdc);
}