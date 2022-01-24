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
typedef  int UINT ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SW_RESTORE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_INTERVAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  s_bTracing ; 
 int s_nWM_ACTIVATE ; 
 int s_nWM_NCACTIVATE ; 
 int s_nWM_SYSCOMMAND ; 
 int s_nWM_WINDOWPOSCHANGING ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(HWND hwnd, UINT id)
{
    FUNC6(hwnd, id);
    switch (id)
    {
        //
        // SetActiveWindow(GetDesktopWindow());
        //
        case 0:
            FUNC8(FUNC3());
            FUNC7(FUNC3());
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == NULL, "GetActiveWindow() != NULL\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            s_nWM_SYSCOMMAND = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            FUNC12("CloseWindow(hwnd): tracing...\n");
            FUNC11(FUNC0(hwnd), "CloseWindow failed\n");
            break;
        case 1:
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            s_bTracing = FALSE;
            FUNC12("CloseWindow(hwnd): tracing done\n");
            FUNC11(s_nWM_SYSCOMMAND == 0, "WM_SYSCOMMAND: %d\n", s_nWM_SYSCOMMAND);
            FUNC11(s_nWM_NCACTIVATE == 1, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            FUNC11(s_nWM_WINDOWPOSCHANGING == 2, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            FUNC11(s_nWM_ACTIVATE == 1, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            FUNC10(hwnd, SW_RESTORE);
            break;
        //
        // SetActiveWindow(hwnd);
        //
        case 2:
            FUNC8(FUNC3());
            FUNC7(hwnd);
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == hwnd, "GetFocus() != hwnd\n");
            s_nWM_SYSCOMMAND = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            FUNC12("CloseWindow(hwnd): tracing...\n");
            FUNC11(FUNC0(hwnd), "CloseWindow failed\n");
            break;
        case 3:
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            s_bTracing = FALSE;
            FUNC12("CloseWindow(hwnd): tracing done\n");
            FUNC11(s_nWM_SYSCOMMAND == 0, "WM_SYSCOMMAND: %d\n", s_nWM_SYSCOMMAND);
            FUNC11(s_nWM_NCACTIVATE == 0, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            FUNC11(s_nWM_WINDOWPOSCHANGING == 1, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            FUNC11(s_nWM_ACTIVATE == 0, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            FUNC10(hwnd, SW_RESTORE);
            break;
        //
        // SetForegroundWindow(hwnd);
        //
        case 4:
            FUNC7(FUNC3());
            FUNC8(hwnd);
            FUNC11(FUNC5() == hwnd, "GetForegroundWindow() != hwnd\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == hwnd, "GetFocus() != hwnd\n");
            s_nWM_SYSCOMMAND = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            FUNC12("CloseWindow(hwnd): tracing...\n");
            FUNC11(FUNC0(hwnd), "CloseWindow failed\n");
            break;
        case 5:
            FUNC11(FUNC5() == hwnd, "GetForegroundWindow() != hwnd\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            s_bTracing = FALSE;
            FUNC12("CloseWindow(hwnd): tracing done\n");
            FUNC11(s_nWM_SYSCOMMAND == 0, "WM_SYSCOMMAND: %d\n", s_nWM_SYSCOMMAND);
            FUNC11(s_nWM_NCACTIVATE == 0, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            FUNC11(s_nWM_WINDOWPOSCHANGING == 1, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            FUNC11(s_nWM_ACTIVATE == 0, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            FUNC10(hwnd, SW_RESTORE);
            break;
        default: // finish
            FUNC1(hwnd);
            return;
    }
    FUNC9(hwnd, id + 1, TIMER_INTERVAL, NULL);
}