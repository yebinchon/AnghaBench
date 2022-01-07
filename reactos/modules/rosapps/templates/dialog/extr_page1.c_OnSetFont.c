
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {int flags; scalar_t__ cy; scalar_t__ cx; int hwnd; } ;
typedef TYPE_1__ WINDOWPOS ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_2__ RECT ;
typedef int LPARAM ;
typedef int HWND ;


 int GetWindowRect (int ,TYPE_2__*) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOOWNERZORDER ;
 int SWP_NOZORDER ;
 int SendMessage (int ,int ,int ,int ) ;
 int WM_WINDOWPOSCHANGED ;

void OnSetFont(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
 RECT rc;
 WINDOWPOS wp;

 GetWindowRect(hWnd, &rc);
 wp.hwnd = hWnd;
 wp.cx = rc.right - rc.left;
 wp.cy = rc.bottom - rc.top;
 wp.flags = SWP_NOACTIVATE | SWP_NOMOVE | SWP_NOOWNERZORDER | SWP_NOZORDER;
 SendMessage(hWnd, WM_WINDOWPOSCHANGED, 0, (LPARAM)&wp);
}
