
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef int LONG ;
typedef int * HWND ;


 int GWL_STYLE ;
 int * GetDesktopWindow () ;
 int * GetParent (int *) ;
 int GetWindowLongPtr (int *,int ) ;
 int GetWindowRect (int *,TYPE_1__*) ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetForegroundWindow (int *) ;
 int SetWindowPos (int *,int *,int,int,int ,int ,int) ;
 int WS_CHILD ;

VOID CentreWindow(
    HWND hwnd)
{
    RECT rect;
    RECT rectParent;
    HWND hwndParent;
    LONG dx, dy;
    LONG dxParent, dyParent;
    LONG Style;




    GetWindowRect(hwnd, &rect);

    dx = rect.right - rect.left;
    dy = rect.bottom - rect.top;




    Style = GetWindowLongPtr(hwnd, GWL_STYLE);
    if ((Style & WS_CHILD) == 0)
    {
        hwndParent = GetDesktopWindow();
    }
    else
    {
        hwndParent = GetParent(hwnd);
        if (hwndParent == ((void*)0))
        {
            hwndParent = GetDesktopWindow();
        }
    }
    GetWindowRect(hwndParent, &rectParent);

    dxParent = rectParent.right - rectParent.left;
    dyParent = rectParent.bottom - rectParent.top;




    rect.left = (dxParent - dx) / 2;
    rect.top = (dyParent - dy) / 3;




    SetWindowPos( hwnd,
                  ((void*)0),
                  rect.left,
                  rect.top,
                  0,
                  0,
                  SWP_NOSIZE | SWP_NOZORDER );

    SetForegroundWindow(hwnd);
}
