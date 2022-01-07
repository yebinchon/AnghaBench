
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
 int DestroyWindow (int ) ;
 int FALSE ;
 int GetDesktopWindow () ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int HEIGHT ;
 int IsWindowVisible (int ) ;
 int SW_HIDE ;
 int SW_SHOWNORMAL ;
 int SetForegroundWindow (int ) ;
 int ShowWindow (int ,int ) ;
 int WIDTH ;
 int ok (int,char*,int ,void*) ;
 int ok_int (int ,int ) ;
 int ok_long (scalar_t__,int ) ;
 int s_iStep ;

__attribute__((used)) static void DoAction(HWND hwnd, INT iAction, WPARAM wParam, LPARAM lParam)
{
    RECT rc;
    switch (iAction)
    {
        case 128:

            break;
        case 136:
            GetWindowRect(hwnd, &rc);
            ok_long(rc.right - rc.left, 0);
            ok_long(rc.bottom - rc.top, 0);
            ok_int(IsWindowVisible(hwnd), FALSE);
            break;
        case 130:
            GetWindowRect(hwnd, &rc);
            ok_long(rc.right - rc.left, WIDTH);
            ok_long(rc.bottom - rc.top, HEIGHT);
            ok_int(IsWindowVisible(hwnd), FALSE);
            break;
        case 129:
            ShowWindow(hwnd, SW_SHOWNORMAL);
            break;
        case 131:
            ok(wParam == 1, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            ok(lParam == 0xC000000F, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case 133:
            ok(wParam == 2, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            ok(lParam == 0, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case 137:
            DestroyWindow(hwnd);
            break;
        case 132:
            ok(wParam == 0, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            ok(lParam == 0xC000000F, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case 134:
            ok(wParam == 1, "Step %d: wParam was %p\n", s_iStep, (void *)wParam);
            ok(lParam == 0, "Step %d: lParam was %p\n", s_iStep, (void *)lParam);
            break;
        case 135:
            ShowWindow(hwnd, SW_HIDE);
            break;
        case 138:
            SetForegroundWindow(GetDesktopWindow());
            break;
        case 139:
            SetForegroundWindow(hwnd);
            break;
    }
}
