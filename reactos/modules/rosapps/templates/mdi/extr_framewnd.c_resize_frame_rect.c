
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_5__ {scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* PRECT ;
typedef int LPARAM ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 scalar_t__ IsWindowVisible (int ) ;
 int MoveWindow (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int SB_SETPARTS ;
 int SendMessage (int ,int ,int,int ) ;
 int TRUE ;
 int WM_SIZE ;
 int hMDIClient ;
 int hStatusBar ;
 int hToolBar ;

__attribute__((used)) static void resize_frame_rect(HWND hWnd, PRECT prect)
{
    RECT rt;

    if (IsWindowVisible(hToolBar)) {
        SendMessage(hToolBar, WM_SIZE, 0, 0);
        GetClientRect(hToolBar, &rt);
        prect->top = rt.bottom+3;
        prect->bottom -= rt.bottom+3;
    }
    if (IsWindowVisible(hStatusBar)) {
        int parts[] = {300, 500};

        SendMessage(hStatusBar, WM_SIZE, 0, 0);
        SendMessage(hStatusBar, SB_SETPARTS, 2, (LPARAM)&parts);
        GetClientRect(hStatusBar, &rt);
        prect->bottom -= rt.bottom;
    }
    MoveWindow(hMDIClient, prect->left-1,prect->top-1,prect->right+2,prect->bottom+1, TRUE);
}
