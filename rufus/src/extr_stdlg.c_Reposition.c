
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int HWND ;


 int GetDlgItem (int ,int) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int HWND_TOP ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void Reposition(HWND hDlg, int id, int dx, int dw)
{
 HWND hCtrl;
 RECT rc;

 hCtrl = GetDlgItem(hDlg, id);
 GetWindowRect(hCtrl, &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 SetWindowPos(hCtrl, HWND_TOP, rc.left + dx, rc.top, rc.right - rc.left + dw, rc.bottom - rc.top, 0);
}
