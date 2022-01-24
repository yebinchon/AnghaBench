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
struct TYPE_3__ {int x; int y; } ;
typedef  TYPE_1__ POINT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int ERROR_CAN_NOT_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 

__attribute__((used)) static void FUNC14(void)
{
    HDC hdc = FUNC4(0);
    HPEN greenPen, narrowPen;
    POINT pnt[6];
    INT nSize;
    BOOL ret;

    /* Create a pen to be used in WidenPath */
    greenPen = FUNC2(PS_SOLID, 10, FUNC8(0,0,0));
    FUNC10(hdc, greenPen);

    /* Prepare a path */
    pnt[0].x = 100;
    pnt[0].y = 0;
    pnt[1].x = 200;
    pnt[1].y = 0;
    pnt[2].x = 300;
    pnt[2].y = 100;
    pnt[3].x = 300;
    pnt[3].y = 200;
    pnt[4].x = 200;
    pnt[4].y = 300;
    pnt[5].x = 100;
    pnt[5].y = 300;

    /* Set a polyline path */
    FUNC1(hdc);
    FUNC7(hdc, pnt, 6);
    FUNC3(hdc);

    /* Widen the polyline path */
    FUNC13(FUNC12(hdc), "WidenPath fails while widening a poyline path.\n");

    /* Test if WidenPath seems to have done his job */
    nSize = FUNC6(hdc, NULL, NULL, 0);
    FUNC13(nSize != -1, "GetPath fails after calling WidenPath.\n");
    FUNC13(nSize > 6, "Path number of points is too low. Should be more than 6 but is %d\n", nSize);

    FUNC0(hdc);

    /* Test WidenPath with an open path (last error only set on Win2k and later) */
    FUNC11(0xdeadbeef);
    FUNC1(hdc);
    ret = FUNC12(hdc);
    FUNC13(ret == FALSE && (FUNC5() == ERROR_CAN_NOT_COMPLETE || FUNC5() == 0xdeadbeef),
       "WidenPath fails while widening an open path. Return value is %d, should be %d. Error is %u\n", ret, FALSE, FUNC5());

    FUNC0(hdc);

    /* Test when the pen width is equal to 1. The path should change too */
    narrowPen = FUNC2(PS_SOLID, 1, FUNC8(0,0,0));
    FUNC10(hdc, narrowPen);
    FUNC1(hdc);
    FUNC7(hdc, pnt, 6);
    FUNC3(hdc);
    ret = FUNC12(hdc);
    FUNC13(ret == TRUE, "WidenPath failed: %d\n", FUNC5());
    nSize = FUNC6(hdc, NULL, NULL, 0);
    FUNC13(nSize > 6, "WidenPath should compute a widened path with a 1px wide pen. Path length is %d, should be more than 6\n", nSize);

    FUNC9(0, hdc);
    return;
}