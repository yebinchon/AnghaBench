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
typedef  int /*<<< orphan*/  rc ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TestProc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int WS_CHILD ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  draw_parent_chain ; 
 int /*<<< orphan*/  empty_chain ; 
 int /*<<< orphan*/ * hWnd1 ; 
 int /*<<< orphan*/ * hWnd2 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

void FUNC11()
{
    HDC hdc;
    RECT rc;

    FUNC6(TestProc, L"testClass");

    hWnd1 = FUNC1(L"testClass", L"Test parent", WS_OVERLAPPEDWINDOW | WS_VISIBLE, 100, 100, 200, 200, 0, NULL, NULL, NULL);
    FUNC10 (hWnd1 != NULL, "Expected CreateWindowW to succeed\n");

    hWnd2 = FUNC1(L"testClass", L"test window", WS_CHILD | WS_VISIBLE, 0, 0, 100, 100, hWnd1, NULL, NULL, NULL);
    FUNC10 (hWnd2 != NULL, "Expected CreateWindowW to succeed\n");

    FUNC4();
    FUNC3();

    hdc = FUNC5(hWnd1);

    FUNC2(hWnd2, hdc, NULL);
    FUNC4();
    FUNC0(draw_parent_chain);

    FUNC2(hWnd1, hdc, NULL);
    FUNC4();
    FUNC0(empty_chain);

    FUNC7(hWnd1, SW_SHOW);
    FUNC8(hWnd1);
    FUNC7(hWnd2, SW_SHOW);
    FUNC8(hWnd2);

    FUNC4();
    FUNC3();

    FUNC2(hWnd2, NULL, NULL);
    FUNC4();
    FUNC0(empty_chain);

    FUNC2(hWnd1, NULL, NULL);
    FUNC4();
    FUNC0(empty_chain);

    FUNC2(hWnd2, hdc, NULL);
    FUNC4();
    FUNC0(draw_parent_chain);

    FUNC2(hWnd1, hdc, NULL);
    FUNC4();
    FUNC0(empty_chain);
    
    FUNC9(&rc, 0, sizeof(rc));
    
    FUNC2(hWnd2, hdc, &rc);
    FUNC4();
    FUNC0(draw_parent_chain);

    FUNC2(hWnd1, hdc, &rc);
    FUNC4();
    FUNC0(empty_chain);
}