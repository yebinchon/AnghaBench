
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lParam; int wParam; int message; int hwnd; } ;
typedef TYPE_1__ MSG ;
typedef int HWND ;


 int KeyDownData (int,int,int ,int ) ;
 int VK_TAB ;
 int WM_KEYDOWN ;

__attribute__((used)) static void FormTabMsg (MSG *pMsg, HWND hwnd)
{
    pMsg->hwnd = hwnd;
    pMsg->message = WM_KEYDOWN;
    pMsg->wParam = VK_TAB;
    pMsg->lParam = KeyDownData (1, 0x0F, 0, 0);


}
