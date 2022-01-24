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
typedef  int /*<<< orphan*/  GpMatrix ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (double,double,double,double,double,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void)
{
    GpStatus status;
    GpRegion *region;
    GpGraphics *graphics = NULL;
    GpMatrix *m;
    HDC hdc = FUNC8(0);
    BOOL res;

    status = FUNC0(hdc, &graphics);
    FUNC10(Ok, status);
    status = FUNC2(&region);
    FUNC10(Ok, status);

    FUNC1(3.0, 0.0, 0.0, 1.0, 20.0, 30.0, &m);

    /* NULL arguments */
    status = FUNC6(NULL, NULL, NULL);
    FUNC10(InvalidParameter, status);
    status = FUNC6(region, NULL, NULL);
    FUNC10(InvalidParameter, status);
    status = FUNC6(NULL, graphics, NULL);
    FUNC10(InvalidParameter, status);
    status = FUNC6(NULL, NULL, &res);
    FUNC10(InvalidParameter, status);
    status = FUNC6(region, NULL, &res);
    FUNC10(InvalidParameter, status);

    res = FALSE;
    status = FUNC6(region, graphics, &res);
    FUNC10(Ok, status);
    FUNC10(TRUE, res);

    /* after world transform */
    status = FUNC7(graphics, m);
    FUNC10(Ok, status);

    res = FALSE;
    status = FUNC6(region, graphics, &res);
    FUNC10(Ok, status);
    FUNC10(TRUE, res);

    FUNC4(m);
    FUNC5(region);
    FUNC3(graphics);
    FUNC9(0, hdc);
}