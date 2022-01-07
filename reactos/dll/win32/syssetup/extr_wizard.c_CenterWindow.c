
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef int * HWND ;


 int * GetDesktopWindow () ;
 int * GetParent (int *) ;
 int GetWindowRect (int *,TYPE_1__*) ;
 int HWND_TOP ;
 int SWP_NOSIZE ;
 int SetWindowPos (int *,int ,int,int,int ,int ,int ) ;

__attribute__((used)) static VOID
CenterWindow(HWND hWnd)
{
    HWND hWndParent;
    RECT rcParent;
    RECT rcWindow;

    hWndParent = GetParent(hWnd);
    if (hWndParent == ((void*)0))
        hWndParent = GetDesktopWindow();

    GetWindowRect(hWndParent, &rcParent);
    GetWindowRect(hWnd, &rcWindow);

    SetWindowPos(hWnd,
                 HWND_TOP,
                 ((rcParent.right - rcParent.left) - (rcWindow.right - rcWindow.left)) / 2,
                 ((rcParent.bottom - rcParent.top) - (rcWindow.bottom - rcWindow.top)) / 2,
                 0,
                 0,
                 SWP_NOSIZE);
}
