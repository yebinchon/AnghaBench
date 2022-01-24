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
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_INTERVAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  s_bTracing ; 
 int s_nWM_ACTIVATE ; 
 int s_nWM_NCACTIVATE ; 
 int s_nWM_SYSCOMMAND_NOT_SC_RESTORE ; 
 int s_nWM_SYSCOMMAND_SC_RESTORE ; 
 int s_nWM_WINDOWPOSCHANGING ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(HWND hwnd, UINT id)
{
    FUNC6(hwnd, id);
    switch (id)
    {
        //
        // SwitchToThisWindow(TRUE)
        //
        case 0: // minimize
            FUNC8(FUNC3());
            FUNC7(FUNC3());
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == NULL, "GetActiveWindow() != NULL\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            FUNC0(hwnd);  // minimize
            break;
        case 1: // start tracing
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            s_nWM_SYSCOMMAND_SC_RESTORE = 0;
            s_nWM_SYSCOMMAND_NOT_SC_RESTORE = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            FUNC10(hwnd, TRUE);
            FUNC12("SwitchToThisWindow(TRUE): tracing...\n");
            break;
        case 2: // tracing done
            s_bTracing = FALSE;
            FUNC12("SwitchToThisWindow(TRUE): tracing done\n");
            FUNC11(FUNC5() == hwnd, "GetForegroundWindow() != hwnd\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == hwnd, "GetFocus() != hwnd\n");
            FUNC11(s_nWM_SYSCOMMAND_SC_RESTORE == 1, "WM_SYSCOMMAND SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_SC_RESTORE);
            FUNC11(!s_nWM_SYSCOMMAND_NOT_SC_RESTORE, "WM_SYSCOMMAND non-SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_NOT_SC_RESTORE);
            FUNC11(s_nWM_NCACTIVATE == 1, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            FUNC11(s_nWM_WINDOWPOSCHANGING == 2, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            FUNC11(s_nWM_ACTIVATE == 1, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            break;
        //
        // SwitchToThisWindow(FALSE)
        //
        case 3: // minimize
            FUNC8(FUNC3());
            FUNC7(FUNC3());
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == NULL, "GetActiveWindow() != NULL\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            FUNC0(hwnd);  // minimize
            break;
        case 4: // start tracing
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            s_nWM_SYSCOMMAND_SC_RESTORE = 0;
            s_nWM_SYSCOMMAND_NOT_SC_RESTORE = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            FUNC10(hwnd, FALSE);
            FUNC12("SwitchToThisWindow(FALSE): tracing...\n");
            break;
        case 5: // tracing done
            s_bTracing = FALSE;
            FUNC12("SwitchToThisWindow(FALSE): tracing done\n");
            FUNC11(FUNC5() == NULL, "GetForegroundWindow() != NULL\n");
            FUNC11(FUNC2() == hwnd, "GetActiveWindow() != hwnd\n");
            FUNC11(FUNC4() == NULL, "GetFocus() != NULL\n");
            FUNC11(!s_nWM_SYSCOMMAND_SC_RESTORE, "WM_SYSCOMMAND SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_SC_RESTORE);
            FUNC11(!s_nWM_SYSCOMMAND_NOT_SC_RESTORE, "WM_SYSCOMMAND non-SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_NOT_SC_RESTORE);
            FUNC11(!s_nWM_NCACTIVATE, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            FUNC11(!s_nWM_WINDOWPOSCHANGING, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            FUNC11(!s_nWM_ACTIVATE, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            break;
        default: // finish
            FUNC1(hwnd);
            return;
    }
    FUNC9(hwnd, id + 1, TIMER_INTERVAL, NULL);
}