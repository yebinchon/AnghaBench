
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;


 int Edit_GetLineCount (int ) ;
 int Edit_Scroll (int ,int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDCANCEL ;
 int IDC_LOG_CLEAR ;
 int IDC_LOG_SAVE ;
 int MoveCtrlY (int ,int ,int) ;
 int MoveWindow (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,scalar_t__,scalar_t__,int ) ;
 int TRUE ;
 int hLog ;
 int hLogDialog ;
 int hMainDialog ;

__attribute__((used)) static void ResizeDialogs(int shift)
{
 RECT rc;
 POINT point;


 GetWindowRect(hMainDialog, &rc);
 point.x = (rc.right - rc.left);
 point.y = (rc.bottom - rc.top);
 MoveWindow(hMainDialog, rc.left, rc.top, point.x, point.y + shift, TRUE);


 GetWindowRect(hLogDialog, &rc);
 point.x = (rc.right - rc.left);
 point.y = (rc.bottom - rc.top);
 MoveWindow(hLogDialog, rc.left, rc.top, point.x, point.y + shift, TRUE);
 MoveCtrlY(hLogDialog, IDC_LOG_CLEAR, shift);
 MoveCtrlY(hLogDialog, IDC_LOG_SAVE, shift);
 MoveCtrlY(hLogDialog, IDCANCEL, shift);
 GetWindowRect(hLog, &rc);
 point.x = (rc.right - rc.left);
 point.y = (rc.bottom - rc.top) + shift;
 SetWindowPos(hLog, ((void*)0), 0, 0, point.x, point.y, SWP_NOZORDER);

 Edit_Scroll(hLog, 0, Edit_GetLineCount(hLog));
}
