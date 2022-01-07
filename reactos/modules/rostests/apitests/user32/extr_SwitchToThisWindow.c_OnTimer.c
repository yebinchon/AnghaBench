
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * HWND ;


 int CloseWindow (int *) ;
 int DestroyWindow (int *) ;
 int FALSE ;
 int * GetActiveWindow () ;
 int GetDesktopWindow () ;
 int * GetFocus () ;
 int * GetForegroundWindow () ;
 int KillTimer (int *,int) ;
 int SetActiveWindow (int ) ;
 int SetForegroundWindow (int ) ;
 int SetTimer (int *,int,int ,int *) ;
 int SwitchToThisWindow (int *,int ) ;
 int TIMER_INTERVAL ;
 int TRUE ;
 int ok (int,char*,...) ;
 int s_bTracing ;
 int s_nWM_ACTIVATE ;
 int s_nWM_NCACTIVATE ;
 int s_nWM_SYSCOMMAND_NOT_SC_RESTORE ;
 int s_nWM_SYSCOMMAND_SC_RESTORE ;
 int s_nWM_WINDOWPOSCHANGING ;
 int trace (char*) ;

__attribute__((used)) static void
OnTimer(HWND hwnd, UINT id)
{
    KillTimer(hwnd, id);
    switch (id)
    {



        case 0:
            SetForegroundWindow(GetDesktopWindow());
            SetActiveWindow(GetDesktopWindow());
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == ((void*)0), "GetActiveWindow() != NULL\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            CloseWindow(hwnd);
            break;
        case 1:
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            s_nWM_SYSCOMMAND_SC_RESTORE = 0;
            s_nWM_SYSCOMMAND_NOT_SC_RESTORE = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            SwitchToThisWindow(hwnd, TRUE);
            trace("SwitchToThisWindow(TRUE): tracing...\n");
            break;
        case 2:
            s_bTracing = FALSE;
            trace("SwitchToThisWindow(TRUE): tracing done\n");
            ok(GetForegroundWindow() == hwnd, "GetForegroundWindow() != hwnd\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == hwnd, "GetFocus() != hwnd\n");
            ok(s_nWM_SYSCOMMAND_SC_RESTORE == 1, "WM_SYSCOMMAND SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_SC_RESTORE);
            ok(!s_nWM_SYSCOMMAND_NOT_SC_RESTORE, "WM_SYSCOMMAND non-SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_NOT_SC_RESTORE);
            ok(s_nWM_NCACTIVATE == 1, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            ok(s_nWM_WINDOWPOSCHANGING == 2, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            ok(s_nWM_ACTIVATE == 1, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            break;



        case 3:
            SetForegroundWindow(GetDesktopWindow());
            SetActiveWindow(GetDesktopWindow());
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == ((void*)0), "GetActiveWindow() != NULL\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            CloseWindow(hwnd);
            break;
        case 4:
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            s_nWM_SYSCOMMAND_SC_RESTORE = 0;
            s_nWM_SYSCOMMAND_NOT_SC_RESTORE = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            SwitchToThisWindow(hwnd, FALSE);
            trace("SwitchToThisWindow(FALSE): tracing...\n");
            break;
        case 5:
            s_bTracing = FALSE;
            trace("SwitchToThisWindow(FALSE): tracing done\n");
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            ok(!s_nWM_SYSCOMMAND_SC_RESTORE, "WM_SYSCOMMAND SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_SC_RESTORE);
            ok(!s_nWM_SYSCOMMAND_NOT_SC_RESTORE, "WM_SYSCOMMAND non-SC_RESTORE: %d\n", s_nWM_SYSCOMMAND_NOT_SC_RESTORE);
            ok(!s_nWM_NCACTIVATE, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            ok(!s_nWM_WINDOWPOSCHANGING, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            ok(!s_nWM_ACTIVATE, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            break;
        default:
            DestroyWindow(hwnd);
            return;
    }
    SetTimer(hwnd, id + 1, TIMER_INTERVAL, ((void*)0));
}
