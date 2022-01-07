
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int GetWindowRect (int ,TYPE_1__*) ;
 int Ghost_GetTarget (int ) ;
 int SWP_NOACTIVATE ;
 int SWP_NOOWNERZORDER ;
 int SWP_NOSENDCHANGING ;
 int SWP_NOSIZE ;
 int SetWindowPos (int ,int *,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
Ghost_OnMove(HWND hwnd, int x, int y)
{
    RECT rc;
    HWND hwndTarget = Ghost_GetTarget(hwnd);

    GetWindowRect(hwnd, &rc);


    SetWindowPos(hwndTarget, ((void*)0), rc.left, rc.top, 0, 0,
                 SWP_NOSIZE | SWP_NOOWNERZORDER | SWP_NOACTIVATE |
                 SWP_NOSENDCHANGING);
}
