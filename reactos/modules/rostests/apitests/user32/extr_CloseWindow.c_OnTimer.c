
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
 int * GetDesktopWindow () ;
 int * GetFocus () ;
 int * GetForegroundWindow () ;
 int KillTimer (int *,int) ;
 int SW_RESTORE ;
 int SetActiveWindow (int *) ;
 int SetForegroundWindow (int *) ;
 int SetTimer (int *,int,int ,int *) ;
 int ShowWindow (int *,int ) ;
 int TIMER_INTERVAL ;
 int TRUE ;
 int ok (int,char*,...) ;
 int s_bTracing ;
 int s_nWM_ACTIVATE ;
 int s_nWM_NCACTIVATE ;
 int s_nWM_SYSCOMMAND ;
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
            s_nWM_SYSCOMMAND = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            trace("CloseWindow(hwnd): tracing...\n");
            ok(CloseWindow(hwnd), "CloseWindow failed\n");
            break;
        case 1:
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            s_bTracing = FALSE;
            trace("CloseWindow(hwnd): tracing done\n");
            ok(s_nWM_SYSCOMMAND == 0, "WM_SYSCOMMAND: %d\n", s_nWM_SYSCOMMAND);
            ok(s_nWM_NCACTIVATE == 1, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            ok(s_nWM_WINDOWPOSCHANGING == 2, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            ok(s_nWM_ACTIVATE == 1, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            ShowWindow(hwnd, SW_RESTORE);
            break;



        case 2:
            SetForegroundWindow(GetDesktopWindow());
            SetActiveWindow(hwnd);
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == hwnd, "GetFocus() != hwnd\n");
            s_nWM_SYSCOMMAND = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            trace("CloseWindow(hwnd): tracing...\n");
            ok(CloseWindow(hwnd), "CloseWindow failed\n");
            break;
        case 3:
            ok(GetForegroundWindow() == ((void*)0), "GetForegroundWindow() != NULL\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            s_bTracing = FALSE;
            trace("CloseWindow(hwnd): tracing done\n");
            ok(s_nWM_SYSCOMMAND == 0, "WM_SYSCOMMAND: %d\n", s_nWM_SYSCOMMAND);
            ok(s_nWM_NCACTIVATE == 0, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            ok(s_nWM_WINDOWPOSCHANGING == 1, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            ok(s_nWM_ACTIVATE == 0, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            ShowWindow(hwnd, SW_RESTORE);
            break;



        case 4:
            SetActiveWindow(GetDesktopWindow());
            SetForegroundWindow(hwnd);
            ok(GetForegroundWindow() == hwnd, "GetForegroundWindow() != hwnd\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == hwnd, "GetFocus() != hwnd\n");
            s_nWM_SYSCOMMAND = 0;
            s_nWM_NCACTIVATE = 0;
            s_nWM_WINDOWPOSCHANGING = 0;
            s_nWM_ACTIVATE = 0;
            s_bTracing = TRUE;
            trace("CloseWindow(hwnd): tracing...\n");
            ok(CloseWindow(hwnd), "CloseWindow failed\n");
            break;
        case 5:
            ok(GetForegroundWindow() == hwnd, "GetForegroundWindow() != hwnd\n");
            ok(GetActiveWindow() == hwnd, "GetActiveWindow() != hwnd\n");
            ok(GetFocus() == ((void*)0), "GetFocus() != NULL\n");
            s_bTracing = FALSE;
            trace("CloseWindow(hwnd): tracing done\n");
            ok(s_nWM_SYSCOMMAND == 0, "WM_SYSCOMMAND: %d\n", s_nWM_SYSCOMMAND);
            ok(s_nWM_NCACTIVATE == 0, "WM_NCACTIVATE: %d\n", s_nWM_NCACTIVATE);
            ok(s_nWM_WINDOWPOSCHANGING == 1, "WM_WINDOWPOSCHANGING: %d\n", s_nWM_WINDOWPOSCHANGING);
            ok(s_nWM_ACTIVATE == 0, "WM_ACTIVATE: %d\n", s_nWM_ACTIVATE);
            ShowWindow(hwnd, SW_RESTORE);
            break;
        default:
            DestroyWindow(hwnd);
            return;
    }
    SetTimer(hwnd, id + 1, TIMER_INTERVAL, ((void*)0));
}
