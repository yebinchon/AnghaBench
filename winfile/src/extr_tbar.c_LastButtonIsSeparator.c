
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsStyle; } ;
typedef TYPE_1__ TBBUTTON ;
typedef scalar_t__ LPTBBUTTON ;
typedef long LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int SendMessage (int ,int ,scalar_t__,long) ;
 int TBSTYLE_SEP ;
 int TB_BUTTONCOUNT ;
 int TB_GETBUTTON ;
 int TRUE ;

BOOL LastButtonIsSeparator(HWND hwndTB)
{
    TBBUTTON button;

    INT count = (INT)SendMessage(hwndTB, TB_BUTTONCOUNT, 0, 0L);
    SendMessage(hwndTB, TB_GETBUTTON, count - 1, (LPARAM)(LPTBBUTTON)&button);

    return (button.fsStyle & TBSTYLE_SEP) ? TRUE : FALSE;
}
