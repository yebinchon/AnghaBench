
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
typedef int (* ToolbarChangeControlCallback ) (int ,int ,int) ;
struct TYPE_4__ {int IsVertical; scalar_t__ HideVertical; scalar_t__ iCommand; int hWndControl; } ;
struct TYPE_3__ {int fsStyle; scalar_t__ dwData; } ;
typedef TYPE_1__ TBBUTTON ;
typedef TYPE_2__* PTBCUSTCTL ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CCS_VERT ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SendMessage (int ,int ,int ,int) ;
 int ShowWindow (int ,int ) ;
 int TBSTYLE_SEP ;
 int TB_BUTTONCOUNT ;
 int TB_GETBUTTON ;
 int TB_GETSTYLE ;
 int TB_HIDEBUTTON ;

VOID
ToolbarUpdateControlSpaces(HWND hWndToolbar,
                           ToolbarChangeControlCallback ChangeCallback)
{
    BOOL Vert;
    DWORD nButtons, i;
    TBBUTTON tbtn;

    Vert = ((SendMessage(hWndToolbar,
                         TB_GETSTYLE,
                         0,
                         0) & CCS_VERT) != 0);

    nButtons = (DWORD)SendMessage(hWndToolbar,
                                  TB_BUTTONCOUNT,
                                  0,
                                  0);

    for (i = 0;
         i != nButtons;
         i++)
    {
        if (SendMessage(hWndToolbar,
                        TB_GETBUTTON,
                        (WPARAM)i,
                        (LPARAM)&tbtn))
        {
            if ((tbtn.fsStyle & TBSTYLE_SEP) && tbtn.dwData != 0)
            {
                PTBCUSTCTL cctl = (PTBCUSTCTL)tbtn.dwData;

                cctl->IsVertical = Vert;

                if (cctl->HideVertical)
                {
                    ShowWindow(cctl->hWndControl,
                               (Vert ? SW_HIDE : SW_SHOW));
                    goto ShowHideSep;
                }
                else if (cctl->IsVertical != Vert)
                {
                    ChangeCallback(hWndToolbar,
                                   cctl->hWndControl,
                                   Vert);

ShowHideSep:

                    SendMessage(hWndToolbar,
                                TB_HIDEBUTTON,
                                (WPARAM)cctl->iCommand,
                                (LPARAM)Vert && cctl->HideVertical);
                }
            }
        }
    }
}
