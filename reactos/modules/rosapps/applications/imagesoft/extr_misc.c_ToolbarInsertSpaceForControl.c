
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_8__ {void* IsVertical; void* iCommand; int hWndControl; void* HideVertical; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_6__ {int fsState; scalar_t__ dwData; int fsStyle; void* idCommand; scalar_t__ iBitmap; int member_0; } ;
typedef int TBCUSTCTL ;
typedef TYPE_1__ TBBUTTON ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PTBCUSTCTL ;
typedef int LPARAM ;
typedef void* INT ;
typedef int HWND ;
typedef scalar_t__ DWORD_PTR ;
typedef void* BOOL ;


 int CCS_VERT ;
 void* FALSE ;
 scalar_t__ GetWindowRect (int ,TYPE_2__*) ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int ProcessHeap ;
 int SWP_NOZORDER ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetWindowPos (int ,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int ShowWindow (int ,int ) ;
 int TBSTATE_HIDDEN ;
 int TBSTYLE_SEP ;
 int TB_GETITEMRECT ;
 int TB_GETSTYLE ;
 int TB_INSERTBUTTON ;
 void* TRUE ;

BOOL
ToolbarInsertSpaceForControl(HWND hWndToolbar,
                             HWND hWndControl,
                             INT Index,
                             INT iCmd,
                             BOOL HideVertical)
{
    PTBCUSTCTL cctl;
    RECT rcControl, rcItem;

    cctl = HeapAlloc(ProcessHeap,
                     0,
                     sizeof(TBCUSTCTL));
    if (cctl == ((void*)0))
        return FALSE;

    cctl->HideVertical = HideVertical;
    cctl->hWndControl = hWndControl;
    cctl->iCommand = iCmd;

    if (GetWindowRect(hWndControl,
                      &rcControl))
    {
        TBBUTTON tbtn = {0};

        tbtn.iBitmap = rcControl.right - rcControl.left;
        tbtn.idCommand = iCmd;
        tbtn.fsStyle = TBSTYLE_SEP;
        tbtn.dwData = (DWORD_PTR)cctl;

        if (SendMessage(hWndToolbar,
                        TB_GETSTYLE,
                        0,
                        0) & CCS_VERT)
        {
            if (HideVertical)
                tbtn.fsState |= TBSTATE_HIDDEN;

            cctl->IsVertical = TRUE;
        }
        else
            cctl->IsVertical = FALSE;

        if (SendMessage(hWndToolbar,
                        TB_INSERTBUTTON,
                        (WPARAM)Index,
                        (LPARAM)&tbtn))
        {
            if (SendMessage(hWndToolbar,
                            TB_GETITEMRECT,
                            (WPARAM)Index,
                            (LPARAM)&rcItem))
            {
                SetWindowPos(hWndControl,
                             ((void*)0),
                             rcItem.left,
                             rcItem.top,
                             rcItem.right - rcItem.left,
                             rcItem.bottom - rcItem.top,
                             SWP_NOZORDER);

                ShowWindow(hWndControl,
                           SW_SHOW);

                return TRUE;
            }
            else if (tbtn.fsState & TBSTATE_HIDDEN)
            {
                ShowWindow(hWndControl,
                           SW_HIDE);
            }
        }
    }

    return FALSE;
}
