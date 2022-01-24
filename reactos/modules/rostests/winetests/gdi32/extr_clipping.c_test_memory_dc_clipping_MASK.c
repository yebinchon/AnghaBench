#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ left; scalar_t__ top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  RGN_COPY ; 
 int /*<<< orphan*/  RGN_DIFF ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13(void)
{
    HDC hdc;
    HRGN hrgn, hrgn_empty;
    HBITMAP hbmp;
    RECT rc;
    int ret;

    hdc = FUNC1(0);
    hrgn_empty = FUNC2(0, 0, 0, 0);
    hrgn = FUNC2(0, 0, 0, 0);
    hbmp = FUNC0(hdc, 100, 100);

    ret = FUNC6(hdc, hrgn);
    FUNC11(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC5(hdc, hrgn_empty, RGN_DIFF);
    FUNC11(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);

    ret = FUNC6(hdc, hrgn);
    FUNC11(ret == 1, "expected 1, got %d\n", ret);

    ret = FUNC7(hrgn, &rc);
    FUNC11(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    FUNC11(rc.left == 0 && rc.top == 0 && rc.right == 1 && rc.bottom == 1,
       "expected 0,0-1,1, got %s\n", FUNC12(&rc));

    ret = FUNC5(hdc, 0, RGN_COPY);
    FUNC11(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);

    ret = FUNC6(hdc, hrgn);
    FUNC11(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC5(hdc, 0, RGN_DIFF);
    FUNC11(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC6(hdc, hrgn);
    FUNC11(ret == 0, "expected 0, got %d\n", ret);

    FUNC9(hdc, hbmp);

    ret = FUNC5(hdc, hrgn_empty, RGN_DIFF);
    FUNC11(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);

    ret = FUNC6(hdc, hrgn);
    FUNC11(ret == 1, "expected 1, got %d\n", ret);

    ret = FUNC7(hrgn, &rc);
    FUNC11(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    FUNC11(rc.left == 0 && rc.top == 0 && rc.right == 100 && rc.bottom == 100,
       "expected 0,0-100,100, got %s\n", FUNC12(&rc));

    FUNC10( &rc, 10, 10, 20, 20 );
    ret = FUNC8( hdc, &rc );
    FUNC11(ret, "RectVisible failed for %s\n", FUNC12(&rc));

    FUNC10( &rc, 20, 20, 10, 10 );
    ret = FUNC8( hdc, &rc );
    FUNC11(ret, "RectVisible failed for %s\n", FUNC12(&rc));

    ret = FUNC5(hdc, 0, RGN_DIFF);
    FUNC11(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC6(hdc, hrgn);
    FUNC11(ret == 1, "expected 1, got %d\n", ret);

    ret = FUNC7(hrgn, &rc);
    FUNC11(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    FUNC11(rc.left == 0 && rc.top == 0 && rc.right == 100 && rc.bottom == 100,
       "expected 0,0-100,100, got %s\n", FUNC12(&rc));

    FUNC3(hdc);
    FUNC4(hrgn);
    FUNC4(hrgn_empty);
    FUNC4(hbmp);
}